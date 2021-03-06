/* Auto-generated by genmsg_cpp for file /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/arm_navigation/kinematics_msgs/msg/PositionIKRequest.msg */
#ifndef KINEMATICS_MSGS_MESSAGE_POSITIONIKREQUEST_H
#define KINEMATICS_MSGS_MESSAGE_POSITIONIKREQUEST_H
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

#include "geometry_msgs/PoseStamped.h"
#include "arm_navigation_msgs/RobotState.h"
#include "arm_navigation_msgs/RobotState.h"

namespace kinematics_msgs
{
template <class ContainerAllocator>
struct PositionIKRequest_ {
  typedef PositionIKRequest_<ContainerAllocator> Type;

  PositionIKRequest_()
  : ik_link_name()
  , pose_stamped()
  , ik_seed_state()
  , robot_state()
  {
  }

  PositionIKRequest_(const ContainerAllocator& _alloc)
  : ik_link_name(_alloc)
  , pose_stamped(_alloc)
  , ik_seed_state(_alloc)
  , robot_state(_alloc)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _ik_link_name_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  ik_link_name;

  typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _pose_stamped_type;
   ::geometry_msgs::PoseStamped_<ContainerAllocator>  pose_stamped;

  typedef  ::arm_navigation_msgs::RobotState_<ContainerAllocator>  _ik_seed_state_type;
   ::arm_navigation_msgs::RobotState_<ContainerAllocator>  ik_seed_state;

  typedef  ::arm_navigation_msgs::RobotState_<ContainerAllocator>  _robot_state_type;
   ::arm_navigation_msgs::RobotState_<ContainerAllocator>  robot_state;


  typedef boost::shared_ptr< ::kinematics_msgs::PositionIKRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kinematics_msgs::PositionIKRequest_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct PositionIKRequest
typedef  ::kinematics_msgs::PositionIKRequest_<std::allocator<void> > PositionIKRequest;

typedef boost::shared_ptr< ::kinematics_msgs::PositionIKRequest> PositionIKRequestPtr;
typedef boost::shared_ptr< ::kinematics_msgs::PositionIKRequest const> PositionIKRequestConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::kinematics_msgs::PositionIKRequest_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::kinematics_msgs::PositionIKRequest_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace kinematics_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::kinematics_msgs::PositionIKRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::kinematics_msgs::PositionIKRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::kinematics_msgs::PositionIKRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "737bb756c6253bdd460b1383d0b12dac";
  }

  static const char* value(const  ::kinematics_msgs::PositionIKRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x737bb756c6253bddULL;
  static const uint64_t static_value2 = 0x460b1383d0b12dacULL;
};

template<class ContainerAllocator>
struct DataType< ::kinematics_msgs::PositionIKRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "kinematics_msgs/PositionIKRequest";
  }

  static const char* value(const  ::kinematics_msgs::PositionIKRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::kinematics_msgs::PositionIKRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# A Position IK request message\n\
# The name of the link for which we are computing IK\n\
string ik_link_name\n\
\n\
# The (stamped) pose of the link\n\
geometry_msgs/PoseStamped pose_stamped\n\
\n\
# A RobotState consisting of hint/seed positions for the IK computation. \n\
# These may be used to seed the IK search. \n\
# The seed state MUST contain state for all joints to be used by the IK solver\n\
# to compute IK. The list of joints that the IK solver deals with can be found using\n\
# the kinematics_msgs/GetKinematicSolverInfo\n\
arm_navigation_msgs/RobotState ik_seed_state\n\
\n\
# Additional state information can be provided here to specify the starting positions \n\
# of other joints/links on the robot.\n\
arm_navigation_msgs/RobotState robot_state\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
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
";
  }

  static const char* value(const  ::kinematics_msgs::PositionIKRequest_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::kinematics_msgs::PositionIKRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.ik_link_name);
    stream.next(m.pose_stamped);
    stream.next(m.ik_seed_state);
    stream.next(m.robot_state);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct PositionIKRequest_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kinematics_msgs::PositionIKRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::kinematics_msgs::PositionIKRequest_<ContainerAllocator> & v) 
  {
    s << indent << "ik_link_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.ik_link_name);
    s << indent << "pose_stamped: ";
s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.pose_stamped);
    s << indent << "ik_seed_state: ";
s << std::endl;
    Printer< ::arm_navigation_msgs::RobotState_<ContainerAllocator> >::stream(s, indent + "  ", v.ik_seed_state);
    s << indent << "robot_state: ";
s << std::endl;
    Printer< ::arm_navigation_msgs::RobotState_<ContainerAllocator> >::stream(s, indent + "  ", v.robot_state);
  }
};


} // namespace message_operations
} // namespace ros

#endif // KINEMATICS_MSGS_MESSAGE_POSITIONIKREQUEST_H

