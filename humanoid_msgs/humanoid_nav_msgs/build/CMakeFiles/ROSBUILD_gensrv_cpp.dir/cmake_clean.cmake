FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/humanoid_nav_msgs/msg"
  "../src/humanoid_nav_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_cpp"
  "../srv_gen/cpp/include/humanoid_nav_msgs/StepTargetService.h"
  "../srv_gen/cpp/include/humanoid_nav_msgs/PlanFootsteps.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
