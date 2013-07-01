/*********************************************************************
* Software License Agreement (BSD License)
* 
*  Copyright (c) 2010, Willow Garage, Inc.
*  All rights reserved.
* 
*  Redistribution and use in source and binary forms, with or without
*  modification, are permitted provided that the following conditions
*  are met:
* 
*   * Redistributions of source code must retain the above copyright
*     notice, this list of conditions and the following disclaimer.
*   * Redistributions in binary form must reproduce the above
*     copyright notice, this list of conditions and the following
*     disclaimer in the documentation and/or other materials provided
*     with the distribution.
*   * Neither the name of the Willow Garage nor the names of its
*     contributors may be used to endorse or promote products derived
*     from this software without specific prior written permission.
* 
*  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
*  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
*  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
*  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
*  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
*  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
*  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
*  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
*  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
*  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
*  POSSIBILITY OF SUCH DAMAGE.
*********************************************************************/

/** \author E. Gil Jones, Ioan Sucan */

#include <planning_models/kinematic_state.h>
#include <ros/console.h>

planning_models::KinematicState::KinematicState(const KinematicModel* kinematic_model) :
  kinematic_model_(kinematic_model), dimension_(0)
{
  kinematic_model_->sharedLock();

  const std::vector<KinematicModel::JointModel*>& joint_model_vector = kinematic_model_->getJointModels();
  joint_state_vector_.resize(joint_model_vector.size());
  //joint_index_location_.resize(joint_model_vector.size());
  unsigned int vector_index_counter = 0;
  for(unsigned int i = 0; i < joint_model_vector.size(); i++) {
    joint_state_vector_[i] = new JointState(joint_model_vector[i]);
    joint_state_map_[joint_state_vector_[i]->getName()] = joint_state_vector_[i];
    unsigned int joint_dim = joint_state_vector_[i]->getDimension();
    dimension_ += joint_dim;
    const std::vector<std::string>& name_order = joint_state_vector_[i]->getJointStateNameOrder();
    for(unsigned int j = 0; j < name_order.size(); j++) {
      joint_state_map_[name_order[j]] = joint_state_vector_[i];
      kinematic_state_index_map_[name_order[j]] = vector_index_counter+j;
    }
    vector_index_counter += joint_dim;
  }
  const std::vector<KinematicModel::LinkModel*>& link_model_vector = kinematic_model_->getLinkModels();
  link_state_vector_.resize(link_model_vector.size());
  for(unsigned int i = 0; i < link_model_vector.size(); i++) {
    link_state_vector_[i] = new LinkState(link_model_vector[i]);
    link_state_map_[link_state_vector_[i]->getName()] = link_state_vector_[i];
    for(unsigned int j = 0; j < link_state_vector_[i]->getAttachedBodyStateVector().size(); j++) {
      attached_body_state_vector_.push_back(link_state_vector_[i]->getAttachedBodyStateVector()[j]);
    }
  }
  setLinkStatesParents();

  //now make joint_state_groups
  const std::map<std::string,KinematicModel::JointModelGroup*>& joint_model_group_map = kinematic_model_->getJointModelGroupMap();
  for(std::map<std::string,KinematicModel::JointModelGroup*>::const_iterator it = joint_model_group_map.begin();
      it != joint_model_group_map.end();
      it++) {
    joint_state_group_map_[it->first] = new JointStateGroup(it->second, this);
  }
}

