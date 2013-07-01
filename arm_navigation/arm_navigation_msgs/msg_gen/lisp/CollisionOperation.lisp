; Auto-generated. Do not edit!


(cl:in-package arm_navigation_msgs-msg)


;//! \htmlinclude CollisionOperation.msg.html

(cl:defclass <CollisionOperation> (roslisp-msg-protocol:ros-message)
  ((object1
    :reader object1
    :initarg :object1
    :type cl:string
    :initform "")
   (object2
    :reader object2
    :initarg :object2
    :type cl:string
    :initform "")
   (penetration_distance
    :reader penetration_distance
    :initarg :penetration_distance
    :type cl:float
    :initform 0.0)
   (operation
    :reader operation
    :initarg :operation
    :type cl:integer
    :initform 0))
)

(cl:defclass CollisionOperation (<CollisionOperation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CollisionOperation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CollisionOperation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-msg:<CollisionOperation> is deprecated: use arm_navigation_msgs-msg:CollisionOperation instead.")))

(cl:ensure-generic-function 'object1-val :lambda-list '(m))
(cl:defmethod object1-val ((m <CollisionOperation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:object1-val is deprecated.  Use arm_navigation_msgs-msg:object1 instead.")
  (object1 m))

(cl:ensure-generic-function 'object2-val :lambda-list '(m))
(cl:defmethod object2-val ((m <CollisionOperation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:object2-val is deprecated.  Use arm_navigation_msgs-msg:object2 instead.")
  (object2 m))

(cl:ensure-generic-function 'penetration_distance-val :lambda-list '(m))
(cl:defmethod penetration_distance-val ((m <CollisionOperation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:penetration_distance-val is deprecated.  Use arm_navigation_msgs-msg:penetration_distance instead.")
  (penetration_distance m))

(cl:ensure-generic-function 'operation-val :lambda-list '(m))
(cl:defmethod operation-val ((m <CollisionOperation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:operation-val is deprecated.  Use arm_navigation_msgs-msg:operation instead.")
  (operation m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CollisionOperation>)))
    "Constants for message type '<CollisionOperation>"
  '((:COLLISION_SET_ALL . "all")
    (:COLLISION_SET_OBJECTS . "objects")
    (:COLLISION_SET_ATTACHED_OBJECTS . "attached")
    (:DISABLE . 0)
    (:ENABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CollisionOperation)))
    "Constants for message type 'CollisionOperation"
  '((:COLLISION_SET_ALL . "all")
    (:COLLISION_SET_OBJECTS . "objects")
    (:COLLISION_SET_ATTACHED_OBJECTS . "attached")
    (:DISABLE . 0)
    (:ENABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CollisionOperation>) ostream)
  "Serializes a message object of type '<CollisionOperation>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object1))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object2))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'penetration_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'operation)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CollisionOperation>) istream)
  "Deserializes a message object of type '<CollisionOperation>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'penetration_distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'operation) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CollisionOperation>)))
  "Returns string type for a message object of type '<CollisionOperation>"
  "arm_navigation_msgs/CollisionOperation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CollisionOperation)))
  "Returns string type for a message object of type 'CollisionOperation"
  "arm_navigation_msgs/CollisionOperation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CollisionOperation>)))
  "Returns md5sum for a message object of type '<CollisionOperation>"
  "e0cf3073b26bd86266c918a0c779f8a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CollisionOperation)))
  "Returns md5sum for a message object of type 'CollisionOperation"
  "e0cf3073b26bd86266c918a0c779f8a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CollisionOperation>)))
  "Returns full string definition for message of type '<CollisionOperation>"
  (cl:format cl:nil "# A definition of a collision operation~%# E.g. (\"gripper\",COLLISION_SET_ALL,ENABLE) will enable collisions ~%# between the gripper and all objects in the collision space~%~%string object1~%string object2~%string COLLISION_SET_ALL=\"all\"~%string COLLISION_SET_OBJECTS=\"objects\"~%string COLLISION_SET_ATTACHED_OBJECTS=\"attached\"~%~%# The penetration distance to which collisions are allowed. This is 0.0 by default.~%float64 penetration_distance~%~%# Flag that determines whether collisions will be enabled or disabled for the pair of objects specified above~%int32 operation~%int32 DISABLE=0~%int32 ENABLE=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CollisionOperation)))
  "Returns full string definition for message of type 'CollisionOperation"
  (cl:format cl:nil "# A definition of a collision operation~%# E.g. (\"gripper\",COLLISION_SET_ALL,ENABLE) will enable collisions ~%# between the gripper and all objects in the collision space~%~%string object1~%string object2~%string COLLISION_SET_ALL=\"all\"~%string COLLISION_SET_OBJECTS=\"objects\"~%string COLLISION_SET_ATTACHED_OBJECTS=\"attached\"~%~%# The penetration distance to which collisions are allowed. This is 0.0 by default.~%float64 penetration_distance~%~%# Flag that determines whether collisions will be enabled or disabled for the pair of objects specified above~%int32 operation~%int32 DISABLE=0~%int32 ENABLE=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CollisionOperation>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object1))
     4 (cl:length (cl:slot-value msg 'object2))
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CollisionOperation>))
  "Converts a ROS message object to a list"
  (cl:list 'CollisionOperation
    (cl:cons ':object1 (object1 msg))
    (cl:cons ':object2 (object2 msg))
    (cl:cons ':penetration_distance (penetration_distance msg))
    (cl:cons ':operation (operation msg))
))
