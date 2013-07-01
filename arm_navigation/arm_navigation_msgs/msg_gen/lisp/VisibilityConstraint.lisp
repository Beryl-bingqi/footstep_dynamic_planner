; Auto-generated. Do not edit!


(cl:in-package arm_navigation_msgs-msg)


;//! \htmlinclude VisibilityConstraint.msg.html

(cl:defclass <VisibilityConstraint> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (target
    :reader target
    :initarg :target
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped))
   (sensor_pose
    :reader sensor_pose
    :initarg :sensor_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (absolute_tolerance
    :reader absolute_tolerance
    :initarg :absolute_tolerance
    :type cl:float
    :initform 0.0))
)

(cl:defclass VisibilityConstraint (<VisibilityConstraint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisibilityConstraint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisibilityConstraint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-msg:<VisibilityConstraint> is deprecated: use arm_navigation_msgs-msg:VisibilityConstraint instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VisibilityConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:header-val is deprecated.  Use arm_navigation_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <VisibilityConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:target-val is deprecated.  Use arm_navigation_msgs-msg:target instead.")
  (target m))

(cl:ensure-generic-function 'sensor_pose-val :lambda-list '(m))
(cl:defmethod sensor_pose-val ((m <VisibilityConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:sensor_pose-val is deprecated.  Use arm_navigation_msgs-msg:sensor_pose instead.")
  (sensor_pose m))

(cl:ensure-generic-function 'absolute_tolerance-val :lambda-list '(m))
(cl:defmethod absolute_tolerance-val ((m <VisibilityConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:absolute_tolerance-val is deprecated.  Use arm_navigation_msgs-msg:absolute_tolerance instead.")
  (absolute_tolerance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisibilityConstraint>) ostream)
  "Serializes a message object of type '<VisibilityConstraint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sensor_pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'absolute_tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisibilityConstraint>) istream)
  "Deserializes a message object of type '<VisibilityConstraint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sensor_pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'absolute_tolerance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisibilityConstraint>)))
  "Returns string type for a message object of type '<VisibilityConstraint>"
  "arm_navigation_msgs/VisibilityConstraint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisibilityConstraint)))
  "Returns string type for a message object of type 'VisibilityConstraint"
  "arm_navigation_msgs/VisibilityConstraint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisibilityConstraint>)))
  "Returns md5sum for a message object of type '<VisibilityConstraint>"
  "ab297b6588ea21c1a862067d8447cb08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisibilityConstraint)))
  "Returns md5sum for a message object of type 'VisibilityConstraint"
  "ab297b6588ea21c1a862067d8447cb08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisibilityConstraint>)))
  "Returns full string definition for message of type '<VisibilityConstraint>"
  (cl:format cl:nil "# This message contains the definition of a visibility constraint.~%Header header~%~%# The point stamped target that needs to be kept within view of the sensor~%geometry_msgs/PointStamped target~%~%# The local pose of the frame in which visibility is to be maintained~%# The frame id should represent the robot link to which the sensor is attached~%# The visual axis of the sensor is assumed to be along the X axis of this frame~%geometry_msgs/PoseStamped sensor_pose~%~%# The deviation (in radians) that will be tolerated~%# Constraint error will be measured as the solid angle between the ~%# X axis of the frame defined above and the vector between the origin ~%# of the frame defined above and the target location~%float64 absolute_tolerance~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisibilityConstraint)))
  "Returns full string definition for message of type 'VisibilityConstraint"
  (cl:format cl:nil "# This message contains the definition of a visibility constraint.~%Header header~%~%# The point stamped target that needs to be kept within view of the sensor~%geometry_msgs/PointStamped target~%~%# The local pose of the frame in which visibility is to be maintained~%# The frame id should represent the robot link to which the sensor is attached~%# The visual axis of the sensor is assumed to be along the X axis of this frame~%geometry_msgs/PoseStamped sensor_pose~%~%# The deviation (in radians) that will be tolerated~%# Constraint error will be measured as the solid angle between the ~%# X axis of the frame defined above and the vector between the origin ~%# of the frame defined above and the target location~%float64 absolute_tolerance~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisibilityConstraint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sensor_pose))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisibilityConstraint>))
  "Converts a ROS message object to a list"
  (cl:list 'VisibilityConstraint
    (cl:cons ':header (header msg))
    (cl:cons ':target (target msg))
    (cl:cons ':sensor_pose (sensor_pose msg))
    (cl:cons ':absolute_tolerance (absolute_tolerance msg))
))