planning_models::KinematicState::KinematicState(const KinematicState& ks) :
  kinematic_model_(ks.getKinematicModel()), dimension_(0)
{
  kinematic_model_->sharedLock();
  const std::vector<JointState*>& joint_state_vector = ks.getJointStateVector();
  unsigned int vector_index_counter = 0;
  joint_state_vector_.resize(joint_state_vector.size());
  for(unsigned int i = 0; i < joint_state_vector_.size(); i++) {
    joint_state_vector_[i] = new JointState(joint_state_vector[i]->getJointModel());
    joint_state_map_[joint_state_vector_[i]->getName()] = joint_state_vector_[i];
    const std::vector<std::string>& name_order = joint_state_vector_[i]->getJointStateNameOrder();
    for(unsigned int j = 0; j < name_order.size(); j++) {
      joint_state_map_[name_order[j]] = joint_state_vector_[i];
      kinematic_state_index_map_[name_order[j]] = vector_index_counter+j;
    }
    unsigned int joint_dim = joint_state_vector_[i]->getDimension();
    dimension_ += joint_dim;
    vector_index_counter += joint_dim;
    //joint_index_location_[i] = vector_index_counter;
    //vector_index_counter += joint_dim;
  }
  const std::vector<LinkState*>& link_state_vector = ks.getLinkStateVector();
  link_state_vector_.resize(link_state_vector.size());
  for(unsigned int i = 0; i < link_state_vector.size(); i++) {
    link_state_vector_[i] = new LinkState(link_state_vector[i]->getLinkModel());
    link_state_map_[link_state_vector_[i]->getName()] = link_state_vector_[i];
    for(unsigned int j = 0; j < link_state_vector_[i]->getAttachedBodyStateVector().size(); j++) {
      attached_body_state_vector_.push_back(link_state_vector_[i]->getAttachedBodyStateVector()[j]);
    }
  }
  setLinkStatesParents();
  
  const std::map<std::string, JointStateGroup*>& joint_state_groups_map = ks.getJointStateGroupMap();
  for(std::map<std::string, JointStateGroup*>::const_iterator it = joint_state_groups_map.begin();
      it != joint_state_groups_map.end();
      it++) {
    joint_state_group_map_[it->first] = new JointStateGroup(it->second->getJointModelGroup(), this);
  }
  //actually setting values
  std::map<std::string, double> current_joint_values;
  ks.getKinematicStateValues(current_joint_values);
  setKinematicState(current_joint_values);
}

planning_models::KinematicState::~KinematicState() 
{
  kinematic_model_->sharedUnlock();
  for(unsigned int i = 0; i < joint_state_vector_.size(); i++) {
    delete joint_state_vector_[i];
  }
  for(unsigned int i = 0; i < link_state_vector_.size(); i++) {
    delete link_state_vector_[i];
  }
  for(std::map<std::string, JointStateGroup*>::iterator it = joint_state_group_map_.begin();
      it != joint_state_group_map_.end();
      it++) {
    delete it->second;
  }
}

bool planning_models::KinematicState::setKinematicState(const std::vector<double>& joint_state_values) {
  if(joint_state_values.size() != dimension_) return false;
  unsigned int value_counter = 0;
  for(unsigned int i = 0; i < joint_state_vector_.size(); i++) {
    unsigned int dim = joint_state_vector_[i]->getDimension();
    if(dim != 0) {
      std::vector<double> vec(dim, 0.0); 
      copy(joint_state_values.begin()+value_counter,
           joint_state_values.begin()+value_counter+dim,
           vec.begin());
      bool ok = joint_state_vector_[i]->setJointStateValues(vec);
      if(!ok) {
        ROS_WARN("Joint state unhappy");
      }
      value_counter += dim;
    }
  }
  updateKinematicLinks();
  return true;
}

bool planning_models::KinematicState::setKinematicState(const std::map<std::string, double>& joint_state_map) 
{
  bool all_set = true;
  for(unsigned int i = 0; i < joint_state_vector_.size(); i++) {
    bool is_set = joint_state_vector_[i]->setJointStateValues(joint_state_map);
    if(!is_set) all_set = false;
  }
  updateKinematicLinks();
  return all_set;
}

bool planning_models::KinematicState::setKinematicState(const std::map<std::string, double>& joint_state_map,
                                                        std::vector<std::string>& missing_states) 
{
  missing_states.clear();
  bool all_set = true;
  for(unsigned int i = 0; i < joint_state_vector_.size(); i++) {
    bool is_set = joint_state_vector_[i]->setJointStateValues(joint_state_map, missing_states);
    if(!is_set) {
      all_set = false;
    }
  }
  updateKinematicLinks();
  return all_set;
}

