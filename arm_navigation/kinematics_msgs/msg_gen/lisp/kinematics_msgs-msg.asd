
(cl:in-package :asdf)

(defsystem "kinematics_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :arm_navigation_msgs-msg
               :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "KinematicSolverInfo" :depends-on ("_package_KinematicSolverInfo"))
    (:file "_package_KinematicSolverInfo" :depends-on ("_package"))
    (:file "PositionIKRequest" :depends-on ("_package_PositionIKRequest"))
    (:file "_package_PositionIKRequest" :depends-on ("_package"))
  ))