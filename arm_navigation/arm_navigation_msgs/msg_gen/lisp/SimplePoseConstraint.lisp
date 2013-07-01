; Auto-generated. Do not edit!


(cl:in-package arm_navigation_msgs-msg)


;//! \htmlinclude SimplePoseConstraint.msg.html

(cl:defclass <SimplePoseConstraint> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (link_name
    :reader link_name
    :initarg :link_name
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (absolute_position_tolerance
    :reader absolute_position_tolerance
    :initarg :absolute_position_tolerance
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (absolute_roll_tolerance
    :reader absolute_roll_tolerance
    :initarg :absolute_roll_tolerance
    :type cl:float
    :initform 0.0)
   (absolute_yaw_tolerance
    :reader absolute_yaw_tolerance
    :initarg :absolute_yaw_tolerance
    :type cl:float
    :initform 0.0)
   (absolute_pitch_tolerance
    :reader absolute_pitch_tolerance
    :initarg :absolute_pitch_tolerance
    :type cl:float
    :initform 0.0)
   (orientation_constraint_type
    :reader orientation_constraint_type
    :initarg :orientation_constraint_type
    :type cl:integer
    :initform 0))
)

(cl:defclass SimplePoseConstraint (<SimplePoseConstraint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimplePoseConstraint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimplePoseConstraint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-msg:<SimplePoseConstraint> is deprecated: use arm_navigation_msgs-msg:SimplePoseConstraint instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SimplePoseConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:header-val is deprecated.  Use arm_navigation_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'link_name-val :lambda-list '(m))
(cl:defmethod link_name-val ((m <SimplePoseConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:link_name-val is deprecated.  Use arm_navigation_msgs-msg:link_name instead.")
  (link_name m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SimplePoseConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:pose-val is deprecated.  Use arm_navigation_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'absolute_position_tolerance-val :lambda-list '(m))
(cl:defmethod absolute_position_tolerance-val ((m <SimplePoseConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:absolute_position_tolerance-val is deprecated.  Use arm_navigation_msgs-msg:absolute_position_tolerance instead.")
  (absolute_position_tolerance m))

(cl:ensure-generic-function 'absolute_roll_tolerance-val :lambda-list '(m))
(cl:defmethod absolute_roll_tolerance-val ((m <SimplePoseConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:absolute_roll_tolerance-val is deprecated.  Use arm_navigation_msgs-msg:absolute_roll_tolerance instead.")
  (absolute_roll_tolerance m))

(cl:ensure-generic-function 'absolute_yaw_tolerance-val :lambda-list '(m))
(cl:defmethod absolute_yaw_tolerance-val ((m <SimplePoseConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:absolute_yaw_tolerance-val is deprecated.  Use arm_navigation_msgs-msg:absolute_yaw_tolerance instead.")
  (absolute_yaw_tolerance m))

(cl:ensure-generic-function 'absolute_pitch_tolerance-val :lambda-list '(m))
(cl:defmethod absolute_pitch_tolerance-val ((m <SimplePoseConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:absolute_pitch_tolerance-val is deprecated.  Use arm_navigation_msgs-msg:absolute_pitch_tolerance instead.")
  (absolute_pitch_tolerance m))

(cl:ensure-generic-function 'orientation_constraint_type-val :lambda-list '(m))
(cl:defmethod orientation_constraint_type-val ((m <SimplePoseConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:orientation_constraint_type-val is deprecated.  Use arm_navigation_msgs-msg:orientation_constraint_type instead.")
  (orientation_constraint_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SimplePoseConstraint>)))
    "Constants for message type '<SimplePoseConstraint>"
  '((:HEADER_FRAME . 0)
    (:LINK_FRAME . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SimplePoseConstraint)))
    "Constants for message type 'SimplePoseConstraint"
  '((:HEADER_FRAME . 0)
    (:LINK_FRAME . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimplePoseConstraint>) ostream)
  "Serializes a message object of type '<SimplePoseConstraint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'link_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'link_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'absolute_position_tolerance) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'absolute_roll_tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'absolute_yaw_tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'absolute_pitch_tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'orientation_constraint_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimplePoseConstraint>) istream)
  "Deserializes a message object of type '<SimplePoseConstraint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'link_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'absolute_position_tolerance) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'absolute_roll_tolerance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'absolute_yaw_tolerance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'absolute_pitch_tolerance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'orientation_constraint_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimplePoseConstraint>)))
  "Returns string type for a message object of type '<SimplePoseConstraint>"
  "arm_navigation_msgs/SimplePoseConstraint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimplePoseConstraint)))
  "Returns string type for a message object of type 'SimplePoseConstraint"
  "arm_navigation_msgs/SimplePoseConstraint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimplePoseConstraint>)))
  "Returns md5sum for a message object of type '<SimplePoseConstraint>"
  "3483d830eb84ecd3059741fd417b30da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimplePoseConstraint)))
  "Returns md5sum for a message object of type 'SimplePoseConstraint"
  "3483d830eb84ecd3059741fd417b30da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimplePoseConstraint>)))
  "Returns full string definition for message of type '<SimplePoseConstraint>"
  (cl:format cl:nil "# This message contains the definition of a simple pose constraint ~%# that specifies the pose for a particular link of the robot and corresponding~%# (absolute) position and orientation tolerances~%~%# The standard ROS message header~%Header header~%~%# The robot link this constraint refers to~%string link_name~%~%# The desired position of the robot link~%geometry_msgs/Pose pose~%~%# Position (absolute) tolerance~%geometry_msgs/Point absolute_position_tolerance~%~%# Orientation (absolute) tolerance~%float64 absolute_roll_tolerance~%float64 absolute_yaw_tolerance~%float64 absolute_pitch_tolerance~%~%int32 orientation_constraint_type~%int32 HEADER_FRAME=0~%int32 LINK_FRAME=1~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimplePoseConstraint)))
  "Returns full string definition for message of type 'SimplePoseConstraint"
  (cl:format cl:nil "# This message contains the definition of a simple pose constraint ~%# that specifies the pose for a particular link of the robot and corresponding~%# (absolute) position and orientation tolerances~%~%# The standard ROS message header~%Header header~%~%# The robot link this constraint refers to~%string link_name~%~%# The desired position of the robot link~%geometry_msgs/Pose pose~%~%# Position (absolute) tolerance~%geometry_msgs/Point absolute_position_tolerance~%~%# Orientation (absolute) tolerance~%float64 absolute_roll_tolerance~%float64 absolute_yaw_tolerance~%float64 absolute_pitch_tolerance~%~%int32 orientation_constraint_type~%int32 HEADER_FRAME=0~%int32 LINK_FRAME=1~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimplePoseConstraint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'link_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'absolute_position_tolerance))
     8
     8
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimplePoseConstraint>))
  "Converts a ROS message object to a list"
  (cl:list 'SimplePoseConstraint
    (cl:cons ':header (header msg))
    (cl:cons ':link_name (link_name msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':absolute_position_tolerance (absolute_position_tolerance msg))
    (cl:cons ':absolute_roll_tolerance (absolute_roll_tolerance msg))
    (cl:cons ':absolute_yaw_tolerance (absolute_yaw_tolerance msg))
    (cl:cons ':absolute_pitch_tolerance (absolute_pitch_tolerance msg))
    (cl:cons ':orientation_constraint_type (orientation_constraint_type msg))
))