void planning_models::KinematicState::getKinematicStateValues(std::vector<double>& joint_state_values) const {
  joint_state_values.clear();
  for(unsigned int i = 0; i < joint_state_vector_.size(); i++) {
    unsigned int dim = joint_state_vector_[i]->getDimension();  
    if(dim != 0) {
      for(unsigned int j = 0; j < joint_state_vector_[i]->getJointStateValues().size(); j++) {
        joint_state_values.push_back(joint_state_vector_[i]->getJointStateValues()[j]);
      }
    }
  }
  if(joint_state_values.size() != dimension_) {
    ROS_WARN_STREAM("Some problems with state vector dimension values " << joint_state_values.size() << " dimension is " << dimension_);
  }
}

void planning_models::KinematicState::getKinematicStateValues(std::map<std::string,double>& joint_state_values) const {
  joint_state_values.clear();
  for(unsigned int i = 0; i < joint_state_vector_.size(); i++) {
    unsigned int dim = joint_state_vector_[i]->getDimension();  
    if(dim != 0) {
      for(unsigned int j = 0; j < joint_state_vector_[i]->getJointStateValues().size(); j++) {
        joint_state_values[joint_state_vector_[i]->getJointStateNameOrder()[j]] = joint_state_vector_[i]->getJointStateValues()[j]; 
      }
    }
  }
  if(joint_state_values.size() != dimension_) {
    ROS_WARN_STREAM("Some problems with state map dimension values " << joint_state_values.size() << " dimension is " << dimension_);
  }
}

void planning_models::KinematicState::updateKinematicLinks() 
{
  for(unsigned int i = 0; i < link_state_vector_.size(); i++) {
    link_state_vector_[i]->computeTransform();
  }
}

bool planning_models::KinematicState::updateKinematicStateWithLinkAt(const std::string& link_name, const tf::Transform& transform)
{
  if(!hasLinkState(link_name)) return false;

  link_state_map_.find(link_name)->second->updateGivenGlobalLinkTransform(transform);
  std::vector<LinkState*> child_links = getChildLinkStates(link_name);
  //the zeroith link will be the link itself, which shouldn't be getting updated, so we start at 1
  for(unsigned int i = 1; i < child_links.size(); i++) {
    child_links[i]->computeTransform();
  }
  return true;
}

const tf::Transform& planning_models::KinematicState::getRootTransform() const
{
  return joint_state_vector_[0]->getVariableTransform();
}

std::vector<planning_models::KinematicState::LinkState*> planning_models::KinematicState::getChildLinkStates(const std::string& link_name) const {
  std::vector<LinkState*> child_link_states;
  std::vector<const KinematicModel::LinkModel*> child_link_models;
  kinematic_model_->getChildLinkModels(kinematic_model_->getLinkModel(link_name), child_link_models);
  for(unsigned int i = 0; i < child_link_models.size(); i++) {
    child_link_states.push_back(link_state_map_.find((child_link_models[i]->getName()))->second);
  }
  return child_link_states;
}

void planning_models::KinematicState::setKinematicStateToDefault(void)
{
  std::map<std::string, double> default_joint_states;
  
  const unsigned int js = joint_state_vector_.size();
  for (unsigned int i = 0  ; i < js ; ++i)
  {
    joint_state_vector_[i]->getJointModel()->getVariableDefaultValuesGivenBounds(default_joint_states);
  }
  setKinematicState(default_joint_states);
}

bool planning_models::KinematicState::isJointWithinBounds(const std::string& joint) const {
  const JointState* joint_state = getJointState(joint);
  if(joint_state == NULL) {
    ROS_WARN_STREAM("No joint with name " << joint);
    return false;
  }
  return(joint_state->areJointStateValuesWithinBounds());
}

bool planning_models::KinematicState::areJointsWithinBounds(const std::vector<std::string>& joints) const
{
  for(std::vector<std::string>::const_iterator it = joints.begin();
      it != joints.end();
      it++) {
    const JointState* joint_state = getJointState(*it);
    if(joint_state == NULL) {
      ROS_WARN_STREAM("No joint with name " << *it);
      return false;
    }
    if(!joint_state->areJointStateValuesWithinBounds()) {
      return false;
    }
  }   
  return true;
}

