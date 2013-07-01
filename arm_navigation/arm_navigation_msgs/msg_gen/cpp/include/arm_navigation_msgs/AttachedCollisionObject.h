/* Auto-generated by genmsg_cpp for file /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/arm_navigation/arm_navigation_msgs/msg/AttachedCollisionObject.msg */
#ifndef ARM_NAVIGATION_MSGS_MESSAGE_ATTACHEDCOLLISIONOBJECT_H
#define ARM_NAVIGATION_MSGS_MESSAGE_ATTACHEDCOLLISIONOBJECT_H
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

#include "arm_navigation_msgs/CollisionObject.h"

namespace arm_navigation_msgs
{
template <class ContainerAllocator>
struct AttachedCollisionObject_ {
  typedef AttachedCollisionObject_<ContainerAllocator> Type;

  AttachedCollisionObject_()
  : link_name()
  , object()
  , touch_links()
  {
  }

  AttachedCollisionObject_(const ContainerAllocator& _alloc)
  : link_name(_alloc)
  , object(_alloc)
  , touch_links(_alloc)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _link_name_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  link_name;

  typedef  ::arm_navigation_msgs::CollisionObject_<ContainerAllocator>  _object_type;
   ::arm_navigation_msgs::CollisionObject_<ContainerAllocator>  object;

  typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _touch_links_type;
  std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  touch_links;

  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  REMOVE_ALL_ATTACHED_OBJECTS;

  typedef boost::shared_ptr< ::arm_navigation_msgs::AttachedCollisionObject_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_navigation_msgs::AttachedCollisionObject_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct AttachedCollisionObject
typedef  ::arm_navigation_msgs::AttachedCollisionObject_<std::allocator<void> > AttachedCollisionObject;

typedef boost::shared_ptr< ::arm_navigation_msgs::AttachedCollisionObject> AttachedCollisionObjectPtr;
typedef boost::shared_ptr< ::arm_navigation_msgs::AttachedCollisionObject const> AttachedCollisionObjectConstPtr;

template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  AttachedCollisionObject_<ContainerAllocator>::REMOVE_ALL_ATTACHED_OBJECTS = "\"all\"";

template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::arm_navigation_msgs::AttachedCollisionObject_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::arm_navigation_msgs::AttachedCollisionObject_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace arm_navigation_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::arm_navigation_msgs::AttachedCollisionObject_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::arm_navigation_msgs::AttachedCollisionObject_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::arm_navigation_msgs::AttachedCollisionObject_<ContainerAllocator> > {
  static const char* value() 
  {
    return "3fd8ca730863e3d97d109c317d106cf9";
  }

  static const char* value(const  ::arm_navigation_msgs::AttachedCollisionObject_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x3fd8ca730863e3d9ULL;
  static const uint64_t static_value2 = 0x7d109c317d106cf9ULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_navigation_msgs::AttachedCollisionObject_<ContainerAllocator> > {
  static const char* value() 
  {
    return "arm_navigation_msgs/AttachedCollisionObject";
  }

  static const char* value(const  ::arm_navigation_msgs::AttachedCollisionObject_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::arm_navigation_msgs::AttachedCollisionObject_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# The CollisionObject will be attached with a fixed joint to this link\n\
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
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
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
";
  }

  static const char* value(const  ::arm_navigation_msgs::AttachedCollisionObject_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::arm_navigation_msgs::AttachedCollisionObject_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.link_name);
    stream.next(m.object);
    stream.next(m.touch_links);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct AttachedCollisionObject_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_navigation_msgs::AttachedCollisionObject_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::arm_navigation_msgs::AttachedCollisionObject_<ContainerAllocator> & v) 
  {
    s << indent << "link_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.link_name);
    s << indent << "object: ";
s << std::endl;
    Printer< ::arm_navigation_msgs::CollisionObject_<ContainerAllocator> >::stream(s, indent + "  ", v.object);
    s << indent << "touch_links[]" << std::endl;
    for (size_t i = 0; i < v.touch_links.size(); ++i)
    {
      s << indent << "  touch_links[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.touch_links[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // ARM_NAVIGATION_MSGS_MESSAGE_ATTACHEDCOLLISIONOBJECT_H

