/* Auto-generated by genmsg_cpp for file /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/arm_navigation/arm_navigation_msgs/srv/GetMotionPlan.srv */
#ifndef ARM_NAVIGATION_MSGS_SERVICE_GETMOTIONPLAN_H
#define ARM_NAVIGATION_MSGS_SERVICE_GETMOTIONPLAN_H
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

#include "arm_navigation_msgs/MotionPlanRequest.h"


#include "arm_navigation_msgs/RobotTrajectory.h"
#include "arm_navigation_msgs/RobotState.h"
#include "arm_navigation_msgs/ArmNavigationErrorCodes.h"
#include "arm_navigation_msgs/ArmNavigationErrorCodes.h"

namespace arm_navigation_msgs
{
template <class ContainerAllocator>
struct GetMotionPlanRequest_ {
  typedef GetMotionPlanRequest_<ContainerAllocator> Type;

  GetMotionPlanRequest_()
  : motion_plan_request()
  {
  }

  GetMotionPlanRequest_(const ContainerAllocator& _alloc)
  : motion_plan_request(_alloc)
  {
  }

  typedef  ::arm_navigation_msgs::MotionPlanRequest_<ContainerAllocator>  _motion_plan_request_type;
   ::arm_navigation_msgs::MotionPlanRequest_<ContainerAllocator>  motion_plan_request;


  typedef boost::shared_ptr< ::arm_navigation_msgs::GetMotionPlanRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_navigation_msgs::GetMotionPlanRequest_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct GetMotionPlanRequest
typedef  ::arm_navigation_msgs::GetMotionPlanRequest_<std::allocator<void> > GetMotionPlanRequest;

typedef boost::shared_ptr< ::arm_navigation_msgs::GetMotionPlanRequest> GetMotionPlanRequestPtr;
typedef boost::shared_ptr< ::arm_navigation_msgs::GetMotionPlanRequest const> GetMotionPlanRequestConstPtr;


template <class ContainerAllocator>
struct GetMotionPlanResponse_ {
  typedef GetMotionPlanResponse_<ContainerAllocator> Type;

  GetMotionPlanResponse_()
  : trajectory()
  , robot_state()
  , planning_time()
  , error_code()
  , trajectory_error_codes()
  {
  }

  GetMotionPlanResponse_(const ContainerAllocator& _alloc)
  : trajectory(_alloc)
  , robot_state(_alloc)
  , planning_time()
  , error_code(_alloc)
  , trajectory_error_codes(_alloc)
  {
  }

  typedef  ::arm_navigation_msgs::RobotTrajectory_<ContainerAllocator>  _trajectory_type;
   ::arm_navigation_msgs::RobotTrajectory_<ContainerAllocator>  trajectory;

  typedef  ::arm_navigation_msgs::RobotState_<ContainerAllocator>  _robot_state_type;
   ::arm_navigation_msgs::RobotState_<ContainerAllocator>  robot_state;

  typedef ros::Duration _planning_time_type;
  ros::Duration planning_time;

  typedef  ::arm_navigation_msgs::ArmNavigationErrorCodes_<ContainerAllocator>  _error_code_type;
   ::arm_navigation_msgs::ArmNavigationErrorCodes_<ContainerAllocator>  error_code;

  typedef std::vector< ::arm_navigation_msgs::ArmNavigationErrorCodes_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::arm_navigation_msgs::ArmNavigationErrorCodes_<ContainerAllocator> >::other >  _trajectory_error_codes_type;
  std::vector< ::arm_navigation_msgs::ArmNavigationErrorCodes_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::arm_navigation_msgs::ArmNavigationErrorCodes_<ContainerAllocator> >::other >  trajectory_error_codes;


  typedef boost::shared_ptr< ::arm_navigation_msgs::GetMotionPlanResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_navigation_msgs::GetMotionPlanResponse_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct GetMotionPlanResponse
typedef  ::arm_navigation_msgs::GetMotionPlanResponse_<std::allocator<void> > GetMotionPlanResponse;

typedef boost::shared_ptr< ::arm_navigation_msgs::GetMotionPlanResponse> GetMotionPlanResponsePtr;
typedef boost::shared_ptr< ::arm_navigation_msgs::GetMotionPlanResponse const> GetMotionPlanResponseConstPtr;

struct GetMotionPlan
{

typedef GetMotionPlanRequest Request;
typedef GetMotionPlanResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct GetMotionPlan
} // namespace arm_navigation_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::arm_navigation_msgs::GetMotionPlanRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::arm_navigation_msgs::GetMotionPlanRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::arm_navigation_msgs::GetMotionPlanRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "53194db8d1959c06cb41e066f1f6695e";
  }

