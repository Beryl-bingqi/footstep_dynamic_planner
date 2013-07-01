
(cl:in-package :asdf)

(defsystem "humanoid_nav_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "StepTarget" :depends-on ("_package_StepTarget"))
    (:file "_package_StepTarget" :depends-on ("_package"))
  ))