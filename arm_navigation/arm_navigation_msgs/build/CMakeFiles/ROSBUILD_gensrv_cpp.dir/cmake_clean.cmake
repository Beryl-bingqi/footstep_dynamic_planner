FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/arm_navigation_msgs/msg"
  "../src/arm_navigation_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_cpp"
  "../srv_gen/cpp/include/arm_navigation_msgs/GetMotionPlan.h"
  "../srv_gen/cpp/include/arm_navigation_msgs/SetPlanningSceneDiff.h"
  "../srv_gen/cpp/include/arm_navigation_msgs/FilterJointTrajectory.h"
  "../srv_gen/cpp/include/arm_navigation_msgs/GetRobotState.h"
  "../srv_gen/cpp/include/arm_navigation_msgs/GetCollisionObjects.h"
  "../srv_gen/cpp/include/arm_navigation_msgs/GetPlanningScene.h"
  "../srv_gen/cpp/include/arm_navigation_msgs/GetRobotTrajectoryValidity.h"
  "../srv_gen/cpp/include/arm_navigation_msgs/GetJointTrajectoryValidity.h"
  "../srv_gen/cpp/include/arm_navigation_msgs/FilterJointTrajectoryWithConstraints.h"
  "../srv_gen/cpp/include/arm_navigation_msgs/GetStateValidity.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
