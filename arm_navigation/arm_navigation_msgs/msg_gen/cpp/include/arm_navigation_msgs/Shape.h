/* Auto-generated by genmsg_cpp for file /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/arm_navigation/arm_navigation_msgs/msg/Shape.msg */
#ifndef ARM_NAVIGATION_MSGS_MESSAGE_SHAPE_H
#define ARM_NAVIGATION_MSGS_MESSAGE_SHAPE_H
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

#include "geometry_msgs/Point.h"

namespace arm_navigation_msgs
{
template <class ContainerAllocator>
struct Shape_ {
  typedef Shape_<ContainerAllocator> Type;

  Shape_()
  : type(0)
  , dimensions()
  , triangles()
  , vertices()
  {
  }

  Shape_(const ContainerAllocator& _alloc)
  : type(0)
  , dimensions(_alloc)
  , triangles(_alloc)
  , vertices(_alloc)
  {
  }

  typedef int8_t _type_type;
  int8_t type;

  typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _dimensions_type;
  std::vector<double, typename ContainerAllocator::template rebind<double>::other >  dimensions;

  typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _triangles_type;
  std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  triangles;

  typedef std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Point_<ContainerAllocator> >::other >  _vertices_type;
  std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Point_<ContainerAllocator> >::other >  vertices;

  enum { SPHERE = 0 };
  enum { BOX = 1 };
  enum { CYLINDER = 2 };
  enum { MESH = 3 };

  typedef boost::shared_ptr< ::arm_navigation_msgs::Shape_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_navigation_msgs::Shape_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct Shape
typedef  ::arm_navigation_msgs::Shape_<std::allocator<void> > Shape;

typedef boost::shared_ptr< ::arm_navigation_msgs::Shape> ShapePtr;
typedef boost::shared_ptr< ::arm_navigation_msgs::Shape const> ShapeConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::arm_navigation_msgs::Shape_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::arm_navigation_msgs::Shape_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace arm_navigation_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::arm_navigation_msgs::Shape_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::arm_navigation_msgs::Shape_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::arm_navigation_msgs::Shape_<ContainerAllocator> > {
  static const char* value() 
  {
    return "59935940044147de75e7523b5d37c4d7";
  }

  static const char* value(const  ::arm_navigation_msgs::Shape_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x59935940044147deULL;
  static const uint64_t static_value2 = 0x75e7523b5d37c4d7ULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_navigation_msgs::Shape_<ContainerAllocator> > {
  static const char* value() 
  {
    return "arm_navigation_msgs/Shape";
  }

  static const char* value(const  ::arm_navigation_msgs::Shape_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::arm_navigation_msgs::Shape_<ContainerAllocator> > {
  static const char* value() 
  {
    return "byte SPHERE=0\n\
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
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
";
  }

  static const char* value(const  ::arm_navigation_msgs::Shape_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::arm_navigation_msgs::Shape_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.type);
    stream.next(m.dimensions);
    stream.next(m.triangles);
    stream.next(m.vertices);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct Shape_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_navigation_msgs::Shape_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::arm_navigation_msgs::Shape_<ContainerAllocator> & v) 
  {
    s << indent << "type: ";
    Printer<int8_t>::stream(s, indent + "  ", v.type);
    s << indent << "dimensions[]" << std::endl;
    for (size_t i = 0; i < v.dimensions.size(); ++i)
    {
      s << indent << "  dimensions[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.dimensions[i]);
    }
    s << indent << "triangles[]" << std::endl;
    for (size_t i = 0; i < v.triangles.size(); ++i)
    {
      s << indent << "  triangles[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.triangles[i]);
    }
    s << indent << "vertices[]" << std::endl;
    for (size_t i = 0; i < v.vertices.size(); ++i)
    {
      s << indent << "  vertices[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "    ", v.vertices[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // ARM_NAVIGATION_MSGS_MESSAGE_SHAPE_H
