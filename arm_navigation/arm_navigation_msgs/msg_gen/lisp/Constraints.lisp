; Auto-generated. Do not edit!


(cl:in-package arm_navigation_msgs-msg)


;//! \htmlinclude Constraints.msg.html

(cl:defclass <Constraints> (roslisp-msg-protocol:ros-message)
  ((joint_constraints
    :reader joint_constraints
    :initarg :joint_constraints
    :type (cl:vector arm_navigation_msgs-msg:JointConstraint)
   :initform (cl:make-array 0 :element-type 'arm_navigation_msgs-msg:JointConstraint :initial-element (cl:make-instance 'arm_navigation_msgs-msg:JointConstraint)))
   (position_constraints
    :reader position_constraints
    :initarg :position_constraints
    :type (cl:vector arm_navigation_msgs-msg:PositionConstraint)
   :initform (cl:make-array 0 :element-type 'arm_navigation_msgs-msg:PositionConstraint :initial-element (cl:make-instance 'arm_navigation_msgs-msg:PositionConstraint)))
   (orientation_constraints
    :reader orientation_constraints
    :initarg :orientation_constraints
    :type (cl:vector arm_navigation_msgs-msg:OrientationConstraint)
   :initform (cl:make-array 0 :element-type 'arm_navigation_msgs-msg:OrientationConstraint :initial-element (cl:make-instance 'arm_navigation_msgs-msg:OrientationConstraint)))
   (visibility_constraints
    :reader visibility_constraints
    :initarg :visibility_constraints
    :type (cl:vector arm_navigation_msgs-msg:VisibilityConstraint)
   :initform (cl:make-array 0 :element-type 'arm_navigation_msgs-msg:VisibilityConstraint :initial-element (cl:make-instance 'arm_navigation_msgs-msg:VisibilityConstraint))))
)