  static const char* value(const  ::arm_navigation_msgs::GetMotionPlanRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x53194db8d1959c06ULL;
  static const uint64_t static_value2 = 0xcb41e066f1f6695eULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_navigation_msgs::GetMotionPlanRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "arm_navigation_msgs/GetMotionPlanRequest";
  }

  static const char* value(const  ::arm_navigation_msgs::GetMotionPlanRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::arm_navigation_msgs::GetMotionPlanRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "\n\
\n\
\n\
MotionPlanRequest motion_plan_request\n\
\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/MotionPlanRequest\n\
# This service contains the definition for a request to the motion\n\
# planner and the output it provides\n\
\n\
# Parameters for the workspace that the planner should work inside\n\
arm_navigation_msgs/WorkspaceParameters workspace_parameters\n\
\n\
# Starting state updates. If certain joints should be considered\n\
# at positions other than the current ones, these positions should\n\
# be set here\n\
arm_navigation_msgs/RobotState start_state\n\
\n\
# The goal state for the model to plan for. The goal is achieved\n\
# if all constraints are satisfied\n\
arm_navigation_msgs/Constraints goal_constraints\n\
\n\
# No state at any point along the path in the produced motion plan will violate these constraints\n\
arm_navigation_msgs/Constraints path_constraints\n\
\n\
# The name of the motion planner to use. If no name is specified,\n\
# a default motion planner will be used\n\
string planner_id\n\
\n\
# The name of the group of joints on which this planner is operating\n\
string group_name\n\
\n\
# The number of times this plan is to be computed. Shortest solution\n\
# will be reported.\n\
int32 num_planning_attempts\n\
\n\
# The maximum amount of time the motion planner is allowed to plan for\n\
duration allowed_planning_time\n\
\n\
# An expected path duration (in seconds) along with an expected discretization of the path allows the planner to determine the discretization of the trajectory that it returns\n\
duration expected_path_duration\n\
duration expected_path_dt\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/WorkspaceParameters\n\
# This message contains a set of parameters useful in\n\
# setting up the workspace for planning\n\
arm_navigation_msgs/Shape  workspace_region_shape\n\
geometry_msgs/PoseStamped    workspace_region_pose\n\
\n\
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
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
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
================================================================================\n\
MSG: arm_navigation_msgs/RobotState\n\
# This message contains information about the robot state, i.e. the positions of its joints and links\n\
sensor_msgs/JointState joint_state\n\
arm_navigation_msgs/MultiDOFJointState multi_dof_joint_state\n\
\n\
================================================================================\n\
MSG: sensor_msgs/JointState\n\
# This is a message that holds data to describe the state of a set of torque controlled joints. \n\
#\n\
# The state of each joint (revolute or prismatic) is defined by:\n\
#  * the position of the joint (rad or m),\n\
#  * the velocity of the joint (rad/s or m/s) and \n\
#  * the effort that is applied in the joint (Nm or N).\n\
#\n\
# Each joint is uniquely identified by its name\n\
# The header specifies the time at which the joint states were recorded. All the joint states\n\
# in one message have to be recorded at the same time.\n\
#\n\
# This message consists of a multiple arrays, one for each part of the joint state. \n\
# The goal is to make each of the fields optional. When e.g. your joints have no\n\
# effort associated with them, you can leave the effort array empty. \n\
#\n\
# All arrays in this message should have the same size, or be empty.\n\
# This is the only way to uniquely associate the joint name with the correct\n\
# states.\n\
\n\
\n\
Header header\n\
\n\
string[] name\n\
float64[] position\n\
float64[] velocity\n\
float64[] effort\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/MultiDOFJointState\n\
#A representation of a multi-dof joint state\n\
time stamp\n\
string[] joint_names\n\
string[] frame_ids\n\
string[] child_frame_ids\n\
geometry_msgs/Pose[] poses\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/Constraints\n\
# This message contains a list of motion planning constraints.\n\
\n\
arm_navigation_msgs/JointConstraint[] joint_constraints\n\
arm_navigation_msgs/PositionConstraint[] position_constraints\n\
arm_navigation_msgs/OrientationConstraint[] orientation_constraints\n\
arm_navigation_msgs/VisibilityConstraint[] visibility_constraints\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/JointConstraint\n\
# Constrain the position of a joint to be within a certain bound\n\
string joint_name\n\
\n\
# the bound to be achieved is [position - tolerance_below, position + tolerance_above]\n\
float64 position\n\
float64 tolerance_above\n\
float64 tolerance_below\n\
\n\
# A weighting factor for this constraint\n\
float64 weight\n\
================================================================================\n\
MSG: arm_navigation_msgs/PositionConstraint\n\
# This message contains the definition of a position constraint.\n\
Header header\n\
\n\
# The robot link this constraint refers to\n\
string link_name\n\
\n\
# The offset (in the link frame) for the target point on the link we are planning for\n\
geometry_msgs/Point target_point_offset\n\
\n\
# The nominal/target position for the point we are planning for\n\
geometry_msgs/Point position\n\
\n\
# The shape of the bounded region that constrains the position of the end-effector\n\
# This region is always centered at the position defined above\n\
arm_navigation_msgs/Shape constraint_region_shape\n\
\n\
# The orientation of the bounded region that constrains the position of the end-effector. \n\
# This allows the specification of non-axis aligned constraints\n\
geometry_msgs/Quaternion constraint_region_orientation\n\
\n\
# Constraint weighting factor - a weight for this constraint\n\
float64 weight\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/OrientationConstraint\n\
# This message contains the definition of an orientation constraint.\n\
Header header\n\
\n\
# The robot link this constraint refers to\n\
string link_name\n\
\n\
# The type of the constraint\n\
int32 type\n\
int32 LINK_FRAME=0\n\
int32 HEADER_FRAME=1\n\
\n\
# The desired orientation of the robot link specified as a quaternion\n\
geometry_msgs/Quaternion orientation\n\
\n\
# optional RPY error tolerances specified if \n\
float64 absolute_roll_tolerance\n\
float64 absolute_pitch_tolerance\n\
float64 absolute_yaw_tolerance\n\
\n\
# Constraint weighting factor - a weight for this constraint\n\
float64 weight\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/VisibilityConstraint\n\
# This message contains the definition of a visibility constraint.\n\
Header header\n\
\n\
# The point stamped target that needs to be kept within view of the sensor\n\
geometry_msgs/PointStamped target\n\
\n\
# The local pose of the frame in which visibility is to be maintained\n\
# The frame id should represent the robot link to which the sensor is attached\n\
# The visual axis of the sensor is assumed to be along the X axis of this frame\n\
geometry_msgs/PoseStamped sensor_pose\n\
\n\
# The deviation (in radians) that will be tolerated\n\
# Constraint error will be measured as the solid angle between the \n\
# X axis of the frame defined above and the vector between the origin \n\
# of the frame defined above and the target location\n\
float64 absolute_tolerance\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PointStamped\n\
# This represents a Point with reference coordinate frame and timestamp\n\
Header header\n\
Point point\n\
\n\
";
  }

