; Auto-generated. Do not edit!


(cl:in-package arm_navigation_msgs-msg)


;//! \htmlinclude OrderedCollisionOperations.msg.html

(cl:defclass <OrderedCollisionOperations> (roslisp-msg-protocol:ros-message)
  ((collision_operations
    :reader collision_operations
    :initarg :collision_operations
    :type (cl:vector arm_navigation_msgs-msg:CollisionOperation)
   :initform (cl:make-array 0 :element-type 'arm_navigation_msgs-msg:CollisionOperation :initial-element (cl:make-instance 'arm_navigation_msgs-msg:CollisionOperation))))
)

(cl:defclass OrderedCollisionOperations (<OrderedCollisionOperations>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OrderedCollisionOperations>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OrderedCollisionOperations)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-msg:<OrderedCollisionOperations> is deprecated: use arm_navigation_msgs-msg:OrderedCollisionOperations instead.")))

(cl:ensure-generic-function 'collision_operations-val :lambda-list '(m))
(cl:defmethod collision_operations-val ((m <OrderedCollisionOperations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:collision_operations-val is deprecated.  Use arm_navigation_msgs-msg:collision_operations instead.")
  (collision_operations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OrderedCollisionOperations>) ostream)
  "Serializes a message object of type '<OrderedCollisionOperations>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'collision_operations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'collision_operations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OrderedCollisionOperations>) istream)
  "Deserializes a message object of type '<OrderedCollisionOperations>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'collision_operations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'collision_operations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'arm_navigation_msgs-msg:CollisionOperation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OrderedCollisionOperations>)))
  "Returns string type for a message object of type '<OrderedCollisionOperations>"
  "arm_navigation_msgs/OrderedCollisionOperations")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OrderedCollisionOperations)))
  "Returns string type for a message object of type 'OrderedCollisionOperations"
  "arm_navigation_msgs/OrderedCollisionOperations")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OrderedCollisionOperations>)))
  "Returns md5sum for a message object of type '<OrderedCollisionOperations>"
  "f171f973b185d4d0121795080114026a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OrderedCollisionOperations)))
  "Returns md5sum for a message object of type 'OrderedCollisionOperations"
  "f171f973b185d4d0121795080114026a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OrderedCollisionOperations>)))
  "Returns full string definition for message of type '<OrderedCollisionOperations>"
  (cl:format cl:nil "# A set of collision operations that will be performed in the order they are specified~%CollisionOperation[] collision_operations~%================================================================================~%MSG: arm_navigation_msgs/CollisionOperation~%# A definition of a collision operation~%# E.g. (\"gripper\",COLLISION_SET_ALL,ENABLE) will enable collisions ~%# between the gripper and all objects in the collision space~%~%string object1~%string object2~%string COLLISION_SET_ALL=\"all\"~%string COLLISION_SET_OBJECTS=\"objects\"~%string COLLISION_SET_ATTACHED_OBJECTS=\"attached\"~%~%# The penetration distance to which collisions are allowed. This is 0.0 by default.~%float64 penetration_distance~%~%# Flag that determines whether collisions will be enabled or disabled for the pair of objects specified above~%int32 operation~%int32 DISABLE=0~%int32 ENABLE=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OrderedCollisionOperations)))
  "Returns full string definition for message of type 'OrderedCollisionOperations"
  (cl:format cl:nil "# A set of collision operations that will be performed in the order they are specified~%CollisionOperation[] collision_operations~%================================================================================~%MSG: arm_navigation_msgs/CollisionOperation~%# A definition of a collision operation~%# E.g. (\"gripper\",COLLISION_SET_ALL,ENABLE) will enable collisions ~%# between the gripper and all objects in the collision space~%~%string object1~%string object2~%string COLLISION_SET_ALL=\"all\"~%string COLLISION_SET_OBJECTS=\"objects\"~%string COLLISION_SET_ATTACHED_OBJECTS=\"attached\"~%~%# The penetration distance to which collisions are allowed. This is 0.0 by default.~%float64 penetration_distance~%~%# Flag that determines whether collisions will be enabled or disabled for the pair of objects specified above~%int32 operation~%int32 DISABLE=0~%int32 ENABLE=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OrderedCollisionOperations>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'collision_operations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OrderedCollisionOperations>))
  "Converts a ROS message object to a list"
  (cl:list 'OrderedCollisionOperations
    (cl:cons ':collision_operations (collision_operations msg))
))
