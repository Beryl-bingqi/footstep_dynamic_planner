/* Auto-generated by genmsg_cpp for file /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/arm_navigation/arm_navigation_msgs/msg/SyncPlanningSceneActionGoal.msg */
#ifndef ARM_NAVIGATION_MSGS_MESSAGE_SYNCPLANNINGSCENEACTIONGOAL_H
#define ARM_NAVIGATION_MSGS_MESSAGE_SYNCPLANNINGSCENEACTIONGOAL_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "std_msgs/Header.h"
#include "actionlib_msgs/GoalID.h"
#include "arm_navigation_msgs/SyncPlanningSceneGoal.h"

namespace arm_navigation_msgs
{
template <class ContainerAllocator>
struct SyncPlanningSceneActionGoal_ {
  typedef SyncPlanningSceneActionGoal_<ContainerAllocator> Type;

  SyncPlanningSceneActionGoal_()
  : header()
  , goal_id()
  , goal()
  {
  }

  SyncPlanningSceneActionGoal_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , goal_id(_alloc)
  , goal(_alloc)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
   ::actionlib_msgs::GoalID_<ContainerAllocator>  goal_id;

  typedef  ::arm_navigation_msgs::SyncPlanningSceneGoal_<ContainerAllocator>  _goal_type;
   ::arm_navigation_msgs::SyncPlanningSceneGoal_<ContainerAllocator>  goal;


  typedef boost::shared_ptr< ::arm_navigation_msgs::SyncPlanningSceneActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_navigation_msgs::SyncPlanningSceneActionGoal_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct SyncPlanningSceneActionGoal
typedef  ::arm_navigation_msgs::SyncPlanningSceneActionGoal_<std::allocator<void> > SyncPlanningSceneActionGoal;

typedef boost::shared_ptr< ::arm_navigation_msgs::SyncPlanningSceneActionGoal> SyncPlanningSceneActionGoalPtr;
typedef boost::shared_ptr< ::arm_navigation_msgs::SyncPlanningSceneActionGoal const> SyncPlanningSceneActionGoalConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::arm_navigation_msgs::SyncPlanningSceneActionGoal_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::arm_navigation_msgs::SyncPlanningSceneActionGoal_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace arm_navigation_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::arm_navigation_msgs::SyncPlanningSceneActionGoal_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::arm_navigation_msgs::SyncPlanningSceneActionGoal_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::arm_navigation_msgs::SyncPlanningSceneActionGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "d841beb927266bf620ac574e2b28ec55";
  }

  static const char* value(const  ::arm_navigation_msgs::SyncPlanningSceneActionGoal_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xd841beb927266bf6ULL;
  static const uint64_t static_value2 = 0x20ac574e2b28ec55ULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_navigation_msgs::SyncPlanningSceneActionGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "arm_navigation_msgs/SyncPlanningSceneActionGoal";
  }

