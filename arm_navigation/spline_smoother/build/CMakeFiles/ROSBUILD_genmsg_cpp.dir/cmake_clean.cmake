FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/spline_smoother/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/spline_smoother/LSPBTrajectoryMsg.h"
  "../msg_gen/cpp/include/spline_smoother/SplineTrajectorySegment.h"
  "../msg_gen/cpp/include/spline_smoother/SplineTrajectory.h"
  "../msg_gen/cpp/include/spline_smoother/LSPBTrajectorySegmentMsg.h"
  "../msg_gen/cpp/include/spline_smoother/LSPBSplineCoefficients.h"
  "../msg_gen/cpp/include/spline_smoother/SplineCoefficients.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