(cl:defclass Constraints (<Constraints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Constraints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Constraints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-msg:<Constraints> is deprecated: use arm_navigation_msgs-msg:Constraints instead.")))

(cl:ensure-generic-function 'joint_constraints-val :lambda-list '(m))
(cl:defmethod joint_constraints-val ((m <Constraints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:joint_constraints-val is deprecated.  Use arm_navigation_msgs-msg:joint_constraints instead.")
  (joint_constraints m))

(cl:ensure-generic-function 'position_constraints-val :lambda-list '(m))
(cl:defmethod position_constraints-val ((m <Constraints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:position_constraints-val is deprecated.  Use arm_navigation_msgs-msg:position_constraints instead.")
  (position_constraints m))

(cl:ensure-generic-function 'orientation_constraints-val :lambda-list '(m))
(cl:defmethod orientation_constraints-val ((m <Constraints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:orientation_constraints-val is deprecated.  Use arm_navigation_msgs-msg:orientation_constraints instead.")
  (orientation_constraints m))

(cl:ensure-generic-function 'visibility_constraints-val :lambda-list '(m))
(cl:defmethod visibility_constraints-val ((m <Constraints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:visibility_constraints-val is deprecated.  Use arm_navigation_msgs-msg:visibility_constraints instead.")
  (visibility_constraints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Constraints>) ostream)
  "Serializes a message object of type '<Constraints>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_constraints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joint_constraints))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'position_constraints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'position_constraints))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'orientation_constraints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'orientation_constraints))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'visibility_constraints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'visibility_constraints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Constraints>) istream)
  "Deserializes a message object of type '<Constraints>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_constraints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_constraints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'arm_navigation_msgs-msg:JointConstraint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position_constraints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'position_constraints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'arm_navigation_msgs-msg:PositionConstraint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'orientation_constraints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'orientation_constraints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'arm_navigation_msgs-msg:OrientationConstraint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'visibility_constraints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'visibility_constraints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'arm_navigation_msgs-msg:VisibilityConstraint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Constraints>)))
  "Returns string type for a message object of type '<Constraints>"
  "arm_navigation_msgs/Constraints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Constraints)))
  "Returns string type for a message object of type 'Constraints"
  "arm_navigation_msgs/Constraints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Constraints>)))
  "Returns md5sum for a message object of type '<Constraints>"
  "fe6b6f09c687fd46c05a2de4ca18378a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Constraints)))
  "Returns md5sum for a message object of type 'Constraints"
  "fe6b6f09c687fd46c05a2de4ca18378a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Constraints>)))
  "Returns full string definition for message of type '<Constraints>"
  (cl:format cl:nil "# This message contains a list of motion planning constraints.~%~%arm_navigation_msgs/JointConstraint[] joint_constraints~%arm_navigation_msgs/PositionConstraint[] position_constraints~%arm_navigation_msgs/OrientationConstraint[] orientation_constraints~%arm_navigation_msgs/VisibilityConstraint[] visibility_constraints~%~%================================================================================~%MSG: arm_navigation_msgs/JointConstraint~%# Constrain the position of a joint to be within a certain bound~%string joint_name~%~%# the bound to be achieved is [position - tolerance_below, position + tolerance_above]~%float64 position~%float64 tolerance_above~%float64 tolerance_below~%~%# A weighting factor for this constraint~%float64 weight~%================================================================================~%MSG: arm_navigation_msgs/PositionConstraint~%# This message contains the definition of a position constraint.~%Header header~%~%# The robot link this constraint refers to~%string link_name~%~%# The offset (in the link frame) for the target point on the link we are planning for~%geometry_msgs/Point target_point_offset~%~%# The nominal/target position for the point we are planning for~%geometry_msgs/Point position~%~%# The shape of the bounded region that constrains the position of the end-effector~%# This region is always centered at the position defined above~%arm_navigation_msgs/Shape constraint_region_shape~%~%# The orientation of the bounded region that constrains the position of the end-effector. ~%# This allows the specification of non-axis aligned constraints~%geometry_msgs/Quaternion constraint_region_orientation~%~%# Constraint weighting factor - a weight for this constraint~%float64 weight~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: arm_navigation_msgs/Shape~%byte SPHERE=0~%byte BOX=1~%byte CYLINDER=2~%byte MESH=3~%~%byte type~%~%~%#### define sphere, box, cylinder ####~%# the origin of each shape is considered at the shape's center~%~%# for sphere~%# radius := dimensions[0]~%~%# for cylinder~%# radius := dimensions[0]~%# length := dimensions[1]~%# the length is along the Z axis~%~%# for box~%# size_x := dimensions[0]~%# size_y := dimensions[1]~%# size_z := dimensions[2]~%float64[] dimensions~%~%~%#### define mesh ####~%~%# list of triangles; triangle k is defined by tre vertices located~%# at indices triangles[3k], triangles[3k+1], triangles[3k+2]~%int32[] triangles~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: arm_navigation_msgs/OrientationConstraint~%# This message contains the definition of an orientation constraint.~%Header header~%~%# The robot link this constraint refers to~%string link_name~%~%# The type of the constraint~%int32 type~%int32 LINK_FRAME=0~%int32 HEADER_FRAME=1~%~%# The desired orientation of the robot link specified as a quaternion~%geometry_msgs/Quaternion orientation~%~%# optional RPY error tolerances specified if ~%float64 absolute_roll_tolerance~%float64 absolute_pitch_tolerance~%float64 absolute_yaw_tolerance~%~%# Constraint weighting factor - a weight for this constraint~%float64 weight~%~%================================================================================~%MSG: arm_navigation_msgs/VisibilityConstraint~%# This message contains the definition of a visibility constraint.~%Header header~%~%# The point stamped target that needs to be kept within view of the sensor~%geometry_msgs/PointStamped target~%~%# The local pose of the frame in which visibility is to be maintained~%# The frame id should represent the robot link to which the sensor is attached~%# The visual axis of the sensor is assumed to be along the X axis of this frame~%geometry_msgs/PoseStamped sensor_pose~%~%# The deviation (in radians) that will be tolerated~%# Constraint error will be measured as the solid angle between the ~%# X axis of the frame defined above and the vector between the origin ~%# of the frame defined above and the target location~%float64 absolute_tolerance~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Constraints)))
  "Returns full string definition for message of type 'Constraints"
  (cl:format cl:nil "# This message contains a list of motion planning constraints.~%~%arm_navigation_msgs/JointConstraint[] joint_constraints~%arm_navigation_msgs/PositionConstraint[] position_constraints~%arm_navigation_msgs/OrientationConstraint[] orientation_constraints~%arm_navigation_msgs/VisibilityConstraint[] visibility_constraints~%~%================================================================================~%MSG: arm_navigation_msgs/JointConstraint~%# Constrain the position of a joint to be within a certain bound~%string joint_name~%~%# the bound to be achieved is [position - tolerance_below, position + tolerance_above]~%float64 position~%float64 tolerance_above~%float64 tolerance_below~%~%# A weighting factor for this constraint~%float64 weight~%================================================================================~%MSG: arm_navigation_msgs/PositionConstraint~%# This message contains the definition of a position constraint.~%Header header~%~%# The robot link this constraint refers to~%string link_name~%~%# The offset (in the link frame) for the target point on the link we are planning for~%geometry_msgs/Point target_point_offset~%~%# The nominal/target position for the point we are planning for~%geometry_msgs/Point position~%~%# The shape of the bounded region that constrains the position of the end-effector~%# This region is always centered at the position defined above~%arm_navigation_msgs/Shape constraint_region_shape~%~%# The orientation of the bounded region that constrains the position of the end-effector. ~%# This allows the specification of non-axis aligned constraints~%geometry_msgs/Quaternion constraint_region_orientation~%~%# Constraint weighting factor - a weight for this constraint~%float64 weight~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: arm_navigation_msgs/Shape~%byte SPHERE=0~%byte BOX=1~%byte CYLINDER=2~%byte MESH=3~%~%byte type~%~%~%#### define sphere, box, cylinder ####~%# the origin of each shape is considered at the shape's center~%~%# for sphere~%# radius := dimensions[0]~%~%# for cylinder~%# radius := dimensions[0]~%# length := dimensions[1]~%# the length is along the Z axis~%~%# for box~%# size_x := dimensions[0]~%# size_y := dimensions[1]~%# size_z := dimensions[2]~%float64[] dimensions~%~%~%#### define mesh ####~%~%# list of triangles; triangle k is defined by tre vertices located~%# at indices triangles[3k], triangles[3k+1], triangles[3k+2]~%int32[] triangles~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: arm_navigation_msgs/OrientationConstraint~%# This message contains the definition of an orientation constraint.~%Header header~%~%# The robot link this constraint refers to~%string link_name~%~%# The type of the constraint~%int32 type~%int32 LINK_FRAME=0~%int32 HEADER_FRAME=1~%~%# The desired orientation of the robot link specified as a quaternion~%geometry_msgs/Quaternion orientation~%~%# optional RPY error tolerances specified if ~%float64 absolute_roll_tolerance~%float64 absolute_pitch_tolerance~%float64 absolute_yaw_tolerance~%~%# Constraint weighting factor - a weight for this constraint~%float64 weight~%~%================================================================================~%MSG: arm_navigation_msgs/VisibilityConstraint~%# This message contains the definition of a visibility constraint.~%Header header~%~%# The point stamped target that needs to be kept within view of the sensor~%geometry_msgs/PointStamped target~%~%# The local pose of the frame in which visibility is to be maintained~%# The frame id should represent the robot link to which the sensor is attached~%# The visual axis of the sensor is assumed to be along the X axis of this frame~%geometry_msgs/PoseStamped sensor_pose~%~%# The deviation (in radians) that will be tolerated~%# Constraint error will be measured as the solid angle between the ~%# X axis of the frame defined above and the vector between the origin ~%# of the frame defined above and the target location~%float64 absolute_tolerance~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Constraints>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_constraints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'position_constraints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'orientation_constraints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'visibility_constraints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Constraints>))
  "Converts a ROS message object to a list"
  (cl:list 'Constraints
    (cl:cons ':joint_constraints (joint_constraints msg))
    (cl:cons ':position_constraints (position_constraints msg))
    (cl:cons ':orientation_constraints (orientation_constraints msg))
    (cl:cons ':visibility_constraints (visibility_constraints msg))
))
