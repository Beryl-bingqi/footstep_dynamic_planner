
(cl:in-package :asdf)

(defsystem "spline_smoother-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "LSPBTrajectoryMsg" :depends-on ("_package_LSPBTrajectoryMsg"))
    (:file "_package_LSPBTrajectoryMsg" :depends-on ("_package"))
    (:file "SplineTrajectorySegment" :depends-on ("_package_SplineTrajectorySegment"))
    (:file "_package_SplineTrajectorySegment" :depends-on ("_package"))
    (:file "SplineTrajectory" :depends-on ("_package_SplineTrajectory"))
    (:file "_package_SplineTrajectory" :depends-on ("_package"))
    (:file "LSPBTrajectorySegmentMsg" :depends-on ("_package_LSPBTrajectorySegmentMsg"))
    (:file "_package_LSPBTrajectorySegmentMsg" :depends-on ("_package"))
    (:file "LSPBSplineCoefficients" :depends-on ("_package_LSPBSplineCoefficients"))
    (:file "_package_LSPBSplineCoefficients" :depends-on ("_package"))
    (:file "SplineCoefficients" :depends-on ("_package_SplineCoefficients"))
    (:file "_package_SplineCoefficients" :depends-on ("_package"))
  ))