FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/arm_navigation_msgs/msg"
  "../src/arm_navigation_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/rosbuild_premsgsrvgen"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/rosbuild_premsgsrvgen.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
