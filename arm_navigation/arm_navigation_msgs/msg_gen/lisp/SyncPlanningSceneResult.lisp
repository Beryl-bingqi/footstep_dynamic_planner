; Auto-generated. Do not edit!


(cl:in-package arm_navigation_msgs-msg)


;//! \htmlinclude SyncPlanningSceneResult.msg.html

(cl:defclass <SyncPlanningSceneResult> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SyncPlanningSceneResult (<SyncPlanningSceneResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SyncPlanningSceneResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SyncPlanningSceneResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-msg:<SyncPlanningSceneResult> is deprecated: use arm_navigation_msgs-msg:SyncPlanningSceneResult instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <SyncPlanningSceneResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:ok-val is deprecated.  Use arm_navigation_msgs-msg:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SyncPlanningSceneResult>) ostream)
  "Serializes a message object of type '<SyncPlanningSceneResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SyncPlanningSceneResult>) istream)
  "Deserializes a message object of type '<SyncPlanningSceneResult>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SyncPlanningSceneResult>)))
  "Returns string type for a message object of type '<SyncPlanningSceneResult>"
  "arm_navigation_msgs/SyncPlanningSceneResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncPlanningSceneResult)))
  "Returns string type for a message object of type 'SyncPlanningSceneResult"
  "arm_navigation_msgs/SyncPlanningSceneResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SyncPlanningSceneResult>)))
  "Returns md5sum for a message object of type '<SyncPlanningSceneResult>"
  "6f6da3883749771fac40d6deb24a8c02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SyncPlanningSceneResult)))
  "Returns md5sum for a message object of type 'SyncPlanningSceneResult"
  "6f6da3883749771fac40d6deb24a8c02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SyncPlanningSceneResult>)))
  "Returns full string definition for message of type '<SyncPlanningSceneResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%bool ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SyncPlanningSceneResult)))
  "Returns full string definition for message of type 'SyncPlanningSceneResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%bool ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SyncPlanningSceneResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SyncPlanningSceneResult>))
  "Converts a ROS message object to a list"
  (cl:list 'SyncPlanningSceneResult
    (cl:cons ':ok (ok msg))
))
