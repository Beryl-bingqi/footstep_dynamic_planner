/* Auto-generated by genmsg_cpp for file /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/arm_navigation/arm_navigation_msgs/msg/JointTrajectoryWithLimits.msg */
#ifndef ARM_NAVIGATION_MSGS_MESSAGE_JOINTTRAJECTORYWITHLIMITS_H
#define ARM_NAVIGATION_MSGS_MESSAGE_JOINTTRAJECTORYWITHLIMITS_H
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

#include "trajectory_msgs/JointTrajectory.h"
#include "arm_navigation_msgs/JointLimits.h"

namespace arm_navigation_msgs
{
template <class ContainerAllocator>
struct JointTrajectoryWithLimits_ {
  typedef JointTrajectoryWithLimits_<ContainerAllocator> Type;

  JointTrajectoryWithLimits_()
  : trajectory()
  , limits()
  {
  }

  JointTrajectoryWithLimits_(const ContainerAllocator& _alloc)
  : trajectory(_alloc)
  , limits(_alloc)
  {
  }

  typedef  ::trajectory_msgs::JointTrajectory_<ContainerAllocator>  _trajectory_type;
   ::trajectory_msgs::JointTrajectory_<ContainerAllocator>  trajectory;

  typedef std::vector< ::arm_navigation_msgs::JointLimits_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::arm_navigation_msgs::JointLimits_<ContainerAllocator> >::other >  _limits_type;
  std::vector< ::arm_navigation_msgs::JointLimits_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::arm_navigation_msgs::JointLimits_<ContainerAllocator> >::other >  limits;


  typedef boost::shared_ptr< ::arm_navigation_msgs::JointTrajectoryWithLimits_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_navigation_msgs::JointTrajectoryWithLimits_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct JointTrajectoryWithLimits
typedef  ::arm_navigation_msgs::JointTrajectoryWithLimits_<std::allocator<void> > JointTrajectoryWithLimits;

typedef boost::shared_ptr< ::arm_navigation_msgs::JointTrajectoryWithLimits> JointTrajectoryWithLimitsPtr;
typedef boost::shared_ptr< ::arm_navigation_msgs::JointTrajectoryWithLimits const> JointTrajectoryWithLimitsConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::arm_navigation_msgs::JointTrajectoryWithLimits_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::arm_navigation_msgs::JointTrajectoryWithLimits_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace arm_navigation_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::arm_navigation_msgs::JointTrajectoryWithLimits_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::arm_navigation_msgs::JointTrajectoryWithLimits_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::arm_navigation_msgs::JointTrajectoryWithLimits_<ContainerAllocator> > {
  static const char* value() 
  {
    return "e31e1ba1b3409bbb645c8dfcca5935cd";
  }

  static const char* value(const  ::arm_navigation_msgs::JointTrajectoryWithLimits_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xe31e1ba1b3409bbbULL;
  static const uint64_t static_value2 = 0x645c8dfcca5935cdULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_navigation_msgs::JointTrajectoryWithLimits_<ContainerAllocator> > {
  static const char* value() 
  {
    return "arm_navigation_msgs/JointTrajectoryWithLimits";
  }

  static const char* value(const  ::arm_navigation_msgs::JointTrajectoryWithLimits_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::arm_navigation_msgs::JointTrajectoryWithLimits_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# A trajectory message that encodes joint limits within it.\n\
trajectory_msgs/JointTrajectory trajectory\n\
\n\
# A vector of JointLimit messages.\n\
# Each message contains the limits for a specific joint\n\
arm_navigation_msgs/JointLimits[] limits\n\
\n\
================================================================================\n\
MSG: trajectory_msgs/JointTrajectory\n\
Header header\n\
string[] joint_names\n\
JointTrajectoryPoint[] points\n\
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
MSG: trajectory_msgs/JointTrajectoryPoint\n\
float64[] positions\n\
float64[] velocities\n\
float64[] accelerations\n\
duration time_from_start\n\
================================================================================\n\
MSG: arm_navigation_msgs/JointLimits\n\
# This message contains information about limits of a particular joint (or control dimension)\n\
string joint_name\n\
\n\
# true if the joint has position limits\n\
bool has_position_limits\n\
\n\
# min and max position limits\n\
float64 min_position\n\
float64 max_position\n\
\n\
# true if joint has velocity limits\n\
bool has_velocity_limits\n\
\n\
# max velocity limit\n\
float64 max_velocity\n\
# min_velocity is assumed to be -max_velocity\n\
\n\
# true if joint has acceleration limits\n\
bool has_acceleration_limits\n\
# max acceleration limit\n\
float64 max_acceleration\n\
# min_acceleration is assumed to be -max_acceleration\n\
\n\
";
  }

  static const char* value(const  ::arm_navigation_msgs::JointTrajectoryWithLimits_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::arm_navigation_msgs::JointTrajectoryWithLimits_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.trajectory);
    stream.next(m.limits);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct JointTrajectoryWithLimits_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_navigation_msgs::JointTrajectoryWithLimits_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::arm_navigation_msgs::JointTrajectoryWithLimits_<ContainerAllocator> & v) 
  {
    s << indent << "trajectory: ";
s << std::endl;
    Printer< ::trajectory_msgs::JointTrajectory_<ContainerAllocator> >::stream(s, indent + "  ", v.trajectory);
    s << indent << "limits[]" << std::endl;
    for (size_t i = 0; i < v.limits.size(); ++i)
    {
      s << indent << "  limits[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::arm_navigation_msgs::JointLimits_<ContainerAllocator> >::stream(s, indent + "    ", v.limits[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // ARM_NAVIGATION_MSGS_MESSAGE_JOINTTRAJECTORYWITHLIMITS_H

