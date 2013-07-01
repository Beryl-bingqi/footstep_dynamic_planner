FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/kinematics_msgs/msg"
  "../src/kinematics_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/kinematics_msgs/srv/__init__.py"
  "../src/kinematics_msgs/srv/_GetConstraintAwarePositionIK.py"
  "../src/kinematics_msgs/srv/_GetPositionIK.py"
  "../src/kinematics_msgs/srv/_GetKinematicSolverInfo.py"
  "../src/kinematics_msgs/srv/_GetPositionFK.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
