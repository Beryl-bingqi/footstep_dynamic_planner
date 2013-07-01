/* Auto-generated by genmsg_cpp for file /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/arm_navigation/spline_smoother/msg/LSPBTrajectorySegmentMsg.msg */
#ifndef SPLINE_SMOOTHER_MESSAGE_LSPBTRAJECTORYSEGMENTMSG_H
#define SPLINE_SMOOTHER_MESSAGE_LSPBTRAJECTORYSEGMENTMSG_H
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

#include "spline_smoother/LSPBSplineCoefficients.h"

namespace spline_smoother
{
template <class ContainerAllocator>
struct LSPBTrajectorySegmentMsg_ {
  typedef LSPBTrajectorySegmentMsg_<ContainerAllocator> Type;

  LSPBTrajectorySegmentMsg_()
  : duration()
  , joints()
  {
  }

  LSPBTrajectorySegmentMsg_(const ContainerAllocator& _alloc)
  : duration()
  , joints(_alloc)
  {
  }

  typedef ros::Duration _duration_type;
  ros::Duration duration;

  typedef std::vector< ::spline_smoother::LSPBSplineCoefficients_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::spline_smoother::LSPBSplineCoefficients_<ContainerAllocator> >::other >  _joints_type;
  std::vector< ::spline_smoother::LSPBSplineCoefficients_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::spline_smoother::LSPBSplineCoefficients_<ContainerAllocator> >::other >  joints;


  typedef boost::shared_ptr< ::spline_smoother::LSPBTrajectorySegmentMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::spline_smoother::LSPBTrajectorySegmentMsg_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct LSPBTrajectorySegmentMsg
typedef  ::spline_smoother::LSPBTrajectorySegmentMsg_<std::allocator<void> > LSPBTrajectorySegmentMsg;

typedef boost::shared_ptr< ::spline_smoother::LSPBTrajectorySegmentMsg> LSPBTrajectorySegmentMsgPtr;
typedef boost::shared_ptr< ::spline_smoother::LSPBTrajectorySegmentMsg const> LSPBTrajectorySegmentMsgConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::spline_smoother::LSPBTrajectorySegmentMsg_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::spline_smoother::LSPBTrajectorySegmentMsg_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace spline_smoother

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::spline_smoother::LSPBTrajectorySegmentMsg_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::spline_smoother::LSPBTrajectorySegmentMsg_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::spline_smoother::LSPBTrajectorySegmentMsg_<ContainerAllocator> > {
  static const char* value() 
  {
    return "53054857ee1d2a19ca83edc07b14eef2";
  }

  static const char* value(const  ::spline_smoother::LSPBTrajectorySegmentMsg_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x53054857ee1d2a19ULL;
  static const uint64_t static_value2 = 0xca83edc07b14eef2ULL;
};

template<class ContainerAllocator>
struct DataType< ::spline_smoother::LSPBTrajectorySegmentMsg_<ContainerAllocator> > {
  static const char* value() 
  {
    return "spline_smoother/LSPBTrajectorySegmentMsg";
  }

  static const char* value(const  ::spline_smoother::LSPBTrajectorySegmentMsg_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::spline_smoother::LSPBTrajectorySegmentMsg_<ContainerAllocator> > {
  static const char* value() 
  {
    return "duration duration\n\
LSPBSplineCoefficients[] joints\n\
\n\
================================================================================\n\
MSG: spline_smoother/LSPBSplineCoefficients\n\
float64[] coefficients\n\
float64 linear_segment_duration\n\
float64 quadratic_segment_duration\n\
";
  }

  static const char* value(const  ::spline_smoother::LSPBTrajectorySegmentMsg_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::spline_smoother::LSPBTrajectorySegmentMsg_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.duration);
    stream.next(m.joints);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct LSPBTrajectorySegmentMsg_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::spline_smoother::LSPBTrajectorySegmentMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::spline_smoother::LSPBTrajectorySegmentMsg_<ContainerAllocator> & v) 
  {
    s << indent << "duration: ";
    Printer<ros::Duration>::stream(s, indent + "  ", v.duration);
    s << indent << "joints[]" << std::endl;
    for (size_t i = 0; i < v.joints.size(); ++i)
    {
      s << indent << "  joints[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::spline_smoother::LSPBSplineCoefficients_<ContainerAllocator> >::stream(s, indent + "    ", v.joints[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // SPLINE_SMOOTHER_MESSAGE_LSPBTRAJECTORYSEGMENTMSG_H
