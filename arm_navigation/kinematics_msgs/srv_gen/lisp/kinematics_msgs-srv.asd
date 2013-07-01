
(cl:in-package :asdf)

(defsystem "kinematics_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :arm_navigation_msgs-msg
               :geometry_msgs-msg
               :kinematics_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GetConstraintAwarePositionIK" :depends-on ("_package_GetConstraintAwarePositionIK"))
    (:file "_package_GetConstraintAwarePositionIK" :depends-on ("_package"))
    (:file "GetPositionIK" :depends-on ("_package_GetPositionIK"))
    (:file "_package_GetPositionIK" :depends-on ("_package"))
    (:file "GetKinematicSolverInfo" :depends-on ("_package_GetKinematicSolverInfo"))
    (:file "_package_GetKinematicSolverInfo" :depends-on ("_package"))
    (:file "GetPositionFK" :depends-on ("_package_GetPositionFK"))
    (:file "_package_GetPositionFK" :depends-on ("_package"))
  ))