; Auto-generated. Do not edit!


(cl:in-package arm_navigation_msgs-srv)


;//! \htmlinclude FilterJointTrajectoryWithConstraints-request.msg.html

(cl:defclass <FilterJointTrajectoryWithConstraints-request> (roslisp-msg-protocol:ros-message)
  ((trajectory
    :reader trajectory
    :initarg :trajectory
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory))
   (group_name
    :reader group_name
    :initarg :group_name
    :type cl:string
    :initform "")
   (limits
    :reader limits
    :initarg :limits
    :type (cl:vector arm_navigation_msgs-msg:JointLimits)
   :initform (cl:make-array 0 :element-type 'arm_navigation_msgs-msg:JointLimits :initial-element (cl:make-instance 'arm_navigation_msgs-msg:JointLimits)))
   (start_state
    :reader start_state
    :initarg :start_state
    :type arm_navigation_msgs-msg:RobotState
    :initform (cl:make-instance 'arm_navigation_msgs-msg:RobotState))
   (path_constraints
    :reader path_constraints
    :initarg :path_constraints
    :type arm_navigation_msgs-msg:Constraints
    :initform (cl:make-instance 'arm_navigation_msgs-msg:Constraints))
   (goal_constraints
    :reader goal_constraints
    :initarg :goal_constraints
    :type arm_navigation_msgs-msg:Constraints
    :initform (cl:make-instance 'arm_navigation_msgs-msg:Constraints))
   (allowed_time
    :reader allowed_time
    :initarg :allowed_time
    :type cl:real
    :initform 0))
)

(cl:defclass FilterJointTrajectoryWithConstraints-request (<FilterJointTrajectoryWithConstraints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FilterJointTrajectoryWithConstraints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FilterJointTrajectoryWithConstraints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-srv:<FilterJointTrajectoryWithConstraints-request> is deprecated: use arm_navigation_msgs-srv:FilterJointTrajectoryWithConstraints-request instead.")))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <FilterJointTrajectoryWithConstraints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:trajectory-val is deprecated.  Use arm_navigation_msgs-srv:trajectory instead.")
  (trajectory m))

(cl:ensure-generic-function 'group_name-val :lambda-list '(m))
(cl:defmethod group_name-val ((m <FilterJointTrajectoryWithConstraints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:group_name-val is deprecated.  Use arm_navigation_msgs-srv:group_name instead.")
  (group_name m))

(cl:ensure-generic-function 'limits-val :lambda-list '(m))
(cl:defmethod limits-val ((m <FilterJointTrajectoryWithConstraints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:limits-val is deprecated.  Use arm_navigation_msgs-srv:limits instead.")
  (limits m))

(cl:ensure-generic-function 'start_state-val :lambda-list '(m))
(cl:defmethod start_state-val ((m <FilterJointTrajectoryWithConstraints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:start_state-val is deprecated.  Use arm_navigation_msgs-srv:start_state instead.")
  (start_state m))

(cl:ensure-generic-function 'path_constraints-val :lambda-list '(m))
(cl:defmethod path_constraints-val ((m <FilterJointTrajectoryWithConstraints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:path_constraints-val is deprecated.  Use arm_navigation_msgs-srv:path_constraints instead.")
  (path_constraints m))

(cl:ensure-generic-function 'goal_constraints-val :lambda-list '(m))
(cl:defmethod goal_constraints-val ((m <FilterJointTrajectoryWithConstraints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:goal_constraints-val is deprecated.  Use arm_navigation_msgs-srv:goal_constraints instead.")
  (goal_constraints m))

(cl:ensure-generic-function 'allowed_time-val :lambda-list '(m))
(cl:defmethod allowed_time-val ((m <FilterJointTrajectoryWithConstraints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:allowed_time-val is deprecated.  Use arm_navigation_msgs-srv:allowed_time instead.")
  (allowed_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FilterJointTrajectoryWithConstraints-request>) ostream)
  "Serializes a message object of type '<FilterJointTrajectoryWithConstraints-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'limits))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'limits))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path_constraints) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_constraints) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'allowed_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'allowed_time) (cl:floor (cl:slot-value msg 'allowed_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FilterJointTrajectoryWithConstraints-request>) istream)
  "Deserializes a message object of type '<FilterJointTrajectoryWithConstraints-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'limits) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'limits)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'arm_navigation_msgs-msg:JointLimits))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path_constraints) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_constraints) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'allowed_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FilterJointTrajectoryWithConstraints-request>)))
  "Returns string type for a service object of type '<FilterJointTrajectoryWithConstraints-request>"
  "arm_navigation_msgs/FilterJointTrajectoryWithConstraintsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FilterJointTrajectoryWithConstraints-request)))
  "Returns string type for a service object of type 'FilterJointTrajectoryWithConstraints-request"
  "arm_navigation_msgs/FilterJointTrajectoryWithConstraintsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FilterJointTrajectoryWithConstraints-request>)))
  "Returns md5sum for a message object of type '<FilterJointTrajectoryWithConstraints-request>"
  "8da2437f9cfc1409ce927ce38e556772")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FilterJointTrajectoryWithConstraints-request)))
  "Returns md5sum for a message object of type 'FilterJointTrajectoryWithConstraints-request"
  "8da2437f9cfc1409ce927ce38e556772")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FilterJointTrajectoryWithConstraints-request>)))
  "Returns full string definition for message of type '<FilterJointTrajectoryWithConstraints-request>"
  (cl:format cl:nil "~%trajectory_msgs/JointTrajectory trajectory~%~%~%string group_name~%~%~%~%arm_navigation_msgs/JointLimits[] limits~%~%~%~%~%arm_navigation_msgs/RobotState start_state~%~%~%Constraints path_constraints~%~%~%Constraints goal_constraints~%~%duration allowed_time~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%float64[] positions~%float64[] velocities~%float64[] accelerations~%duration time_from_start~%================================================================================~%MSG: arm_navigation_msgs/JointLimits~%# This message contains information about limits of a particular joint (or control dimension)~%string joint_name~%~%# true if the joint has position limits~%bool has_position_limits~%~%# min and max position limits~%float64 min_position~%float64 max_position~%~%# true if joint has velocity limits~%bool has_velocity_limits~%~%# max velocity limit~%float64 max_velocity~%# min_velocity is assumed to be -max_velocity~%~%# true if joint has acceleration limits~%bool has_acceleration_limits~%# max acceleration limit~%float64 max_acceleration~%# min_acceleration is assumed to be -max_acceleration~%~%================================================================================~%MSG: arm_navigation_msgs/RobotState~%# This message contains information about the robot state, i.e. the positions of its joints and links~%sensor_msgs/JointState joint_state~%arm_navigation_msgs/MultiDOFJointState multi_dof_joint_state~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointState~%#A representation of a multi-dof joint state~%time stamp~%string[] joint_names~%string[] frame_ids~%string[] child_frame_ids~%geometry_msgs/Pose[] poses~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: arm_navigation_msgs/Constraints~%# This message contains a list of motion planning constraints.~%~%arm_navigation_msgs/JointConstraint[] joint_constraints~%arm_navigation_msgs/PositionConstraint[] position_constraints~%arm_navigation_msgs/OrientationConstraint[] orientation_constraints~%arm_navigation_msgs/VisibilityConstraint[] visibility_constraints~%~%================================================================================~%MSG: arm_navigation_msgs/JointConstraint~%# Constrain the position of a joint to be within a certain bound~%string joint_name~%~%# the bound to be achieved is [position - tolerance_below, position + tolerance_above]~%float64 position~%float64 tolerance_above~%float64 tolerance_below~%~%# A weighting factor for this constraint~%float64 weight~%================================================================================~%MSG: arm_navigation_msgs/PositionConstraint~%# This message contains the definition of a position constraint.~%Header header~%~%# The robot link this constraint refers to~%string link_name~%~%# The offset (in the link frame) for the target point on the link we are planning for~%geometry_msgs/Point target_point_offset~%~%# The nominal/target position for the point we are planning for~%geometry_msgs/Point position~%~%# The shape of the bounded region that constrains the position of the end-effector~%# This region is always centered at the position defined above~%arm_navigation_msgs/Shape constraint_region_shape~%~%# The orientation of the bounded region that constrains the position of the end-effector. ~%# This allows the specification of non-axis aligned constraints~%geometry_msgs/Quaternion constraint_region_orientation~%~%# Constraint weighting factor - a weight for this constraint~%float64 weight~%~%================================================================================~%MSG: arm_navigation_msgs/Shape~%byte SPHERE=0~%byte BOX=1~%byte CYLINDER=2~%byte MESH=3~%~%byte type~%~%~%#### define sphere, box, cylinder ####~%# the origin of each shape is considered at the shape's center~%~%# for sphere~%# radius := dimensions[0]~%~%# for cylinder~%# radius := dimensions[0]~%# length := dimensions[1]~%# the length is along the Z axis~%~%# for box~%# size_x := dimensions[0]~%# size_y := dimensions[1]~%# size_z := dimensions[2]~%float64[] dimensions~%~%~%#### define mesh ####~%~%# list of triangles; triangle k is defined by tre vertices located~%# at indices triangles[3k], triangles[3k+1], triangles[3k+2]~%int32[] triangles~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: arm_navigation_msgs/OrientationConstraint~%# This message contains the definition of an orientation constraint.~%Header header~%~%# The robot link this constraint refers to~%string link_name~%~%# The type of the constraint~%int32 type~%int32 LINK_FRAME=0~%int32 HEADER_FRAME=1~%~%# The desired orientation of the robot link specified as a quaternion~%geometry_msgs/Quaternion orientation~%~%# optional RPY error tolerances specified if ~%float64 absolute_roll_tolerance~%float64 absolute_pitch_tolerance~%float64 absolute_yaw_tolerance~%~%# Constraint weighting factor - a weight for this constraint~%float64 weight~%~%================================================================================~%MSG: arm_navigation_msgs/VisibilityConstraint~%# This message contains the definition of a visibility constraint.~%Header header~%~%# The point stamped target that needs to be kept within view of the sensor~%geometry_msgs/PointStamped target~%~%# The local pose of the frame in which visibility is to be maintained~%# The frame id should represent the robot link to which the sensor is attached~%# The visual axis of the sensor is assumed to be along the X axis of this frame~%geometry_msgs/PoseStamped sensor_pose~%~%# The deviation (in radians) that will be tolerated~%# Constraint error will be measured as the solid angle between the ~%# X axis of the frame defined above and the vector between the origin ~%# of the frame defined above and the target location~%float64 absolute_tolerance~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FilterJointTrajectoryWithConstraints-request)))
  "Returns full string definition for message of type 'FilterJointTrajectoryWithConstraints-request"
  (cl:format cl:nil "~%trajectory_msgs/JointTrajectory trajectory~%~%~%string group_name~%~%~%~%arm_navigation_msgs/JointLimits[] limits~%~%~%~%~%arm_navigation_msgs/RobotState start_state~%~%~%Constraints path_constraints~%~%~%Constraints goal_constraints~%~%duration allowed_time~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%float64[] positions~%float64[] velocities~%float64[] accelerations~%duration time_from_start~%================================================================================~%MSG: arm_navigation_msgs/JointLimits~%# This message contains information about limits of a particular joint (or control dimension)~%string joint_name~%~%# true if the joint has position limits~%bool has_position_limits~%~%# min and max position limits~%float64 min_position~%float64 max_position~%~%# true if joint has velocity limits~%bool has_velocity_limits~%~%# max velocity limit~%float64 max_velocity~%# min_velocity is assumed to be -max_velocity~%~%# true if joint has acceleration limits~%bool has_acceleration_limits~%# max acceleration limit~%float64 max_acceleration~%# min_acceleration is assumed to be -max_acceleration~%~%================================================================================~%MSG: arm_navigation_msgs/RobotState~%# This message contains information about the robot state, i.e. the positions of its joints and links~%sensor_msgs/JointState joint_state~%arm_navigation_msgs/MultiDOFJointState multi_dof_joint_state~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointState~%#A representation of a multi-dof joint state~%time stamp~%string[] joint_names~%string[] frame_ids~%string[] child_frame_ids~%geometry_msgs/Pose[] poses~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: arm_navigation_msgs/Constraints~%# This message contains a list of motion planning constraints.~%~%arm_navigation_msgs/JointConstraint[] joint_constraints~%arm_navigation_msgs/PositionConstraint[] position_constraints~%arm_navigation_msgs/OrientationConstraint[] orientation_constraints~%arm_navigation_msgs/VisibilityConstraint[] visibility_constraints~%~%================================================================================~%MSG: arm_navigation_msgs/JointConstraint~%# Constrain the position of a joint to be within a certain bound~%string joint_name~%~%# the bound to be achieved is [position - tolerance_below, position + tolerance_above]~%float64 position~%float64 tolerance_above~%float64 tolerance_below~%~%# A weighting factor for this constraint~%float64 weight~%================================================================================~%MSG: arm_navigation_msgs/PositionConstraint~%# This message contains the definition of a position constraint.~%Header header~%~%# The robot link this constraint refers to~%string link_name~%~%# The offset (in the link frame) for the target point on the link we are planning for~%geometry_msgs/Point target_point_offset~%~%# The nominal/target position for the point we are planning for~%geometry_msgs/Point position~%~%# The shape of the bounded region that constrains the position of the end-effector~%# This region is always centered at the position defined above~%arm_navigation_msgs/Shape constraint_region_shape~%~%# The orientation of the bounded region that constrains the position of the end-effector. ~%# This allows the specification of non-axis aligned constraints~%geometry_msgs/Quaternion constraint_region_orientation~%~%# Constraint weighting factor - a weight for this constraint~%float64 weight~%~%================================================================================~%MSG: arm_navigation_msgs/Shape~%byte SPHERE=0~%byte BOX=1~%byte CYLINDER=2~%byte MESH=3~%~%byte type~%~%~%#### define sphere, box, cylinder ####~%# the origin of each shape is considered at the shape's center~%~%# for sphere~%# radius := dimensions[0]~%~%# for cylinder~%# radius := dimensions[0]~%# length := dimensions[1]~%# the length is along the Z axis~%~%# for box~%# size_x := dimensions[0]~%# size_y := dimensions[1]~%# size_z := dimensions[2]~%float64[] dimensions~%~%~%#### define mesh ####~%~%# list of triangles; triangle k is defined by tre vertices located~%# at indices triangles[3k], triangles[3k+1], triangles[3k+2]~%int32[] triangles~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: arm_navigation_msgs/OrientationConstraint~%# This message contains the definition of an orientation constraint.~%Header header~%~%# The robot link this constraint refers to~%string link_name~%~%# The type of the constraint~%int32 type~%int32 LINK_FRAME=0~%int32 HEADER_FRAME=1~%~%# The desired orientation of the robot link specified as a quaternion~%geometry_msgs/Quaternion orientation~%~%# optional RPY error tolerances specified if ~%float64 absolute_roll_tolerance~%float64 absolute_pitch_tolerance~%float64 absolute_yaw_tolerance~%~%# Constraint weighting factor - a weight for this constraint~%float64 weight~%~%================================================================================~%MSG: arm_navigation_msgs/VisibilityConstraint~%# This message contains the definition of a visibility constraint.~%Header header~%~%# The point stamped target that needs to be kept within view of the sensor~%geometry_msgs/PointStamped target~%~%# The local pose of the frame in which visibility is to be maintained~%# The frame id should represent the robot link to which the sensor is attached~%# The visual axis of the sensor is assumed to be along the X axis of this frame~%geometry_msgs/PoseStamped sensor_pose~%~%# The deviation (in radians) that will be tolerated~%# Constraint error will be measured as the solid angle between the ~%# X axis of the frame defined above and the vector between the origin ~%# of the frame defined above and the target location~%float64 absolute_tolerance~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FilterJointTrajectoryWithConstraints-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
     4 (cl:length (cl:slot-value msg 'group_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'limits) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path_constraints))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_constraints))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FilterJointTrajectoryWithConstraints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FilterJointTrajectoryWithConstraints-request
    (cl:cons ':trajectory (trajectory msg))
    (cl:cons ':group_name (group_name msg))
    (cl:cons ':limits (limits msg))
    (cl:cons ':start_state (start_state msg))
    (cl:cons ':path_constraints (path_constraints msg))
    (cl:cons ':goal_constraints (goal_constraints msg))
    (cl:cons ':allowed_time (allowed_time msg))
))
;//! \htmlinclude FilterJointTrajectoryWithConstraints-response.msg.html

(cl:defclass <FilterJointTrajectoryWithConstraints-response> (roslisp-msg-protocol:ros-message)
  ((trajectory
    :reader trajectory
    :initarg :trajectory
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory))
   (error_code
    :reader error_code
    :initarg :error_code
    :type arm_navigation_msgs-msg:ArmNavigationErrorCodes
    :initform (cl:make-instance 'arm_navigation_msgs-msg:ArmNavigationErrorCodes)))
)

(cl:defclass FilterJointTrajectoryWithConstraints-response (<FilterJointTrajectoryWithConstraints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FilterJointTrajectoryWithConstraints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FilterJointTrajectoryWithConstraints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-srv:<FilterJointTrajectoryWithConstraints-response> is deprecated: use arm_navigation_msgs-srv:FilterJointTrajectoryWithConstraints-response instead.")))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <FilterJointTrajectoryWithConstraints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:trajectory-val is deprecated.  Use arm_navigation_msgs-srv:trajectory instead.")
  (trajectory m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <FilterJointTrajectoryWithConstraints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:error_code-val is deprecated.  Use arm_navigation_msgs-srv:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FilterJointTrajectoryWithConstraints-response>) ostream)
  "Serializes a message object of type '<FilterJointTrajectoryWithConstraints-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_code) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FilterJointTrajectoryWithConstraints-response>) istream)
  "Deserializes a message object of type '<FilterJointTrajectoryWithConstraints-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_code) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FilterJointTrajectoryWithConstraints-response>)))
  "Returns string type for a service object of type '<FilterJointTrajectoryWithConstraints-response>"
  "arm_navigation_msgs/FilterJointTrajectoryWithConstraintsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FilterJointTrajectoryWithConstraints-response)))
  "Returns string type for a service object of type 'FilterJointTrajectoryWithConstraints-response"
  "arm_navigation_msgs/FilterJointTrajectoryWithConstraintsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FilterJointTrajectoryWithConstraints-response>)))
  "Returns md5sum for a message object of type '<FilterJointTrajectoryWithConstraints-response>"
  "8da2437f9cfc1409ce927ce38e556772")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FilterJointTrajectoryWithConstraints-response)))
  "Returns md5sum for a message object of type 'FilterJointTrajectoryWithConstraints-response"
  "8da2437f9cfc1409ce927ce38e556772")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FilterJointTrajectoryWithConstraints-response>)))
  "Returns full string definition for message of type '<FilterJointTrajectoryWithConstraints-response>"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory trajectory~%ArmNavigationErrorCodes error_code~%~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%float64[] positions~%float64[] velocities~%float64[] accelerations~%duration time_from_start~%================================================================================~%MSG: arm_navigation_msgs/ArmNavigationErrorCodes~%int32 val~%~%# overall behavior~%int32 PLANNING_FAILED=-1~%int32 SUCCESS=1~%int32 TIMED_OUT=-2~%~%# start state errors~%int32 START_STATE_IN_COLLISION=-3~%int32 START_STATE_VIOLATES_PATH_CONSTRAINTS=-4~%~%# goal errors~%int32 GOAL_IN_COLLISION=-5~%int32 GOAL_VIOLATES_PATH_CONSTRAINTS=-6~%~%# robot state~%int32 INVALID_ROBOT_STATE=-7~%int32 INCOMPLETE_ROBOT_STATE=-8~%~%# planning request errors~%int32 INVALID_PLANNER_ID=-9~%int32 INVALID_NUM_PLANNING_ATTEMPTS=-10~%int32 INVALID_ALLOWED_PLANNING_TIME=-11~%int32 INVALID_GROUP_NAME=-12~%int32 INVALID_GOAL_JOINT_CONSTRAINTS=-13~%int32 INVALID_GOAL_POSITION_CONSTRAINTS=-14~%int32 INVALID_GOAL_ORIENTATION_CONSTRAINTS=-15~%int32 INVALID_PATH_JOINT_CONSTRAINTS=-16~%int32 INVALID_PATH_POSITION_CONSTRAINTS=-17~%int32 INVALID_PATH_ORIENTATION_CONSTRAINTS=-18~%~%# state/trajectory monitor errors~%int32 INVALID_TRAJECTORY=-19~%int32 INVALID_INDEX=-20~%int32 JOINT_LIMITS_VIOLATED=-21~%int32 PATH_CONSTRAINTS_VIOLATED=-22~%int32 COLLISION_CONSTRAINTS_VIOLATED=-23~%int32 GOAL_CONSTRAINTS_VIOLATED=-24~%int32 JOINTS_NOT_MOVING=-25~%int32 TRAJECTORY_CONTROLLER_FAILED=-26~%~%# system errors~%int32 FRAME_TRANSFORM_FAILURE=-27~%int32 COLLISION_CHECKING_UNAVAILABLE=-28~%int32 ROBOT_STATE_STALE=-29~%int32 SENSOR_INFO_STALE=-30~%~%# kinematics errors~%int32 NO_IK_SOLUTION=-31~%int32 INVALID_LINK_NAME=-32~%int32 IK_LINK_IN_COLLISION=-33~%int32 NO_FK_SOLUTION=-34~%int32 KINEMATICS_STATE_IN_COLLISION=-35~%~%# general errors~%int32 INVALID_TIMEOUT=-36~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FilterJointTrajectoryWithConstraints-response)))
  "Returns full string definition for message of type 'FilterJointTrajectoryWithConstraints-response"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory trajectory~%ArmNavigationErrorCodes error_code~%~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%float64[] positions~%float64[] velocities~%float64[] accelerations~%duration time_from_start~%================================================================================~%MSG: arm_navigation_msgs/ArmNavigationErrorCodes~%int32 val~%~%# overall behavior~%int32 PLANNING_FAILED=-1~%int32 SUCCESS=1~%int32 TIMED_OUT=-2~%~%# start state errors~%int32 START_STATE_IN_COLLISION=-3~%int32 START_STATE_VIOLATES_PATH_CONSTRAINTS=-4~%~%# goal errors~%int32 GOAL_IN_COLLISION=-5~%int32 GOAL_VIOLATES_PATH_CONSTRAINTS=-6~%~%# robot state~%int32 INVALID_ROBOT_STATE=-7~%int32 INCOMPLETE_ROBOT_STATE=-8~%~%# planning request errors~%int32 INVALID_PLANNER_ID=-9~%int32 INVALID_NUM_PLANNING_ATTEMPTS=-10~%int32 INVALID_ALLOWED_PLANNING_TIME=-11~%int32 INVALID_GROUP_NAME=-12~%int32 INVALID_GOAL_JOINT_CONSTRAINTS=-13~%int32 INVALID_GOAL_POSITION_CONSTRAINTS=-14~%int32 INVALID_GOAL_ORIENTATION_CONSTRAINTS=-15~%int32 INVALID_PATH_JOINT_CONSTRAINTS=-16~%int32 INVALID_PATH_POSITION_CONSTRAINTS=-17~%int32 INVALID_PATH_ORIENTATION_CONSTRAINTS=-18~%~%# state/trajectory monitor errors~%int32 INVALID_TRAJECTORY=-19~%int32 INVALID_INDEX=-20~%int32 JOINT_LIMITS_VIOLATED=-21~%int32 PATH_CONSTRAINTS_VIOLATED=-22~%int32 COLLISION_CONSTRAINTS_VIOLATED=-23~%int32 GOAL_CONSTRAINTS_VIOLATED=-24~%int32 JOINTS_NOT_MOVING=-25~%int32 TRAJECTORY_CONTROLLER_FAILED=-26~%~%# system errors~%int32 FRAME_TRANSFORM_FAILURE=-27~%int32 COLLISION_CHECKING_UNAVAILABLE=-28~%int32 ROBOT_STATE_STALE=-29~%int32 SENSOR_INFO_STALE=-30~%~%# kinematics errors~%int32 NO_IK_SOLUTION=-31~%int32 INVALID_LINK_NAME=-32~%int32 IK_LINK_IN_COLLISION=-33~%int32 NO_FK_SOLUTION=-34~%int32 KINEMATICS_STATE_IN_COLLISION=-35~%~%# general errors~%int32 INVALID_TIMEOUT=-36~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FilterJointTrajectoryWithConstraints-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_code))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FilterJointTrajectoryWithConstraints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FilterJointTrajectoryWithConstraints-response
    (cl:cons ':trajectory (trajectory msg))
    (cl:cons ':error_code (error_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FilterJointTrajectoryWithConstraints)))
  'FilterJointTrajectoryWithConstraints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FilterJointTrajectoryWithConstraints)))
  'FilterJointTrajectoryWithConstraints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FilterJointTrajectoryWithConstraints)))
  "Returns string type for a service object of type '<FilterJointTrajectoryWithConstraints>"
  "arm_navigation_msgs/FilterJointTrajectoryWithConstraints")