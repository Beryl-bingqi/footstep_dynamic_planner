/* Auto-generated by genmsg_cpp for file /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/arm_navigation/kinematics_msgs/srv/GetKinematicSolverInfo.srv */
#ifndef KINEMATICS_MSGS_SERVICE_GETKINEMATICSOLVERINFO_H
#define KINEMATICS_MSGS_SERVICE_GETKINEMATICSOLVERINFO_H
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

#include "ros/service_traits.h"



#include "kinematics_msgs/KinematicSolverInfo.h"

namespace kinematics_msgs
{
template <class ContainerAllocator>
struct GetKinematicSolverInfoRequest_ {
  typedef GetKinematicSolverInfoRequest_<ContainerAllocator> Type;

  GetKinematicSolverInfoRequest_()
  {
  }

  GetKinematicSolverInfoRequest_(const ContainerAllocator& _alloc)
  {
  }


  typedef boost::shared_ptr< ::kinematics_msgs::GetKinematicSolverInfoRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kinematics_msgs::GetKinematicSolverInfoRequest_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct GetKinematicSolverInfoRequest
typedef  ::kinematics_msgs::GetKinematicSolverInfoRequest_<std::allocator<void> > GetKinematicSolverInfoRequest;

typedef boost::shared_ptr< ::kinematics_msgs::GetKinematicSolverInfoRequest> GetKinematicSolverInfoRequestPtr;
typedef boost::shared_ptr< ::kinematics_msgs::GetKinematicSolverInfoRequest const> GetKinematicSolverInfoRequestConstPtr;


template <class ContainerAllocator>
struct GetKinematicSolverInfoResponse_ {
  typedef GetKinematicSolverInfoResponse_<ContainerAllocator> Type;

  GetKinematicSolverInfoResponse_()
  : kinematic_solver_info()
  {
  }

  GetKinematicSolverInfoResponse_(const ContainerAllocator& _alloc)
  : kinematic_solver_info(_alloc)
  {
  }

  typedef  ::kinematics_msgs::KinematicSolverInfo_<ContainerAllocator>  _kinematic_solver_info_type;
   ::kinematics_msgs::KinematicSolverInfo_<ContainerAllocator>  kinematic_solver_info;


  typedef boost::shared_ptr< ::kinematics_msgs::GetKinematicSolverInfoResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kinematics_msgs::GetKinematicSolverInfoResponse_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct GetKinematicSolverInfoResponse
typedef  ::kinematics_msgs::GetKinematicSolverInfoResponse_<std::allocator<void> > GetKinematicSolverInfoResponse;

typedef boost::shared_ptr< ::kinematics_msgs::GetKinematicSolverInfoResponse> GetKinematicSolverInfoResponsePtr;
typedef boost::shared_ptr< ::kinematics_msgs::GetKinematicSolverInfoResponse const> GetKinematicSolverInfoResponseConstPtr;

struct GetKinematicSolverInfo
{

typedef GetKinematicSolverInfoRequest Request;
typedef GetKinematicSolverInfoResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct GetKinematicSolverInfo
} // namespace kinematics_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::kinematics_msgs::GetKinematicSolverInfoRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::kinematics_msgs::GetKinematicSolverInfoRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::kinematics_msgs::GetKinematicSolverInfoRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const  ::kinematics_msgs::GetKinematicSolverInfoRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::kinematics_msgs::GetKinematicSolverInfoRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "kinematics_msgs/GetKinematicSolverInfoRequest";
  }

  static const char* value(const  ::kinematics_msgs::GetKinematicSolverInfoRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::kinematics_msgs::GetKinematicSolverInfoRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "\n\
\n\
";
  }

  static const char* value(const  ::kinematics_msgs::GetKinematicSolverInfoRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::kinematics_msgs::GetKinematicSolverInfoRequest_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::kinematics_msgs::GetKinematicSolverInfoResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::kinematics_msgs::GetKinematicSolverInfoResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::kinematics_msgs::GetKinematicSolverInfoResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "9b591d98efeb66095c1b33a70221cab5";
  }

  static const char* value(const  ::kinematics_msgs::GetKinematicSolverInfoResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x9b591d98efeb6609ULL;
  static const uint64_t static_value2 = 0x5c1b33a70221cab5ULL;
};

template<class ContainerAllocator>
struct DataType< ::kinematics_msgs::GetKinematicSolverInfoResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "kinematics_msgs/GetKinematicSolverInfoResponse";
  }

  static const char* value(const  ::kinematics_msgs::GetKinematicSolverInfoResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::kinematics_msgs::GetKinematicSolverInfoResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "kinematics_msgs/KinematicSolverInfo kinematic_solver_info\n\
\n\
================================================================================\n\
MSG: kinematics_msgs/KinematicSolverInfo\n\
# A list of joints in the kinematic tree\n\
string[] joint_names\n\
# A list of joint limits corresponding to the joint names\n\
arm_navigation_msgs/JointLimits[] limits\n\
# A list of links that the kinematics node provides solutions for\n\
string[] link_names\n\
\n\
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

  static const char* value(const  ::kinematics_msgs::GetKinematicSolverInfoResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::kinematics_msgs::GetKinematicSolverInfoRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct GetKinematicSolverInfoRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::kinematics_msgs::GetKinematicSolverInfoResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.kinematic_solver_info);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct GetKinematicSolverInfoResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<kinematics_msgs::GetKinematicSolverInfo> {
  static const char* value() 
  {
    return "9b591d98efeb66095c1b33a70221cab5";
  }

  static const char* value(const kinematics_msgs::GetKinematicSolverInfo&) { return value(); } 
};

template<>
struct DataType<kinematics_msgs::GetKinematicSolverInfo> {
  static const char* value() 
  {
    return "kinematics_msgs/GetKinematicSolverInfo";
  }

  static const char* value(const kinematics_msgs::GetKinematicSolverInfo&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<kinematics_msgs::GetKinematicSolverInfoRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "9b591d98efeb66095c1b33a70221cab5";
  }

  static const char* value(const kinematics_msgs::GetKinematicSolverInfoRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<kinematics_msgs::GetKinematicSolverInfoRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "kinematics_msgs/GetKinematicSolverInfo";
  }

  static const char* value(const kinematics_msgs::GetKinematicSolverInfoRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<kinematics_msgs::GetKinematicSolverInfoResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "9b591d98efeb66095c1b33a70221cab5";
  }

  static const char* value(const kinematics_msgs::GetKinematicSolverInfoResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<kinematics_msgs::GetKinematicSolverInfoResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "kinematics_msgs/GetKinematicSolverInfo";
  }

  static const char* value(const kinematics_msgs::GetKinematicSolverInfoResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // KINEMATICS_MSGS_SERVICE_GETKINEMATICSOLVERINFO_H