void planning_models::KinematicState::setLinkStatesParents() {
  //now we need to figure out who are the link parents are
  for(unsigned int i = 0; i < link_state_vector_.size(); i++) {
    const KinematicModel::JointModel* parent_joint_model = link_state_vector_[i]->getLinkModel()->getParentJointModel();
    if(parent_joint_model == NULL) {
      ROS_WARN("Parent joint really should be NULL");
      continue;
    }
    if(joint_state_map_.find(parent_joint_model->getName()) == joint_state_map_.end()) {
      ROS_WARN_STREAM("Don't have a joint state for parent joint " << parent_joint_model->getName());
      continue;
    }
    link_state_vector_[i]->setParentJointState(joint_state_map_[parent_joint_model->getName()]);
    if(parent_joint_model->getParentLinkModel() != NULL) {
      if(link_state_map_.find(parent_joint_model->getParentLinkModel()->getName()) == link_state_map_.end()) {
        ROS_WARN_STREAM("Don't have a link state for parent link " << parent_joint_model->getParentLinkModel()->getName());
        continue;
      }
      link_state_vector_[i]->setParentLinkState(link_state_map_[parent_joint_model->getParentLinkModel()->getName()]);
    }
  }
}

const planning_models::KinematicState::JointStateGroup* planning_models::KinematicState::getJointStateGroup(const std::string &name) const
{
  if(joint_state_group_map_.find(name) == joint_state_group_map_.end()) return NULL;
  return joint_state_group_map_.find(name)->second;
}

planning_models::KinematicState::JointStateGroup* planning_models::KinematicState::getJointStateGroup(const std::string &name)
{
  if(joint_state_group_map_.find(name) == joint_state_group_map_.end()) return NULL;
  return joint_state_group_map_.find(name)->second;
}

bool planning_models::KinematicState::hasJointStateGroup(const std::string &name) const
{
  return(joint_state_group_map_.find(name) != joint_state_group_map_.end());
}

void planning_models::KinematicState::getJointStateGroupNames(std::vector<std::string>& names) const 
{
  for(std::map<std::string, JointStateGroup*>::const_iterator it = joint_state_group_map_.begin();
      it != joint_state_group_map_.end();
      it++) {
    names.push_back(it->first);
  }
}

bool planning_models::KinematicState::hasJointState(const std::string &joint) const
{
  return joint_state_map_.find(joint) != joint_state_map_.end();
}
bool planning_models::KinematicState::hasLinkState(const std::string& link) const
{
  return (link_state_map_.find(link) != link_state_map_.end());
}

planning_models::KinematicState::JointState* planning_models::KinematicState::getJointState(const std::string &joint) const
{
  if(!hasJointState(joint)) return NULL;
  return joint_state_map_.find(joint)->second;
}

planning_models::KinematicState::LinkState* planning_models::KinematicState::getLinkState(const std::string &link) const
{
  if(!hasLinkState(link)) return NULL;
  return link_state_map_.find(link)->second;
}

planning_models::KinematicState::AttachedBodyState* planning_models::KinematicState::getAttachedBodyState(const std::string &att) const
{
  for(unsigned int i = 0; i < link_state_vector_.size(); i++) {
    for(unsigned int j = 0; j < link_state_vector_[i]->getAttachedBodyStateVector().size(); j++) {
      if(link_state_vector_[i]->getAttachedBodyStateVector()[j]->getName() == att) {
        return (link_state_vector_[i]->getAttachedBodyStateVector()[j]);
      }
    }
  }
  return NULL;
}

//-------------------- JointState ---------------------

planning_models::KinematicState::JointState::JointState(const planning_models::KinematicModel::JointModel* jm) :
  joint_model_(jm)
{
  variable_transform_.setIdentity();
  joint_state_values_ = joint_model_->computeJointStateValues(variable_transform_);
  joint_state_name_order_.resize(joint_state_values_.size());

  unsigned int i = 0;
  for(std::map<unsigned int, std::string>::const_iterator it = joint_model_->getComputatationOrderMapIndex().begin();
      it != joint_model_->getComputatationOrderMapIndex().end();
      it++,i++) {
    if(i != it->first) {
      ROS_WARN("Missing value");
      continue;
    }
    joint_state_index_map_[it->second] = it->first;
    joint_state_name_order_[i] = it->second;
  }
}

