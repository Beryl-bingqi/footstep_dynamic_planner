; Auto-generated. Do not edit!


(cl:in-package arm_navigation_msgs-msg)


;//! \htmlinclude PositionConstraint.msg.html

(cl:defclass <PositionConstraint> (roslisp-msg-protocol:ros-message)
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
   (target_point_offset
    :reader target_point_offset
    :initarg :target_point_offset
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (constraint_region_shape
    :reader constraint_region_shape
    :initarg :constraint_region_shape
    :type arm_navigation_msgs-msg:Shape
    :initform (cl:make-instance 'arm_navigation_msgs-msg:Shape))
   (constraint_region_orientation
    :reader constraint_region_orientation
    :initarg :constraint_region_orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (weight
    :reader weight
    :initarg :weight
    :type cl:float
    :initform 0.0))
)

(cl:defclass PositionConstraint (<PositionConstraint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionConstraint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionConstraint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-msg:<PositionConstraint> is deprecated: use arm_navigation_msgs-msg:PositionConstraint instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PositionConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:header-val is deprecated.  Use arm_navigation_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'link_name-val :lambda-list '(m))
(cl:defmethod link_name-val ((m <PositionConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:link_name-val is deprecated.  Use arm_navigation_msgs-msg:link_name instead.")
  (link_name m))

(cl:ensure-generic-function 'target_point_offset-val :lambda-list '(m))
(cl:defmethod target_point_offset-val ((m <PositionConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:target_point_offset-val is deprecated.  Use arm_navigation_msgs-msg:target_point_offset instead.")
  (target_point_offset m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <PositionConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:position-val is deprecated.  Use arm_navigation_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'constraint_region_shape-val :lambda-list '(m))
(cl:defmethod constraint_region_shape-val ((m <PositionConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:constraint_region_shape-val is deprecated.  Use arm_navigation_msgs-msg:constraint_region_shape instead.")
  (constraint_region_shape m))

(cl:ensure-generic-function 'constraint_region_orientation-val :lambda-list '(m))
(cl:defmethod constraint_region_orientation-val ((m <PositionConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:constraint_region_orientation-val is deprecated.  Use arm_navigation_msgs-msg:constraint_region_orientation instead.")
  (constraint_region_orientation m))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <PositionConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:weight-val is deprecated.  Use arm_navigation_msgs-msg:weight instead.")
  (weight m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionConstraint>) ostream)
  "Serializes a message object of type '<PositionConstraint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'link_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'link_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_point_offset) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'constraint_region_shape) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'constraint_region_orientation) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionConstraint>) istream)
  "Deserializes a message object of type '<PositionConstraint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'link_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_point_offset) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'constraint_region_shape) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'constraint_region_orientation) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'weight) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionConstraint>)))
  "Returns string type for a message object of type '<PositionConstraint>"
  "arm_navigation_msgs/PositionConstraint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionConstraint)))
  "Returns string type for a message object of type 'PositionConstraint"
  "arm_navigation_msgs/PositionConstraint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionConstraint>)))
  "Returns md5sum for a message object of type '<PositionConstraint>"
  "7e3d9697e64b346b9d3cb7311bb88ccb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionConstraint)))
  "Returns md5sum for a message object of type 'PositionConstraint"
  "7e3d9697e64b346b9d3cb7311bb88ccb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionConstraint>)))
  "Returns full string definition for message of type '<PositionConstraint>"
  (cl:format cl:nil "# This message contains the definition of a position constraint.~%Header header~%~%# The robot link this constraint refers to~%string link_name~%~%# The offset (in the link frame) for the target point on the link we are planning for~%geometry_msgs/Point target_point_offset~%~%# The nominal/target position for the point we are planning for~%geometry_msgs/Point position~%~%# The shape of the bounded region that constrains the position of the end-effector~%# This region is always centered at the position defined above~%arm_navigation_msgs/Shape constraint_region_shape~%~%# The orientation of the bounded region that constrains the position of the end-effector. ~%# This allows the specification of non-axis aligned constraints~%geometry_msgs/Quaternion constraint_region_orientation~%~%# Constraint weighting factor - a weight for this constraint~%float64 weight~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: arm_navigation_msgs/Shape~%byte SPHERE=0~%byte BOX=1~%byte CYLINDER=2~%byte MESH=3~%~%byte type~%~%~%#### define sphere, box, cylinder ####~%# the origin of each shape is considered at the shape's center~%~%# for sphere~%# radius := dimensions[0]~%~%# for cylinder~%# radius := dimensions[0]~%# length := dimensions[1]~%# the length is along the Z axis~%~%# for box~%# size_x := dimensions[0]~%# size_y := dimensions[1]~%# size_z := dimensions[2]~%float64[] dimensions~%~%~%#### define mesh ####~%~%# list of triangles; triangle k is defined by tre vertices located~%# at indices triangles[3k], triangles[3k+1], triangles[3k+2]~%int32[] triangles~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionConstraint)))
  "Returns full string definition for message of type 'PositionConstraint"
  (cl:format cl:nil "# This message contains the definition of a position constraint.~%Header header~%~%# The robot link this constraint refers to~%string link_name~%~%# The offset (in the link frame) for the target point on the link we are planning for~%geometry_msgs/Point target_point_offset~%~%# The nominal/target position for the point we are planning for~%geometry_msgs/Point position~%~%# The shape of the bounded region that constrains the position of the end-effector~%# This region is always centered at the position defined above~%arm_navigation_msgs/Shape constraint_region_shape~%~%# The orientation of the bounded region that constrains the position of the end-effector. ~%# This allows the specification of non-axis aligned constraints~%geometry_msgs/Quaternion constraint_region_orientation~%~%# Constraint weighting factor - a weight for this constraint~%float64 weight~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: arm_navigation_msgs/Shape~%byte SPHERE=0~%byte BOX=1~%byte CYLINDER=2~%byte MESH=3~%~%byte type~%~%~%#### define sphere, box, cylinder ####~%# the origin of each shape is considered at the shape's center~%~%# for sphere~%# radius := dimensions[0]~%~%# for cylinder~%# radius := dimensions[0]~%# length := dimensions[1]~%# the length is along the Z axis~%~%# for box~%# size_x := dimensions[0]~%# size_y := dimensions[1]~%# size_z := dimensions[2]~%float64[] dimensions~%~%~%#### define mesh ####~%~%# list of triangles; triangle k is defined by tre vertices located~%# at indices triangles[3k], triangles[3k+1], triangles[3k+2]~%int32[] triangles~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionConstraint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'link_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_point_offset))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'constraint_region_shape))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'constraint_region_orientation))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionConstraint>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionConstraint
    (cl:cons ':header (header msg))
    (cl:cons ':link_name (link_name msg))
    (cl:cons ':target_point_offset (target_point_offset msg))
    (cl:cons ':position (position msg))
    (cl:cons ':constraint_region_shape (constraint_region_shape msg))
    (cl:cons ':constraint_region_orientation (constraint_region_orientation msg))
    (cl:cons ':weight (weight msg))
))
