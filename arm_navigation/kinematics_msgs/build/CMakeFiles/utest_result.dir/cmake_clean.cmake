FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/kinematics_msgs/msg"
  "../src/kinematics_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/utest_result"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/utest_result.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