bool planning_models::KinematicState::JointState::setJointStateValues(const std::vector<double>& joint_state_values) {
  if(joint_state_values.size() != joint_state_index_map_.size()) {
    return false;
  }
  joint_state_values_ = joint_state_values;
  variable_transform_ = joint_model_->computeTransform(joint_state_values);
  return true;
}

bool planning_models::KinematicState::JointState::setJointStateValues(const std::map<std::string, double>& joint_value_map) {
  bool has_all = true;
  bool has_any = false;
  for(std::map<std::string, unsigned int>::const_iterator it = joint_state_index_map_.begin();
      it != joint_state_index_map_.end();
      it++) {
    std::map<std::string,double>::const_iterator it2 = joint_value_map.find(it->first);
    if(it2 == joint_value_map.end()) {
      has_all = false;
      continue;
    } else {
      has_any = true;
    }
    if(it->second > joint_state_values_.size()) {
      ROS_WARN_STREAM("Trying to set value " << it->second << " which is larger than joint state values size " << joint_state_values_.size());
    } else {
      joint_state_values_[it->second] = it2->second;
    }
  }
  if(has_any) {
    variable_transform_ = joint_model_->computeTransform(joint_state_values_);
  }
  return has_all;
}

bool planning_models::KinematicState::JointState::setJointStateValues(const std::map<std::string, double>& joint_value_map,
                                                                      std::vector<std::string>& missing_values) {
  bool has_all = true;
  bool has_any = false;
  for(std::map<std::string, unsigned int>::const_iterator it = joint_state_index_map_.begin();
      it != joint_state_index_map_.end();
      it++) {
    std::map<std::string,double>::const_iterator it2 = joint_value_map.find(it->first);
    if(it2 == joint_value_map.end()) {
      has_all = false;
      missing_values.push_back(it->first);
      continue;
    } else {
      has_any = true;
    }
    if(it->second > joint_state_values_.size()) {
      ROS_WARN_STREAM("Trying to set value " << it->second << " which is larger than joint state values size " << joint_state_values_.size());
    } else {
      joint_state_values_[it->second] = it2->second;
    }
  }
  if(has_any) {
    variable_transform_ = joint_model_->computeTransform(joint_state_values_);
  }
  return has_all;
}

bool planning_models::KinematicState::JointState::setJointStateValues(const tf::Transform& transform) {
  variable_transform_ = transform;
  joint_state_values_ = joint_model_->computeJointStateValues(variable_transform_);
  return true;
}

bool planning_models::KinematicState::JointState::allJointStateValuesAreDefined(const std::map<std::string, double>& joint_value_map) const {
  for(planning_models::KinematicModel::JointModel::js_type::const_iterator it = joint_model_->getJointStateEquivalents().begin();
      it != joint_model_->getJointStateEquivalents().end();
      it++) {
    if(joint_value_map.find(it->right) == joint_value_map.end()) {
      return false;
    }
  }
  return true;
}

const std::vector<double>& planning_models::KinematicState::JointState::getJointStateValues() const {
  return joint_state_values_;
}

const std::vector<std::string>& planning_models::KinematicState::JointState::getJointStateNameOrder() const {
  return joint_state_name_order_;
}

bool planning_models::KinematicState::JointState::getJointValueBounds(const std::string& value_name,
                                                                      double& low, 
                                                                      double& high) const {
  if(!joint_model_->hasVariable(value_name)) return false;
  std::pair<double,double> bounds;
  joint_model_->getVariableBounds(value_name, bounds);
  low = bounds.first;
  high = bounds.second;
  return true;
}

const std::map<std::string, std::pair<double, double> >& planning_models::KinematicState::JointState::getAllJointValueBounds() const 
{
  return joint_model_->getAllVariableBounds();
}

bool planning_models::KinematicState::JointState::areJointStateValuesWithinBounds() const {
  for(std::map<std::string, unsigned int>::const_iterator it = joint_state_index_map_.begin();
      it != joint_state_index_map_.end();
      it++) {
    bool within_bounds;
    joint_model_->isValueWithinVariableBounds(it->first, joint_state_values_[it->second], within_bounds);
    if(!within_bounds) {
      ROS_DEBUG_STREAM("Joint " << it->first << " value " << joint_state_values_[it->second] << " not within bounds");
      return false;
    }
  }
  return true;
}

