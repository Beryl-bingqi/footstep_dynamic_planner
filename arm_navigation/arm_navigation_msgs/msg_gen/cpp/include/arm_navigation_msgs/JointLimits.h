/* Auto-generated by genmsg_cpp for file /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/arm_navigation/arm_navigation_msgs/msg/JointLimits.msg */
#ifndef ARM_NAVIGATION_MSGS_MESSAGE_JOINTLIMITS_H
#define ARM_NAVIGATION_MSGS_MESSAGE_JOINTLIMITS_H
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


namespace arm_navigation_msgs
{
template <class ContainerAllocator>
struct JointLimits_ {
  typedef JointLimits_<ContainerAllocator> Type;

  JointLimits_()
  : joint_name()
  , has_position_limits(false)
  , min_position(0.0)
  , max_position(0.0)
  , has_velocity_limits(false)
  , max_velocity(0.0)
  , has_acceleration_limits(false)
  , max_acceleration(0.0)
  {
  }

  JointLimits_(const ContainerAllocator& _alloc)
  : joint_name(_alloc)
  , has_position_limits(false)
  , min_position(0.0)
  , max_position(0.0)
  , has_velocity_limits(false)
  , max_velocity(0.0)
  , has_acceleration_limits(false)
  , max_acceleration(0.0)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _joint_name_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  joint_name;

  typedef uint8_t _has_position_limits_type;
  uint8_t has_position_limits;

  typedef double _min_position_type;
  double min_position;

  typedef double _max_position_type;
  double max_position;

  typedef uint8_t _has_velocity_limits_type;
  uint8_t has_velocity_limits;

  typedef double _max_velocity_type;
  double max_velocity;

  typedef uint8_t _has_acceleration_limits_type;
  uint8_t has_acceleration_limits;

  typedef double _max_acceleration_type;
  double max_acceleration;


  typedef boost::shared_ptr< ::arm_navigation_msgs::JointLimits_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_navigation_msgs::JointLimits_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct JointLimits
typedef  ::arm_navigation_msgs::JointLimits_<std::allocator<void> > JointLimits;

typedef boost::shared_ptr< ::arm_navigation_msgs::JointLimits> JointLimitsPtr;
typedef boost::shared_ptr< ::arm_navigation_msgs::JointLimits const> JointLimitsConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::arm_navigation_msgs::JointLimits_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::arm_navigation_msgs::JointLimits_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace arm_navigation_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::arm_navigation_msgs::JointLimits_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::arm_navigation_msgs::JointLimits_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::arm_navigation_msgs::JointLimits_<ContainerAllocator> > {
  static const char* value() 
  {
    return "8ca618c7329ea46142cbc864a2efe856";
  }

  static const char* value(const  ::arm_navigation_msgs::JointLimits_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x8ca618c7329ea461ULL;
  static const uint64_t static_value2 = 0x42cbc864a2efe856ULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_navigation_msgs::JointLimits_<ContainerAllocator> > {
  static const char* value() 
  {
    return "arm_navigation_msgs/JointLimits";
  }

  static const char* value(const  ::arm_navigation_msgs::JointLimits_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::arm_navigation_msgs::JointLimits_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# This message contains information about limits of a particular joint (or control dimension)\n\
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

  static const char* value(const  ::arm_navigation_msgs::JointLimits_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::arm_navigation_msgs::JointLimits_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.joint_name);
    stream.next(m.has_position_limits);
    stream.next(m.min_position);
    stream.next(m.max_position);
    stream.next(m.has_velocity_limits);
    stream.next(m.max_velocity);
    stream.next(m.has_acceleration_limits);
    stream.next(m.max_acceleration);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct JointLimits_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_navigation_msgs::JointLimits_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::arm_navigation_msgs::JointLimits_<ContainerAllocator> & v) 
  {
    s << indent << "joint_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.joint_name);
    s << indent << "has_position_limits: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.has_position_limits);
    s << indent << "min_position: ";
    Printer<double>::stream(s, indent + "  ", v.min_position);
    s << indent << "max_position: ";
    Printer<double>::stream(s, indent + "  ", v.max_position);
    s << indent << "has_velocity_limits: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.has_velocity_limits);
    s << indent << "max_velocity: ";
    Printer<double>::stream(s, indent + "  ", v.max_velocity);
    s << indent << "has_acceleration_limits: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.has_acceleration_limits);
    s << indent << "max_acceleration: ";
    Printer<double>::stream(s, indent + "  ", v.max_acceleration);
  }
};


} // namespace message_operations
} // namespace ros

#endif // ARM_NAVIGATION_MSGS_MESSAGE_JOINTLIMITS_H

