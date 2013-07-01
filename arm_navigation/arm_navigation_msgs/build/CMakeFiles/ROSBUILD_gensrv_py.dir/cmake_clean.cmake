FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/arm_navigation_msgs/msg"
  "../src/arm_navigation_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/arm_navigation_msgs/srv/__init__.py"
  "../src/arm_navigation_msgs/srv/_GetMotionPlan.py"
  "../src/arm_navigation_msgs/srv/_SetPlanningSceneDiff.py"
  "../src/arm_navigation_msgs/srv/_FilterJointTrajectory.py"
  "../src/arm_navigation_msgs/srv/_GetRobotState.py"
  "../src/arm_navigation_msgs/srv/_GetCollisionObjects.py"
  "../src/arm_navigation_msgs/srv/_GetPlanningScene.py"
  "../src/arm_navigation_msgs/srv/_GetRobotTrajectoryValidity.py"
  "../src/arm_navigation_msgs/srv/_GetJointTrajectoryValidity.py"
  "../src/arm_navigation_msgs/srv/_FilterJointTrajectoryWithConstraints.py"
  "../src/arm_navigation_msgs/srv/_GetStateValidity.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
