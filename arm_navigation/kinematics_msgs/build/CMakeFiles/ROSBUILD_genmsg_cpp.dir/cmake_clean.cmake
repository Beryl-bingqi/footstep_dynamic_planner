FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/kinematics_msgs/msg"
  "../src/kinematics_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/kinematics_msgs/KinematicSolverInfo.h"
  "../msg_gen/cpp/include/kinematics_msgs/PositionIKRequest.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
