; Auto-generated. Do not edit!


(cl:in-package humanoid_nav_msgs-srv)


;//! \htmlinclude PlanFootsteps-request.msg.html

(cl:defclass <PlanFootsteps-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass PlanFootsteps-request (<PlanFootsteps-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanFootsteps-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanFootsteps-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_nav_msgs-srv:<PlanFootsteps-request> is deprecated: use humanoid_nav_msgs-srv:PlanFootsteps-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <PlanFootsteps-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-srv:start-val is deprecated.  Use humanoid_nav_msgs-srv:start instead.")
  (start m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <PlanFootsteps-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-srv:goal-val is deprecated.  Use humanoid_nav_msgs-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanFootsteps-request>) ostream)
  "Serializes a message object of type '<PlanFootsteps-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanFootsteps-request>) istream)
  "Deserializes a message object of type '<PlanFootsteps-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanFootsteps-request>)))
  "Returns string type for a service object of type '<PlanFootsteps-request>"
  "humanoid_nav_msgs/PlanFootstepsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanFootsteps-request)))
  "Returns string type for a service object of type 'PlanFootsteps-request"
  "humanoid_nav_msgs/PlanFootstepsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanFootsteps-request>)))
  "Returns md5sum for a message object of type '<PlanFootsteps-request>"
  "d183523742b62dfc274a075b0040ea3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanFootsteps-request)))
  "Returns md5sum for a message object of type 'PlanFootsteps-request"
  "d183523742b62dfc274a075b0040ea3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanFootsteps-request>)))
  "Returns full string definition for message of type '<PlanFootsteps-request>"
  (cl:format cl:nil "geometry_msgs/Pose2D start~%geometry_msgs/Pose2D goal~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanFootsteps-request)))
  "Returns full string definition for message of type 'PlanFootsteps-request"
  (cl:format cl:nil "geometry_msgs/Pose2D start~%geometry_msgs/Pose2D goal~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanFootsteps-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanFootsteps-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanFootsteps-request
    (cl:cons ':start (start msg))
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude PlanFootsteps-response.msg.html

(cl:defclass <PlanFootsteps-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (footsteps
    :reader footsteps
    :initarg :footsteps
    :type (cl:vector humanoid_nav_msgs-msg:StepTarget)
   :initform (cl:make-array 0 :element-type 'humanoid_nav_msgs-msg:StepTarget :initial-element (cl:make-instance 'humanoid_nav_msgs-msg:StepTarget)))
   (costs
    :reader costs
    :initarg :costs
    :type cl:float
    :initform 0.0))
)

(cl:defclass PlanFootsteps-response (<PlanFootsteps-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanFootsteps-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanFootsteps-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_nav_msgs-srv:<PlanFootsteps-response> is deprecated: use humanoid_nav_msgs-srv:PlanFootsteps-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <PlanFootsteps-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-srv:result-val is deprecated.  Use humanoid_nav_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'footsteps-val :lambda-list '(m))
(cl:defmethod footsteps-val ((m <PlanFootsteps-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-srv:footsteps-val is deprecated.  Use humanoid_nav_msgs-srv:footsteps instead.")
  (footsteps m))

(cl:ensure-generic-function 'costs-val :lambda-list '(m))
(cl:defmethod costs-val ((m <PlanFootsteps-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-srv:costs-val is deprecated.  Use humanoid_nav_msgs-srv:costs instead.")
  (costs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanFootsteps-response>) ostream)
  "Serializes a message object of type '<PlanFootsteps-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'footsteps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'footsteps))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'costs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanFootsteps-response>) istream)
  "Deserializes a message object of type '<PlanFootsteps-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'footsteps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'footsteps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'humanoid_nav_msgs-msg:StepTarget))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'costs) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanFootsteps-response>)))
  "Returns string type for a service object of type '<PlanFootsteps-response>"
  "humanoid_nav_msgs/PlanFootstepsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanFootsteps-response)))
  "Returns string type for a service object of type 'PlanFootsteps-response"
  "humanoid_nav_msgs/PlanFootstepsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanFootsteps-response>)))
  "Returns md5sum for a message object of type '<PlanFootsteps-response>"
  "d183523742b62dfc274a075b0040ea3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanFootsteps-response)))
  "Returns md5sum for a message object of type 'PlanFootsteps-response"
  "d183523742b62dfc274a075b0040ea3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanFootsteps-response>)))
  "Returns full string definition for message of type '<PlanFootsteps-response>"
  (cl:format cl:nil "bool result~%humanoid_nav_msgs/StepTarget[] footsteps~%float64 costs~%~%~%================================================================================~%MSG: humanoid_nav_msgs/StepTarget~%# Target for a single stepping motion of a humanoid's leg~%~%geometry_msgs/Pose2D pose   # step pose as relative offset to last leg~%uint8 leg                   # which leg to use (left/right, see below)~%~%uint8 right=0               # right leg constant~%uint8 left=1                # left leg constant~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanFootsteps-response)))
  "Returns full string definition for message of type 'PlanFootsteps-response"
  (cl:format cl:nil "bool result~%humanoid_nav_msgs/StepTarget[] footsteps~%float64 costs~%~%~%================================================================================~%MSG: humanoid_nav_msgs/StepTarget~%# Target for a single stepping motion of a humanoid's leg~%~%geometry_msgs/Pose2D pose   # step pose as relative offset to last leg~%uint8 leg                   # which leg to use (left/right, see below)~%~%uint8 right=0               # right leg constant~%uint8 left=1                # left leg constant~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanFootsteps-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'footsteps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanFootsteps-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanFootsteps-response
    (cl:cons ':result (result msg))
    (cl:cons ':footsteps (footsteps msg))
    (cl:cons ':costs (costs msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlanFootsteps)))
  'PlanFootsteps-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlanFootsteps)))
  'PlanFootsteps-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanFootsteps)))
  "Returns string type for a service object of type '<PlanFootsteps>"
  "humanoid_nav_msgs/PlanFootsteps")