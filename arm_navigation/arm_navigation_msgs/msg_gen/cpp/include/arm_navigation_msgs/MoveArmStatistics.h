/* Auto-generated by genmsg_cpp for file /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/arm_navigation/arm_navigation_msgs/msg/MoveArmStatistics.msg */
#ifndef ARM_NAVIGATION_MSGS_MESSAGE_MOVEARMSTATISTICS_H
#define ARM_NAVIGATION_MSGS_MESSAGE_MOVEARMSTATISTICS_H
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

#include "arm_navigation_msgs/ArmNavigationErrorCodes.h"

namespace arm_navigation_msgs
{
template <class ContainerAllocator>
struct MoveArmStatistics_ {
  typedef MoveArmStatistics_<ContainerAllocator> Type;

  MoveArmStatistics_()
  : request_id(0)
  , result()
  , error_code()
  , planning_time(0.0)
  , smoothing_time(0.0)
  , ik_time(0.0)
  , time_to_execution(0.0)
  , time_to_result(0.0)
  , preempted(false)
  , num_replans(0.0)
  , trajectory_duration(0.0)
  , planner_service_name()
  {
  }

  MoveArmStatistics_(const ContainerAllocator& _alloc)
  : request_id(0)
  , result(_alloc)
  , error_code(_alloc)
  , planning_time(0.0)
  , smoothing_time(0.0)
  , ik_time(0.0)
  , time_to_execution(0.0)
  , time_to_result(0.0)
  , preempted(false)
  , num_replans(0.0)
  , trajectory_duration(0.0)
  , planner_service_name(_alloc)
  {
  }

  typedef int32_t _request_id_type;
  int32_t request_id;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _result_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  result;

  typedef  ::arm_navigation_msgs::ArmNavigationErrorCodes_<ContainerAllocator>  _error_code_type;
   ::arm_navigation_msgs::ArmNavigationErrorCodes_<ContainerAllocator>  error_code;

  typedef double _planning_time_type;
  double planning_time;

  typedef double _smoothing_time_type;
  double smoothing_time;

  typedef double _ik_time_type;
  double ik_time;

  typedef double _time_to_execution_type;
  double time_to_execution;

  typedef double _time_to_result_type;
  double time_to_result;

  typedef uint8_t _preempted_type;
  uint8_t preempted;

  typedef double _num_replans_type;
  double num_replans;

  typedef double _trajectory_duration_type;
  double trajectory_duration;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _planner_service_name_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  planner_service_name;


