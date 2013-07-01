FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/kinematics_msgs/msg"
  "../src/kinematics_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_cpp"
  "../srv_gen/cpp/include/kinematics_msgs/GetConstraintAwarePositionIK.h"
  "../srv_gen/cpp/include/kinematics_msgs/GetPositionIK.h"
  "../srv_gen/cpp/include/kinematics_msgs/GetKinematicSolverInfo.h"
  "../srv_gen/cpp/include/kinematics_msgs/GetPositionFK.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
