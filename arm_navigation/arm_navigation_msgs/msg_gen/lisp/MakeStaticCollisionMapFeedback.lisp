; Auto-generated. Do not edit!


(cl:in-package arm_navigation_msgs-msg)


;//! \htmlinclude MakeStaticCollisionMapFeedback.msg.html

(cl:defclass <MakeStaticCollisionMapFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MakeStaticCollisionMapFeedback (<MakeStaticCollisionMapFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MakeStaticCollisionMapFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MakeStaticCollisionMapFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-msg:<MakeStaticCollisionMapFeedback> is deprecated: use arm_navigation_msgs-msg:MakeStaticCollisionMapFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MakeStaticCollisionMapFeedback>) ostream)
  "Serializes a message object of type '<MakeStaticCollisionMapFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MakeStaticCollisionMapFeedback>) istream)
  "Deserializes a message object of type '<MakeStaticCollisionMapFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MakeStaticCollisionMapFeedback>)))
  "Returns string type for a message object of type '<MakeStaticCollisionMapFeedback>"
  "arm_navigation_msgs/MakeStaticCollisionMapFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakeStaticCollisionMapFeedback)))
  "Returns string type for a message object of type 'MakeStaticCollisionMapFeedback"
  "arm_navigation_msgs/MakeStaticCollisionMapFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MakeStaticCollisionMapFeedback>)))
  "Returns md5sum for a message object of type '<MakeStaticCollisionMapFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MakeStaticCollisionMapFeedback)))
  "Returns md5sum for a message object of type 'MakeStaticCollisionMapFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MakeStaticCollisionMapFeedback>)))
  "Returns full string definition for message of type '<MakeStaticCollisionMapFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MakeStaticCollisionMapFeedback)))
  "Returns full string definition for message of type 'MakeStaticCollisionMapFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MakeStaticCollisionMapFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MakeStaticCollisionMapFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'MakeStaticCollisionMapFeedback
))
