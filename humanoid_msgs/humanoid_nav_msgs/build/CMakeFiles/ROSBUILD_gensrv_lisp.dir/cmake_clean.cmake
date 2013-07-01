FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/humanoid_nav_msgs/msg"
  "../src/humanoid_nav_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_lisp"
  "../srv_gen/lisp/StepTargetService.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_StepTargetService.lisp"
  "../srv_gen/lisp/PlanFootsteps.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_PlanFootsteps.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