  static const char* value(const  ::arm_navigation_msgs::GetMotionPlanRequest_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::arm_navigation_msgs::GetMotionPlanResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::arm_navigation_msgs::GetMotionPlanResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::arm_navigation_msgs::GetMotionPlanResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "644f3b4cf5b71b614298ce1d1a472b61";
  }

  static const char* value(const  ::arm_navigation_msgs::GetMotionPlanResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x644f3b4cf5b71b61ULL;
  static const uint64_t static_value2 = 0x4298ce1d1a472b61ULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_navigation_msgs::GetMotionPlanResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "arm_navigation_msgs/GetMotionPlanResponse";
  }

  static const char* value(const  ::arm_navigation_msgs::GetMotionPlanResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::arm_navigation_msgs::GetMotionPlanResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "\n\
\n\
arm_navigation_msgs/RobotTrajectory trajectory\n\
\n\
\n\
arm_navigation_msgs/RobotState robot_state\n\
\n\
\n\
duration planning_time\n\
\n\
\n\
arm_navigation_msgs/ArmNavigationErrorCodes error_code\n\
\n\
\n\
arm_navigation_msgs/ArmNavigationErrorCodes[] trajectory_error_codes\n\
\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/RobotTrajectory\n\
trajectory_msgs/JointTrajectory joint_trajectory\n\
arm_navigation_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory\n\
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
MSG: arm_navigation_msgs/MultiDOFJointTrajectory\n\
#A representation of a multi-dof joint trajectory\n\
duration stamp\n\
string[] joint_names\n\
string[] frame_ids\n\
string[] child_frame_ids\n\
MultiDOFJointTrajectoryPoint[] points\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/MultiDOFJointTrajectoryPoint\n\
geometry_msgs/Pose[] poses\n\
duration time_from_start\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
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
================================================================================\n\
MSG: arm_navigation_msgs/RobotState\n\
# This message contains information about the robot state, i.e. the positions of its joints and links\n\
sensor_msgs/JointState joint_state\n\
arm_navigation_msgs/MultiDOFJointState multi_dof_joint_state\n\
\n\
================================================================================\n\
MSG: sensor_msgs/JointState\n\
# This is a message that holds data to describe the state of a set of torque controlled joints. \n\
#\n\
# The state of each joint (revolute or prismatic) is defined by:\n\
#  * the position of the joint (rad or m),\n\
#  * the velocity of the joint (rad/s or m/s) and \n\
#  * the effort that is applied in the joint (Nm or N).\n\
#\n\
# Each joint is uniquely identified by its name\n\
# The header specifies the time at which the joint states were recorded. All the joint states\n\
# in one message have to be recorded at the same time.\n\
#\n\
# This message consists of a multiple arrays, one for each part of the joint state. \n\
# The goal is to make each of the fields optional. When e.g. your joints have no\n\
# effort associated with them, you can leave the effort array empty. \n\
#\n\
# All arrays in this message should have the same size, or be empty.\n\
# This is the only way to uniquely associate the joint name with the correct\n\
# states.\n\
\n\
\n\
Header header\n\
\n\
string[] name\n\
float64[] position\n\
float64[] velocity\n\
float64[] effort\n\
\n\
================================================================================\n\
MSG: arm_navigation_msgs/MultiDOFJointState\n\
#A representation of a multi-dof joint state\n\
time stamp\n\
string[] joint_names\n\
string[] frame_ids\n\
string[] child_frame_ids\n\
geometry_msgs/Pose[] poses\n\
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

  static const char* value(const  ::arm_navigation_msgs::GetMotionPlanResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::arm_navigation_msgs::GetMotionPlanRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.motion_plan_request);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct GetMotionPlanRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::arm_navigation_msgs::GetMotionPlanResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.trajectory);
    stream.next(m.robot_state);
    stream.next(m.planning_time);
    stream.next(m.error_code);
    stream.next(m.trajectory_error_codes);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct GetMotionPlanResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<arm_navigation_msgs::GetMotionPlan> {
  static const char* value() 
  {
    return "e7f04013c167d0703692fec8a86b22ef";
  }

  static const char* value(const arm_navigation_msgs::GetMotionPlan&) { return value(); } 
};

template<>
struct DataType<arm_navigation_msgs::GetMotionPlan> {
  static const char* value() 
  {
    return "arm_navigation_msgs/GetMotionPlan";
  }

  static const char* value(const arm_navigation_msgs::GetMotionPlan&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<arm_navigation_msgs::GetMotionPlanRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "e7f04013c167d0703692fec8a86b22ef";
  }

  static const char* value(const arm_navigation_msgs::GetMotionPlanRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<arm_navigation_msgs::GetMotionPlanRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "arm_navigation_msgs/GetMotionPlan";
  }

  static const char* value(const arm_navigation_msgs::GetMotionPlanRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<arm_navigation_msgs::GetMotionPlanResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "e7f04013c167d0703692fec8a86b22ef";
  }

  static const char* value(const arm_navigation_msgs::GetMotionPlanResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<arm_navigation_msgs::GetMotionPlanResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "arm_navigation_msgs/GetMotionPlan";
  }

  static const char* value(const arm_navigation_msgs::GetMotionPlanResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // ARM_NAVIGATION_MSGS_SERVICE_GETMOTIONPLAN_H

