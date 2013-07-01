
(cl:in-package :asdf)

(defsystem "arm_navigation_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :arm_navigation_msgs-msg
               :trajectory_msgs-msg
)
  :components ((:file "_package")
    (:file "GetMotionPlan" :depends-on ("_package_GetMotionPlan"))
    (:file "_package_GetMotionPlan" :depends-on ("_package"))
    (:file "SetPlanningSceneDiff" :depends-on ("_package_SetPlanningSceneDiff"))
    (:file "_package_SetPlanningSceneDiff" :depends-on ("_package"))
    (:file "FilterJointTrajectory" :depends-on ("_package_FilterJointTrajectory"))
    (:file "_package_FilterJointTrajectory" :depends-on ("_package"))
    (:file "GetRobotState" :depends-on ("_package_GetRobotState"))
    (:file "_package_GetRobotState" :depends-on ("_package"))
    (:file "GetCollisionObjects" :depends-on ("_package_GetCollisionObjects"))
    (:file "_package_GetCollisionObjects" :depends-on ("_package"))
    (:file "GetPlanningScene" :depends-on ("_package_GetPlanningScene"))
    (:file "_package_GetPlanningScene" :depends-on ("_package"))
    (:file "GetRobotTrajectoryValidity" :depends-on ("_package_GetRobotTrajectoryValidity"))
    (:file "_package_GetRobotTrajectoryValidity" :depends-on ("_package"))
    (:file "GetJointTrajectoryValidity" :depends-on ("_package_GetJointTrajectoryValidity"))
    (:file "_package_GetJointTrajectoryValidity" :depends-on ("_package"))
    (:file "FilterJointTrajectoryWithConstraints" :depends-on ("_package_FilterJointTrajectoryWithConstraints"))
    (:file "_package_FilterJointTrajectoryWithConstraints" :depends-on ("_package"))
    (:file "GetStateValidity" :depends-on ("_package_GetStateValidity"))
    (:file "_package_GetStateValidity" :depends-on ("_package"))
  ))