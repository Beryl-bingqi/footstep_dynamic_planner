FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/humanoid_nav_msgs/msg"
  "../src/humanoid_nav_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/humanoid_nav_msgs/StepTarget.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
