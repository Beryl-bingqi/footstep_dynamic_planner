/* Auto-generated by genmsg_cpp for file /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/arm_navigation/arm_navigation_msgs/msg/CollisionMap.msg */
#ifndef ARM_NAVIGATION_MSGS_MESSAGE_COLLISIONMAP_H
#define ARM_NAVIGATION_MSGS_MESSAGE_COLLISIONMAP_H
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
#include "arm_navigation_msgs/OrientedBoundingBox.h"

namespace arm_navigation_msgs
{
template <class ContainerAllocator>
struct CollisionMap_ {
  typedef CollisionMap_<ContainerAllocator> Type;

  CollisionMap_()
  : header()
  , boxes()
  {
  }

  CollisionMap_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , boxes(_alloc)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef std::vector< ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator> >::other >  _boxes_type;
  std::vector< ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator> >::other >  boxes;


  typedef boost::shared_ptr< ::arm_navigation_msgs::CollisionMap_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_navigation_msgs::CollisionMap_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct CollisionMap
typedef  ::arm_navigation_msgs::CollisionMap_<std::allocator<void> > CollisionMap;

typedef boost::shared_ptr< ::arm_navigation_msgs::CollisionMap> CollisionMapPtr;
typedef boost::shared_ptr< ::arm_navigation_msgs::CollisionMap const> CollisionMapConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::arm_navigation_msgs::CollisionMap_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::arm_navigation_msgs::CollisionMap_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace arm_navigation_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::arm_navigation_msgs::CollisionMap_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::arm_navigation_msgs::CollisionMap_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::arm_navigation_msgs::CollisionMap_<ContainerAllocator> > {
  static const char* value() 
  {
    return "18ca54db41ccebbe82f61f9801dede89";
  }

  static const char* value(const  ::arm_navigation_msgs::CollisionMap_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x18ca54db41ccebbeULL;
  static const uint64_t static_value2 = 0x82f61f9801dede89ULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_navigation_msgs::CollisionMap_<ContainerAllocator> > {
  static const char* value() 
  {
    return "arm_navigation_msgs/CollisionMap";
  }

  static const char* value(const  ::arm_navigation_msgs::CollisionMap_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::arm_navigation_msgs::CollisionMap_<ContainerAllocator> > {
  static const char* value() 
  {
    return "#header for interpreting box positions\n\
Header header\n\
\n\
#boxes for use in collision testing\n\
OrientedBoundingBox[] boxes\n\
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

  static const char* value(const  ::arm_navigation_msgs::CollisionMap_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::arm_navigation_msgs::CollisionMap_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::arm_navigation_msgs::CollisionMap_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::arm_navigation_msgs::CollisionMap_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.boxes);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct CollisionMap_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_navigation_msgs::CollisionMap_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::arm_navigation_msgs::CollisionMap_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "boxes[]" << std::endl;
    for (size_t i = 0; i < v.boxes.size(); ++i)
    {
      s << indent << "  boxes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::arm_navigation_msgs::OrientedBoundingBox_<ContainerAllocator> >::stream(s, indent + "    ", v.boxes[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // ARM_NAVIGATION_MSGS_MESSAGE_COLLISIONMAP_H