  static const char* value(const  ::arm_navigation_msgs::SyncPlanningSceneActionGoal_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::arm_navigation_msgs::SyncPlanningSceneActionGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
SyncPlanningSceneGoal goal\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.secs: seconds (stamp_secs) since epoch\n\
# * stamp.nsecs: nanoseconds since stamp_secs\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/SyncPlanningSceneGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# THIS MESSAGE IS FOR INTERNAL COMMUNICATION BETWEEN\n\
# PLANNING ENVIRONMENT COMPONENTS ONLY\n\
\n\
#Full planning scene\n\
PlanningScene planning_scene\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/PlanningScene\n\
#full robot state\n\
arm_navigation_msgs/RobotState robot_state\n\
\n\
#additional frames for duplicating tf\n\
geometry_msgs/TransformStamped[] fixed_frame_transforms\n\
\n\
#full allowed collision matrix\n\
AllowedCollisionMatrix allowed_collision_matrix\n\
\n\
#allowed contacts\n\
arm_navigation_msgs/AllowedContactSpecification[] allowed_contacts\n\
\n\
#all link paddings\n\
arm_navigation_msgs/LinkPadding[] link_padding\n\
\n\
#collision objects\n\
arm_navigation_msgs/CollisionObject[] collision_objects\n\
arm_navigation_msgs/AttachedCollisionObject[] attached_collision_objects\n\
\n\
#the collision map\n\
arm_navigation_msgs/CollisionMap collision_map\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/RobotState\n\
# This message contains information about the robot state, i.e. the positions of its joints and links\n\
sensor_msgs/JointState joint_state\n\
arm_navigation_msgs/MultiDOFJointState multi_dof_joint_state\n\
\n\
================================================================================\n\
MSG: sensor_msgs/JointState\n\
# This is a message that holds data to describe the state of a set of torque controlled joints. \n\
#\n\
# The state of each joint (revolute or prismatic) is defined by:\n\
#  * the position of the joint (rad or m),\n\
#  * the velocity of the joint (rad/s or m/s) and \n\
#  * the effort that is applied in the joint (Nm or N).\n\
#\n\
# Each joint is uniquely identified by its name\n\
# The header specifies the time at which the joint states were recorded. All the joint states\n\
# in one message have to be recorded at the same time.\n\
#\n\
# This message consists of a multiple arrays, one for each part of the joint state. \n\
# The goal is to make each of the fields optional. When e.g. your joints have no\n\
# effort associated with them, you can leave the effort array empty. \n\
#\n\
# All arrays in this message should have the same size, or be empty.\n\
# This is the only way to uniquely associate the joint name with the correct\n\
# states.\n\
\n\
\n\
Header header\n\
\n\
string[] name\n\
float64[] position\n\
float64[] velocity\n\
float64[] effort\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/MultiDOFJointState\n\
#A representation of a multi-dof joint state\n\
time stamp\n\
string[] joint_names\n\
string[] frame_ids\n\
string[] child_frame_ids\n\
geometry_msgs/Pose[] poses\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: geometry_msgs/TransformStamped\n\
# This expresses a transform from coordinate frame header.frame_id\n\
# to the coordinate frame child_frame_id\n\
#\n\
# This message is mostly used by the \n\
# <a href=\"http://www.ros.org/wiki/tf\">tf</a> package. \n\
# See it's documentation for more information.\n\
\n\
Header header\n\
string child_frame_id # the frame id of the child frame\n\
Transform transform\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Transform\n\
# This represents the transform between two coordinate frames in free space.\n\
\n\
Vector3 translation\n\
Quaternion rotation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: arm_navigation_msgs/AllowedCollisionMatrix\n\
# the list of link names in the matrix\n\
string[] link_names\n\
\n\
# the individual entries in the allowed collision matrix\n\
# symmetric, with same order as link_names\n\
AllowedCollisionEntry[] entries\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/AllowedCollisionEntry\n\
# whether or not collision checking is enabled\n\
bool[] enabled\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/AllowedContactSpecification\n\
# The names of the regions\n\
string name\n\
\n\
# The shape of the region in the environment\n\
arm_navigation_msgs/Shape shape\n\
\n\
# The pose of the space defining the region\n\
geometry_msgs/PoseStamped pose_stamped\n\
\n\
# The set of links that will be allowed to have penetration contact within this region\n\
string[] link_names\n\
\n\
# The maximum penetration depth allowed for every link\n\
float64 penetration_depth\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/Shape\n\
byte SPHERE=0\n\
byte BOX=1\n\
byte CYLINDER=2\n\
byte MESH=3\n\
\n\
byte type\n\
\n\
\n\
#### define sphere, box, cylinder ####\n\
# the origin of each shape is considered at the shape's center\n\
\n\
# for sphere\n\
# radius := dimensions[0]\n\
\n\
# for cylinder\n\
# radius := dimensions[0]\n\
# length := dimensions[1]\n\
# the length is along the Z axis\n\
\n\
# for box\n\
# size_x := dimensions[0]\n\
# size_y := dimensions[1]\n\
# size_z := dimensions[2]\n\
float64[] dimensions\n\
\n\
\n\
#### define mesh ####\n\
\n\
# list of triangles; triangle k is defined by tre vertices located\n\
# at indices triangles[3k], triangles[3k+1], triangles[3k+2]\n\
int32[] triangles\n\
geometry_msgs/Point[] vertices\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/LinkPadding\n\
#name for the link\n\
string link_name\n\
\n\
# padding to apply to the link\n\
float64 padding\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/CollisionObject\n\
# a header, used for interpreting the poses\n\
Header header\n\
\n\
# the id of the object\n\
string id\n\
\n\
# The padding used for filtering points near the object.\n\
# This does not affect collision checking for the object.  \n\
# Set to negative to get zero padding.\n\
float32 padding\n\
\n\
#This contains what is to be done with the object\n\
CollisionObjectOperation operation\n\
\n\
#the shapes associated with the object\n\
arm_navigation_msgs/Shape[] shapes\n\
\n\
#the poses associated with the shapes - will be transformed using the header\n\
geometry_msgs/Pose[] poses\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/CollisionObjectOperation\n\
#Puts the object into the environment\n\
#or updates the object if already added\n\
byte ADD=0\n\
\n\
#Removes the object from the environment entirely\n\
byte REMOVE=1\n\
\n\
#Only valid within the context of a CollisionAttachedObject message\n\
#Will be ignored if sent with an CollisionObject message\n\
#Takes an attached object, detaches from the attached link\n\
#But adds back in as regular object\n\
byte DETACH_AND_ADD_AS_OBJECT=2\n\
\n\
#Only valid within the context of a CollisionAttachedObject message\n\
#Will be ignored if sent with an CollisionObject message\n\
#Takes current object in the environment and removes it as\n\
#a regular object\n\
byte ATTACH_AND_REMOVE_AS_OBJECT=3\n\
\n\
# Byte code for operation\n\
byte operation\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/AttachedCollisionObject\n\
# The CollisionObject will be attached with a fixed joint to this link\n\
# If link name is set to REMOVE_ALL_ATTACHED_OBJECTS and object.operation \n\
# is set to REMOVE will remove all attached bodies attached to any object\n\
string link_name\n\
\n\
#Reserved for indicating that all attached objects should be removed\n\
string REMOVE_ALL_ATTACHED_OBJECTS = \"all\"\n\
\n\
#This contains the actual shapes and poses for the CollisionObject\n\
#to be attached to the link\n\
#If action is remove and no object.id is set, all objects\n\
#attached to the link indicated by link_name will be removed\n\
CollisionObject object\n\
\n\
# The set of links that the attached objects are allowed to touch\n\
# by default - the link_name is included by default\n\
string[] touch_links\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/CollisionMap\n\
#header for interpreting box positions\n\
Header header\n\
\n\
#boxes for use in collision testing\n\
OrientedBoundingBox[] boxes\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/OrientedBoundingBox\n\
#the center of the box\n\
geometry_msgs/Point32 center\n\
\n\
#the extents of the box, assuming the center is at the point\n\
geometry_msgs/Point32 extents\n\
\n\
#the axis of the box\n\
geometry_msgs/Point32 axis\n\
\n\
#the angle of rotation around the axis\n\
float32 angle\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point32\n\
# This contains the position of a point in free space(with 32 bits of precision).\n\
# It is recommeded to use Point wherever possible instead of Point32.  \n\
# \n\
# This recommendation is to promote interoperability.  \n\
#\n\
# This message is designed to take up less space when sending\n\
# lots of points at once, as in the case of a PointCloud.  \n\
\n\
float32 x\n\
float32 y\n\
float32 z\n\
";
  }

  static const char* value(const  ::arm_navigation_msgs::SyncPlanningSceneActionGoal_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::arm_navigation_msgs::SyncPlanningSceneActionGoal_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::arm_navigation_msgs::SyncPlanningSceneActionGoal_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::arm_navigation_msgs::SyncPlanningSceneActionGoal_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.goal_id);
    stream.next(m.goal);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct SyncPlanningSceneActionGoal_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_navigation_msgs::SyncPlanningSceneActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::arm_navigation_msgs::SyncPlanningSceneActionGoal_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
s << std::endl;
    Printer< ::arm_navigation_msgs::SyncPlanningSceneGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};


} // namespace message_operations
} // namespace ros

#endif // ARM_NAVIGATION_MSGS_MESSAGE_SYNCPLANNINGSCENEACTIONGOAL_H

