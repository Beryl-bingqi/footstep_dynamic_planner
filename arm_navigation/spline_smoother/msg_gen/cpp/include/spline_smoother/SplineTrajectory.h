/* Auto-generated by genmsg_cpp for file /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/arm_navigation/spline_smoother/msg/SplineTrajectory.msg */
#ifndef SPLINE_SMOOTHER_MESSAGE_SPLINETRAJECTORY_H
#define SPLINE_SMOOTHER_MESSAGE_SPLINETRAJECTORY_H
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
#include "spline_smoother/SplineTrajectorySegment.h"

namespace spline_smoother
{
template <class ContainerAllocator>
struct SplineTrajectory_ {
  typedef SplineTrajectory_<ContainerAllocator> Type;

  SplineTrajectory_()
  : header()
  , names()
  , segments()
  {
  }

  SplineTrajectory_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , names(_alloc)
  , segments(_alloc)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _names_type;
  std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  names;

  typedef std::vector< ::spline_smoother::SplineTrajectorySegment_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::spline_smoother::SplineTrajectorySegment_<ContainerAllocator> >::other >  _segments_type;
  std::vector< ::spline_smoother::SplineTrajectorySegment_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::spline_smoother::SplineTrajectorySegment_<ContainerAllocator> >::other >  segments;


  typedef boost::shared_ptr< ::spline_smoother::SplineTrajectory_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::spline_smoother::SplineTrajectory_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct SplineTrajectory
typedef  ::spline_smoother::SplineTrajectory_<std::allocator<void> > SplineTrajectory;

typedef boost::shared_ptr< ::spline_smoother::SplineTrajectory> SplineTrajectoryPtr;
typedef boost::shared_ptr< ::spline_smoother::SplineTrajectory const> SplineTrajectoryConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::spline_smoother::SplineTrajectory_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::spline_smoother::SplineTrajectory_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace spline_smoother

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::spline_smoother::SplineTrajectory_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::spline_smoother::SplineTrajectory_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::spline_smoother::SplineTrajectory_<ContainerAllocator> > {
  static const char* value() 
  {
    return "45d783dc5c58ac7ae093c93ba1b8d451";
  }

  static const char* value(const  ::spline_smoother::SplineTrajectory_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x45d783dc5c58ac7aULL;
  static const uint64_t static_value2 = 0xe093c93ba1b8d451ULL;
};

template<class ContainerAllocator>
struct DataType< ::spline_smoother::SplineTrajectory_<ContainerAllocator> > {
  static const char* value() 
  {
    return "spline_smoother/SplineTrajectory";
  }

  static const char* value(const  ::spline_smoother::SplineTrajectory_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::spline_smoother::SplineTrajectory_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Header header\n\
string[] names\n\
SplineTrajectorySegment[] segments\n\
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
MSG: spline_smoother/SplineTrajectorySegment\n\
duration duration\n\
SplineCoefficients[] joints\n\
\n\
================================================================================\n\
MSG: spline_smoother/SplineCoefficients\n\
float64[] coefficients\n\
\n\
";
  }

  static const char* value(const  ::spline_smoother::SplineTrajectory_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::spline_smoother::SplineTrajectory_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::spline_smoother::SplineTrajectory_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::spline_smoother::SplineTrajectory_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.names);
    stream.next(m.segments);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct SplineTrajectory_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::spline_smoother::SplineTrajectory_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::spline_smoother::SplineTrajectory_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "names[]" << std::endl;
    for (size_t i = 0; i < v.names.size(); ++i)
    {
      s << indent << "  names[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.names[i]);
    }
    s << indent << "segments[]" << std::endl;
    for (size_t i = 0; i < v.segments.size(); ++i)
    {
      s << indent << "  segments[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::spline_smoother::SplineTrajectorySegment_<ContainerAllocator> >::stream(s, indent + "    ", v.segments[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // SPLINE_SMOOTHER_MESSAGE_SPLINETRAJECTORY_H