//-------------------- LinkState ---------------------

planning_models::KinematicState::LinkState::LinkState(const planning_models::KinematicModel::LinkModel* lm) :
  link_model_(lm), parent_joint_state_(NULL), parent_link_state_(NULL)
{
  global_link_transform_.setIdentity();
  global_collision_body_transform_.setIdentity();
  const std::vector<planning_models::KinematicModel::AttachedBodyModel*>& attached_body_vector = link_model_->getAttachedBodyModels();
  attached_body_state_vector_.resize(attached_body_vector.size());
  unsigned int j = 0;
  for(std::vector<planning_models::KinematicModel::AttachedBodyModel*>::const_iterator it = attached_body_vector.begin();
      it != attached_body_vector.end();
      it++, j++) {
    attached_body_state_vector_[j] = new AttachedBodyState(*it, this);
  }
}

planning_models::KinematicState::LinkState::~LinkState() 
{
  for(unsigned int i = 0; i < attached_body_state_vector_.size(); i++) {
    delete attached_body_state_vector_[i];
  }
}

void planning_models::KinematicState::LinkState::computeTransform() {
  tf::Transform ident;
  ident.setIdentity();
  global_link_transform_.mult(parent_link_state_ ? parent_link_state_->global_link_transform_ : ident, link_model_->getJointOriginTransform());
  global_link_transform_ *= parent_joint_state_->getVariableTransform();
  global_collision_body_transform_.mult(global_link_transform_, link_model_->getCollisionOriginTransform());
  updateAttachedBodies();
}

void planning_models::KinematicState::LinkState::updateAttachedBodies() 
{
  for (unsigned int i = 0 ; i < attached_body_state_vector_.size() ; ++i) {
    attached_body_state_vector_[i]->computeTransform();
  }
}

//-------------------- AttachedBodyState ---------------------

planning_models::KinematicState::AttachedBodyState::AttachedBodyState(const planning_models::KinematicModel::AttachedBodyModel* abm,
                                                                      const planning_models::KinematicState::LinkState* parent_link_state) :
  attached_body_model_(abm),
  parent_link_state_(parent_link_state)
{
  global_collision_body_transforms_.resize(attached_body_model_->getAttachedBodyFixedTransforms().size());
  for(unsigned int i = 0; i < attached_body_model_->getAttachedBodyFixedTransforms().size(); i++) {
    global_collision_body_transforms_[i].setIdentity();
  }
}

void planning_models::KinematicState::AttachedBodyState::computeTransform() 
{
  for(unsigned int i = 0; i < global_collision_body_transforms_.size(); i++) {
    global_collision_body_transforms_[i] = parent_link_state_->getGlobalLinkTransform() * attached_body_model_->getAttachedBodyFixedTransforms()[i];
  }
}

//--------------------- JointStateGroup --------------------------

