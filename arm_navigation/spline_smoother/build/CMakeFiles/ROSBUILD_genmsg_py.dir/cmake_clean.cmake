FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/spline_smoother/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/spline_smoother/msg/__init__.py"
  "../src/spline_smoother/msg/_LSPBTrajectoryMsg.py"
  "../src/spline_smoother/msg/_SplineTrajectorySegment.py"
  "../src/spline_smoother/msg/_SplineTrajectory.py"
  "../src/spline_smoother/msg/_LSPBTrajectorySegmentMsg.py"
  "../src/spline_smoother/msg/_LSPBSplineCoefficients.py"
  "../src/spline_smoother/msg/_SplineCoefficients.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