  typedef boost::shared_ptr< ::arm_navigation_msgs::MoveArmStatistics_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_navigation_msgs::MoveArmStatistics_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct MoveArmStatistics
typedef  ::arm_navigation_msgs::MoveArmStatistics_<std::allocator<void> > MoveArmStatistics;

typedef boost::shared_ptr< ::arm_navigation_msgs::MoveArmStatistics> MoveArmStatisticsPtr;
typedef boost::shared_ptr< ::arm_navigation_msgs::MoveArmStatistics const> MoveArmStatisticsConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::arm_navigation_msgs::MoveArmStatistics_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::arm_navigation_msgs::MoveArmStatistics_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace arm_navigation_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::arm_navigation_msgs::MoveArmStatistics_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::arm_navigation_msgs::MoveArmStatistics_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::arm_navigation_msgs::MoveArmStatistics_<ContainerAllocator> > {
  static const char* value() 
  {
    return "d83dee1348791a0d1414257b41bc161f";
  }

  static const char* value(const  ::arm_navigation_msgs::MoveArmStatistics_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xd83dee1348791a0dULL;
  static const uint64_t static_value2 = 0x1414257b41bc161fULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_navigation_msgs::MoveArmStatistics_<ContainerAllocator> > {
  static const char* value() 
  {
    return "arm_navigation_msgs/MoveArmStatistics";
  }

  static const char* value(const  ::arm_navigation_msgs::MoveArmStatistics_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::arm_navigation_msgs::MoveArmStatistics_<ContainerAllocator> > {
  static const char* value() 
  {
    return "int32 request_id\n\
string result\n\
arm_navigation_msgs/ArmNavigationErrorCodes error_code\n\
\n\
float64 planning_time\n\
float64 smoothing_time\n\
float64 ik_time\n\
float64 time_to_execution\n\
float64 time_to_result\n\
\n\
bool preempted\n\
\n\
float64 num_replans\n\
float64 trajectory_duration\n\
\n\
string planner_service_name\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/ArmNavigationErrorCodes\n\
int32 val\n\
\n\
# overall behavior\n\
int32 PLANNING_FAILED=-1\n\
int32 SUCCESS=1\n\
int32 TIMED_OUT=-2\n\
\n\
# start state errors\n\
int32 START_STATE_IN_COLLISION=-3\n\
int32 START_STATE_VIOLATES_PATH_CONSTRAINTS=-4\n\
\n\
# goal errors\n\
int32 GOAL_IN_COLLISION=-5\n\
int32 GOAL_VIOLATES_PATH_CONSTRAINTS=-6\n\
\n\
# robot state\n\
int32 INVALID_ROBOT_STATE=-7\n\
int32 INCOMPLETE_ROBOT_STATE=-8\n\
\n\
# planning request errors\n\
int32 INVALID_PLANNER_ID=-9\n\
int32 INVALID_NUM_PLANNING_ATTEMPTS=-10\n\
int32 INVALID_ALLOWED_PLANNING_TIME=-11\n\
int32 INVALID_GROUP_NAME=-12\n\
int32 INVALID_GOAL_JOINT_CONSTRAINTS=-13\n\
int32 INVALID_GOAL_POSITION_CONSTRAINTS=-14\n\
int32 INVALID_GOAL_ORIENTATION_CONSTRAINTS=-15\n\
int32 INVALID_PATH_JOINT_CONSTRAINTS=-16\n\
int32 INVALID_PATH_POSITION_CONSTRAINTS=-17\n\
int32 INVALID_PATH_ORIENTATION_CONSTRAINTS=-18\n\
\n\
# state/trajectory monitor errors\n\
int32 INVALID_TRAJECTORY=-19\n\
int32 INVALID_INDEX=-20\n\
int32 JOINT_LIMITS_VIOLATED=-21\n\
int32 PATH_CONSTRAINTS_VIOLATED=-22\n\
int32 COLLISION_CONSTRAINTS_VIOLATED=-23\n\
int32 GOAL_CONSTRAINTS_VIOLATED=-24\n\
int32 JOINTS_NOT_MOVING=-25\n\
int32 TRAJECTORY_CONTROLLER_FAILED=-26\n\
\n\
# system errors\n\
int32 FRAME_TRANSFORM_FAILURE=-27\n\
int32 COLLISION_CHECKING_UNAVAILABLE=-28\n\
int32 ROBOT_STATE_STALE=-29\n\
int32 SENSOR_INFO_STALE=-30\n\
\n\
# kinematics errors\n\
int32 NO_IK_SOLUTION=-31\n\
int32 INVALID_LINK_NAME=-32\n\
int32 IK_LINK_IN_COLLISION=-33\n\
int32 NO_FK_SOLUTION=-34\n\
int32 KINEMATICS_STATE_IN_COLLISION=-35\n\
\n\
# general errors\n\
int32 INVALID_TIMEOUT=-36\n\
\n\
\n\
";
  }

  static const char* value(const  ::arm_navigation_msgs::MoveArmStatistics_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::arm_navigation_msgs::MoveArmStatistics_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.request_id);
    stream.next(m.result);
    stream.next(m.error_code);
    stream.next(m.planning_time);
    stream.next(m.smoothing_time);
    stream.next(m.ik_time);
    stream.next(m.time_to_execution);
    stream.next(m.time_to_result);
    stream.next(m.preempted);
    stream.next(m.num_replans);
    stream.next(m.trajectory_duration);
    stream.next(m.planner_service_name);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct MoveArmStatistics_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_navigation_msgs::MoveArmStatistics_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::arm_navigation_msgs::MoveArmStatistics_<ContainerAllocator> & v) 
  {
    s << indent << "request_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.request_id);
    s << indent << "result: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.result);
    s << indent << "error_code: ";
s << std::endl;
    Printer< ::arm_navigation_msgs::ArmNavigationErrorCodes_<ContainerAllocator> >::stream(s, indent + "  ", v.error_code);
    s << indent << "planning_time: ";
    Printer<double>::stream(s, indent + "  ", v.planning_time);
    s << indent << "smoothing_time: ";
    Printer<double>::stream(s, indent + "  ", v.smoothing_time);
    s << indent << "ik_time: ";
    Printer<double>::stream(s, indent + "  ", v.ik_time);
    s << indent << "time_to_execution: ";
    Printer<double>::stream(s, indent + "  ", v.time_to_execution);
    s << indent << "time_to_result: ";
    Printer<double>::stream(s, indent + "  ", v.time_to_result);
    s << indent << "preempted: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.preempted);
    s << indent << "num_replans: ";
    Printer<double>::stream(s, indent + "  ", v.num_replans);
    s << indent << "trajectory_duration: ";
    Printer<double>::stream(s, indent + "  ", v.trajectory_duration);
    s << indent << "planner_service_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.planner_service_name);
  }
};


} // namespace message_operations
} // namespace ros

#endif // ARM_NAVIGATION_MSGS_MESSAGE_MOVEARMSTATISTICS_H