planning_models::KinematicState::JointStateGroup::JointStateGroup(const planning_models::KinematicModel::JointModelGroup* jmg, 
                                                                  const planning_models::KinematicState* kinematic_state) : 
  joint_model_group_(jmg), dimension_(0)
{
  const std::vector<const KinematicModel::JointModel*>& joint_model_vector = jmg->getJointModels();
  unsigned int vector_index_counter = 0;
  for(unsigned int i = 0; i < joint_model_vector.size(); i++) {
    if(!kinematic_state->hasJointState(joint_model_vector[i]->getName())) {
      ROS_WARN_STREAM("No joint state for group joint name " << joint_model_vector[i]->getName());
      continue;
    }
    JointState* js = kinematic_state->getJointState(joint_model_vector[i]->getName());
    joint_state_vector_.push_back(js);
    joint_names_.push_back(joint_model_vector[i]->getName());
    joint_state_map_[joint_model_vector[i]->getName()] = js;
    unsigned int joint_dim = joint_state_vector_[i]->getDimension();
    dimension_ += joint_dim;
    const std::vector<std::string>& name_order = joint_state_vector_[i]->getJointStateNameOrder();
    for(unsigned int i = 0; i < name_order.size(); i++) {
      kinematic_state_index_map_[name_order[i]] = vector_index_counter+i;
    }
    vector_index_counter += joint_dim;
  }
  const std::vector<const KinematicModel::LinkModel*>& link_model_vector = jmg->getUpdatedLinkModels();
  for(unsigned int i = 0; i < link_model_vector.size(); i++) {
    if(!kinematic_state->hasLinkState(link_model_vector[i]->getName())) {
      ROS_WARN_STREAM("No link state for link joint name " << link_model_vector[i]->getName());
      continue;
    }
    LinkState* ls = kinematic_state->getLinkState(link_model_vector[i]->getName());
    updated_links_.push_back(ls);
  }

  const std::vector<const KinematicModel::JointModel*>& joint_root_vector = jmg->getJointRoots();
  for(unsigned int i = 0; i < joint_root_vector.size(); i++) {
    joint_roots_.push_back(joint_state_map_[joint_root_vector[i]->getName()]);
  }
}

bool planning_models::KinematicState::JointStateGroup::hasJointState(const std::string &joint) const
{
  return joint_state_map_.find(joint) != joint_state_map_.end();
}
bool planning_models::KinematicState::JointStateGroup::updatesLinkState(const std::string& link) const
{
  for(unsigned int i = 0; i < updated_links_.size(); i++) {
    if(updated_links_[i]->getName() == link) return true;
  }
  return false;
}

bool planning_models::KinematicState::JointStateGroup::setKinematicState(const std::vector<double>& joint_state_values) {
  if(joint_state_values.size() != dimension_) return false;
  unsigned int value_counter = 0;
  for(unsigned int i = 0; i < joint_state_vector_.size(); i++) {
    unsigned int dim = joint_state_vector_[i]->getDimension();
    if(dim != 0) {
      std::vector<double> vec(dim); 
      copy(joint_state_values.begin()+value_counter,
           joint_state_values.begin()+value_counter+dim,
           vec.begin());
      bool ok = joint_state_vector_[i]->setJointStateValues(vec);
      if(!ok) {
        ROS_WARN("Joint state unhappy");
      }
      value_counter += dim;
    }
  }
  updateKinematicLinks();
  return true;
}

bool planning_models::KinematicState::JointStateGroup::setKinematicState(const std::map<std::string, double>& joint_state_map) 
{
  bool all_set = true;
  for(unsigned int i = 0; i < joint_state_vector_.size(); i++) {
    bool is_set = joint_state_vector_[i]->setJointStateValues(joint_state_map);
    if(!is_set) all_set = false;
  }
  updateKinematicLinks();
  return all_set;
}

void planning_models::KinematicState::JointStateGroup::updateKinematicLinks() 
{
  for(unsigned int i = 0; i < updated_links_.size(); i++) {
    updated_links_[i]->computeTransform();
  }
}

void planning_models::KinematicState::JointStateGroup::setKinematicStateToDefault(void)
{
  std::map<std::string, double> default_joint_states;

  const unsigned int js = joint_state_vector_.size();
  for (unsigned int i = 0  ; i < js ; ++i)
  {
    joint_state_vector_[i]->getJointModel()->getVariableDefaultValuesGivenBounds(default_joint_states);
  }
  setKinematicState(default_joint_states);
}

void planning_models::KinematicState::JointStateGroup::getKinematicStateValues(std::vector<double>& joint_state_values) const {
  joint_state_values.clear();
  for(unsigned int i = 0; i < joint_state_vector_.size(); i++) {
    unsigned int dim = joint_state_vector_[i]->getDimension();  
    if(dim != 0) {
      for(unsigned int j = 0; j < joint_state_vector_[i]->getJointStateValues().size(); j++) {
        joint_state_values.push_back(joint_state_vector_[i]->getJointStateValues()[j]);
      }
    }
  }
  if(joint_state_values.size() != dimension_) {
    ROS_WARN_STREAM("Some problems with group vector dimension values " << joint_state_values.size() << " dimension is " << dimension_);
  }
}

