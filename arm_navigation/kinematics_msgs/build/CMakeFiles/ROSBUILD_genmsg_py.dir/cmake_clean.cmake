FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/kinematics_msgs/msg"
  "../src/kinematics_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/kinematics_msgs/msg/__init__.py"
  "../src/kinematics_msgs/msg/_KinematicSolverInfo.py"
  "../src/kinematics_msgs/msg/_PositionIKRequest.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
