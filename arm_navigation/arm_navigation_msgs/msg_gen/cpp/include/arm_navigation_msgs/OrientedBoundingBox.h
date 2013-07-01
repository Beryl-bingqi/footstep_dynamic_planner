/* Auto-generated by genmsg_cpp for file /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/arm_navigation/arm_navigation_msgs/msg/OrientedBoundingBox.msg */
#ifndef ARM_NAVIGATION_MSGS_MESSAGE_ORIENTEDBOUNDINGBOX_H
#define ARM_NAVIGATION_MSGS_MESSAGE_ORIENTEDBOUNDINGBOX_H
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

#include "geometry_msgs/Point32.h"
#include "geometry_msgs/Point32.h"
#include "geometry_msgs/Point32.h"

namespace arm_navigation_msgs
{
template <class ContainerAllocator>
struct OrientedBoundingBox_ {
  typedef OrientedBoundingBox_<ContainerAllocator> Type;

  OrientedBoundingBox_()
  : center()
  , extents()
  , axis()
  , angle(0.0)
  {
  }

  OrientedBoundingBox_(const ContainerAllocator& _alloc)
  : center(_alloc)
  , extents(_alloc)
  , axis(_alloc)
  , angle(0.0)
  {
  }

  typedef  ::geometry_msgs::Point32_<ContainerAllocator>  _center_type;
   ::geometry_msgs::Point32_<ContainerAllocator>  center;

  typedef  ::geometry_msgs::Point32_<ContainerAllocator>  _extents_type;
   ::geometry_msgs::Point32_<ContainerAllocator>  extents;

  typedef  ::geometry_msgs::Point32_<ContainerAllocator>  _axis_type;
   ::geometry_msgs::Point32_<ContainerAllocator>  axis;

  typedef float _angle_type;
  float angle;


  typedef boost::shared_ptr< ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct OrientedBoundingBox
typedef  ::arm_navigation_msgs::OrientedBoundingBox_<std::allocator<void> > OrientedBoundingBox;

typedef boost::shared_ptr< ::arm_navigation_msgs::OrientedBoundingBox> OrientedBoundingBoxPtr;
typedef boost::shared_ptr< ::arm_navigation_msgs::OrientedBoundingBox const> OrientedBoundingBoxConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace arm_navigation_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator> > {
  static const char* value() 
  {
    return "a9b13162620bd04a7cb84cf207e7a8ac";
  }

  static const char* value(const  ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xa9b13162620bd04aULL;
  static const uint64_t static_value2 = 0x7cb84cf207e7a8acULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator> > {
  static const char* value() 
  {
    return "arm_navigation_msgs/OrientedBoundingBox";
  }

  static const char* value(const  ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator> > {
  static const char* value() 
  {
    return "#the center of the box\n\
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

  static const char* value(const  ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.center);
    stream.next(m.extents);
    stream.next(m.axis);
    stream.next(m.angle);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct OrientedBoundingBox_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator> & v) 
  {
    s << indent << "center: ";
s << std::endl;
    Printer< ::geometry_msgs::Point32_<ContainerAllocator> >::stream(s, indent + "  ", v.center);
    s << indent << "extents: ";
s << std::endl;
    Printer< ::geometry_msgs::Point32_<ContainerAllocator> >::stream(s, indent + "  ", v.extents);
    s << indent << "axis: ";
s << std::endl;
    Printer< ::geometry_msgs::Point32_<ContainerAllocator> >::stream(s, indent + "  ", v.axis);
    s << indent << "angle: ";
    Printer<float>::stream(s, indent + "  ", v.angle);
  }
};


} // namespace message_operations
} // namespace ros

#endif // ARM_NAVIGATION_MSGS_MESSAGE_ORIENTEDBOUNDINGBOX_H