void planning_models::KinematicState::JointStateGroup::getKinematicStateValues(std::map<std::string,double>& joint_state_values) const {
  joint_state_values.clear();
  for(unsigned int i = 0; i < joint_state_vector_.size(); i++) {
    unsigned int dim = joint_state_vector_[i]->getDimension();  
    if(dim != 0) {
      for(unsigned int j = 0; j < joint_state_vector_[i]->getJointStateValues().size(); j++) {
        joint_state_values[joint_state_vector_[i]->getJointStateNameOrder()[j]] = joint_state_vector_[i]->getJointStateValues()[j]; 
      }
    }
  }
  if(joint_state_values.size() != dimension_) {
    ROS_WARN_STREAM("Some problems with group map dimension values " << joint_state_values.size() << " dimension is " << dimension_);
  }
}

planning_models::KinematicState::JointState* planning_models::KinematicState::JointStateGroup::getJointState(const std::string &joint) const
{
  if(!hasJointState(joint)) return NULL;
  return joint_state_map_.find(joint)->second;
}

// ------ printing transforms -----

void planning_models::KinematicState::printStateInfo(std::ostream &out) const
{
  out << "Complete model state dimension = " << getDimension() << std::endl;
    
  std::ios_base::fmtflags old_flags = out.flags();    
  out.setf(std::ios::fixed, std::ios::floatfield);
  std::streamsize old_prec = out.precision();
  out.precision(5);
  out << "State bounds: ";
  for(unsigned int i = 0; i < joint_state_vector_.size(); i++) {
    for(std::map<std::string, std::pair<double, double> >::const_iterator it = joint_state_vector_[i]->getAllJointValueBounds().begin();
        it != joint_state_vector_[i]->getAllJointValueBounds().end();
        it++) {
      if(it->second.first == -DBL_MAX) {
        out << "[-DBL_MAX, ";
      } else {
        out << "[" << it->second.first << ", ";
      }
      if(it->second.second == DBL_MAX) {
        out << "DBL_MAX] ";
      } else {
        out << it->second.second << "] ";  
      }
    }
  }
    
  out << std::endl;
  out.precision(old_prec);    
  out.flags(old_flags);
        
  out << "Root joint : ";
  out << kinematic_model_->getRoot()->getName() << " ";
  out << std::endl;
    
  out << "Available groups: ";
  std::vector<std::string> l;
  getJointStateGroupNames(l);
  for (unsigned int i = 0 ; i < l.size() ; ++i)
    out << l[i] << " ";
  out << std::endl;
    
  for (unsigned int i = 0 ; i < l.size() ; ++i)
  {
    const JointStateGroup *g = getJointStateGroup(l[i]);
    out << "Group " << l[i] << " has " << g->getJointRoots().size() << " roots: ";
    for (unsigned int j = 0 ; j < g->getJointRoots().size() ; ++j)
      out << g->getJointRoots()[j]->getName() << " ";
    out << std::endl;
  }
}

void planning_models::KinematicState::printTransform(const std::string &st, const tf::Transform &t, std::ostream &out) const
{
  out << st << std::endl;
  const tf::Vector3 &v = t.getOrigin();
  out << "  origin: " << v.x() << ", " << v.y() << ", " << v.z() << std::endl;
  const tf::Quaternion &q = t.getRotation();
  out << "  quaternion: " << q.x() << ", " << q.y() << ", " << q.z() << ", " << q.w() << std::endl;
}

void planning_models::KinematicState::printTransforms(std::ostream &out) const
{
  out << "Joint transforms:" << std::endl;
  for (unsigned int i = 0 ; i < joint_state_vector_.size() ; ++i)
  {
    printTransform(joint_state_vector_[i]->getName(), joint_state_vector_[i]->getVariableTransform(), out);
    out << std::endl;	
  }
  out << "Link poses:" << std::endl;
  for (unsigned int i = 0 ; i < link_state_vector_.size() ; ++i)
  {
    printTransform(link_state_vector_[i]->getName(), link_state_vector_[i]->getGlobalCollisionBodyTransform(), out);
    out << std::endl;	
  }    
}

