; Auto-generated. Do not edit!


(cl:in-package arm_navigation_msgs-msg)


;//! \htmlinclude MoveArmFeedback.msg.html

(cl:defclass <MoveArmFeedback> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (time_to_completion
    :reader time_to_completion
    :initarg :time_to_completion
    :type cl:real
    :initform 0))
)

(cl:defclass MoveArmFeedback (<MoveArmFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveArmFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveArmFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-msg:<MoveArmFeedback> is deprecated: use arm_navigation_msgs-msg:MoveArmFeedback instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <MoveArmFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:state-val is deprecated.  Use arm_navigation_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'time_to_completion-val :lambda-list '(m))
(cl:defmethod time_to_completion-val ((m <MoveArmFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:time_to_completion-val is deprecated.  Use arm_navigation_msgs-msg:time_to_completion instead.")
  (time_to_completion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveArmFeedback>) ostream)
  "Serializes a message object of type '<MoveArmFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time_to_completion)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time_to_completion) (cl:floor (cl:slot-value msg 'time_to_completion)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveArmFeedback>) istream)
  "Deserializes a message object of type '<MoveArmFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_to_completion) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveArmFeedback>)))
  "Returns string type for a message object of type '<MoveArmFeedback>"
  "arm_navigation_msgs/MoveArmFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveArmFeedback)))
  "Returns string type for a message object of type 'MoveArmFeedback"
  "arm_navigation_msgs/MoveArmFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveArmFeedback>)))
  "Returns md5sum for a message object of type '<MoveArmFeedback>"
  "321f3feadd0d5c1b7d7135738e673560")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveArmFeedback)))
  "Returns md5sum for a message object of type 'MoveArmFeedback"
  "321f3feadd0d5c1b7d7135738e673560")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveArmFeedback>)))
  "Returns full string definition for message of type '<MoveArmFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# The internal state that the move arm action currently is in~%string state~%~%# Time to completion - this is a combination of requested planning time and trajectory completion time~%duration time_to_completion~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveArmFeedback)))
  "Returns full string definition for message of type 'MoveArmFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# The internal state that the move arm action currently is in~%string state~%~%# Time to completion - this is a combination of requested planning time and trajectory completion time~%duration time_to_completion~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveArmFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveArmFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveArmFeedback
    (cl:cons ':state (state msg))
    (cl:cons ':time_to_completion (time_to_completion msg))
))
