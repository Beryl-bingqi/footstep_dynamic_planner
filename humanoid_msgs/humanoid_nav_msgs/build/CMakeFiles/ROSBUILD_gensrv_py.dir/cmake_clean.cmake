FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/humanoid_nav_msgs/msg"
  "../src/humanoid_nav_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/humanoid_nav_msgs/srv/__init__.py"
  "../src/humanoid_nav_msgs/srv/_StepTargetService.py"
  "../src/humanoid_nav_msgs/srv/_PlanFootsteps.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
