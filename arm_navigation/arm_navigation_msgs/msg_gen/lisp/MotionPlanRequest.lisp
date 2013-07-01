; Auto-generated. Do not edit!


(cl:in-package arm_navigation_msgs-msg)


;//! \htmlinclude MotionPlanRequest.msg.html

(cl:defclass <MotionPlanRequest> (roslisp-msg-protocol:ros-message)
  ((workspace_parameters
    :reader workspace_parameters
    :initarg :workspace_parameters
    :type arm_navigation_msgs-msg:WorkspaceParameters
    :initform (cl:make-instance 'arm_navigation_msgs-msg:WorkspaceParameters))
   (start_state
    :reader start_state
    :initarg :start_state
    :type arm_navigation_msgs-msg:RobotState
    :initform (cl:make-instance 'arm_navigation_msgs-msg:RobotState))
   (goal_constraints
    :reader goal_constraints
    :initarg :goal_constraints
    :type arm_navigation_msgs-msg:Constraints
    :initform (cl:make-instance 'arm_navigation_msgs-msg:Constraints))
   (path_constraints
    :reader path_constraints
    :initarg :path_constraints
    :type arm_navigation_msgs-msg:Constraints
    :initform (cl:make-instance 'arm_navigation_msgs-msg:Constraints))
   (planner_id
    :reader planner_id
    :initarg :planner_id
    :type cl:string
    :initform "")
   (group_name
    :reader group_name
    :initarg :group_name
    :type cl:string
    :initform "")
   (num_planning_attempts
    :reader num_planning_attempts
    :initarg :num_planning_attempts
    :type cl:integer
    :initform 0)
   (allowed_planning_time
    :reader allowed_planning_time
    :initarg :allowed_planning_time
    :type cl:real
    :initform 0)
   (expected_path_duration
    :reader expected_path_duration
    :initarg :expected_path_duration
    :type cl:real
    :initform 0)
   (expected_path_dt
    :reader expected_path_dt
    :initarg :expected_path_dt
    :type cl:real
    :initform 0))
)

(cl:defclass MotionPlanRequest (<MotionPlanRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotionPlanRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotionPlanRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-msg:<MotionPlanRequest> is deprecated: use arm_navigation_msgs-msg:MotionPlanRequest instead.")))

(cl:ensure-generic-function 'workspace_parameters-val :lambda-list '(m))
(cl:defmethod workspace_parameters-val ((m <MotionPlanRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:workspace_parameters-val is deprecated.  Use arm_navigation_msgs-msg:workspace_parameters instead.")
  (workspace_parameters m))

(cl:ensure-generic-function 'start_state-val :lambda-list '(m))
(cl:defmethod start_state-val ((m <MotionPlanRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:start_state-val is deprecated.  Use arm_navigation_msgs-msg:start_state instead.")
  (start_state m))

(cl:ensure-generic-function 'goal_constraints-val :lambda-list '(m))
(cl:defmethod goal_constraints-val ((m <MotionPlanRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:goal_constraints-val is deprecated.  Use arm_navigation_msgs-msg:goal_constraints instead.")
  (goal_constraints m))

(cl:ensure-generic-function 'path_constraints-val :lambda-list '(m))
(cl:defmethod path_constraints-val ((m <MotionPlanRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:path_constraints-val is deprecated.  Use arm_navigation_msgs-msg:path_constraints instead.")
  (path_constraints m))

(cl:ensure-generic-function 'planner_id-val :lambda-list '(m))
(cl:defmethod planner_id-val ((m <MotionPlanRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:planner_id-val is deprecated.  Use arm_navigation_msgs-msg:planner_id instead.")
  (planner_id m))

(cl:ensure-generic-function 'group_name-val :lambda-list '(m))
(cl:defmethod group_name-val ((m <MotionPlanRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:group_name-val is deprecated.  Use arm_navigation_msgs-msg:group_name instead.")
  (group_name m))

(cl:ensure-generic-function 'num_planning_attempts-val :lambda-list '(m))
(cl:defmethod num_planning_attempts-val ((m <MotionPlanRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:num_planning_attempts-val is deprecated.  Use arm_navigation_msgs-msg:num_planning_attempts instead.")
  (num_planning_attempts m))

(cl:ensure-generic-function 'allowed_planning_time-val :lambda-list '(m))
(cl:defmethod allowed_planning_time-val ((m <MotionPlanRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:allowed_planning_time-val is deprecated.  Use arm_navigation_msgs-msg:allowed_planning_time instead.")
  (allowed_planning_time m))

(cl:ensure-generic-function 'expected_path_duration-val :lambda-list '(m))
(cl:defmethod expected_path_duration-val ((m <MotionPlanRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:expected_path_duration-val is deprecated.  Use arm_navigation_msgs-msg:expected_path_duration instead.")
  (expected_path_duration m))

(cl:ensure-generic-function 'expected_path_dt-val :lambda-list '(m))
(cl:defmethod expected_path_dt-val ((m <MotionPlanRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:expected_path_dt-val is deprecated.  Use arm_navigation_msgs-msg:expected_path_dt instead.")
  (expected_path_dt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotionPlanRequest>) ostream)
  "Serializes a message object of type '<MotionPlanRequest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'workspace_parameters) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_constraints) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path_constraints) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'planner_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'planner_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group_name))
  (cl:let* ((signed (cl:slot-value msg 'num_planning_attempts)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'allowed_planning_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'allowed_planning_time) (cl:floor (cl:slot-value msg 'allowed_planning_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'expected_path_duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'expected_path_duration) (cl:floor (cl:slot-value msg 'expected_path_duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'expected_path_dt)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'expected_path_dt) (cl:floor (cl:slot-value msg 'expected_path_dt)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotionPlanRequest>) istream)
  "Deserializes a message object of type '<MotionPlanRequest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'workspace_parameters) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_constraints) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path_constraints) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planner_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'planner_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_planning_attempts) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'allowed_planning_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'expected_path_duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'expected_path_dt) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotionPlanRequest>)))
  "Returns string type for a message object of type '<MotionPlanRequest>"
  "arm_navigation_msgs/MotionPlanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotionPlanRequest)))
  "Returns string type for a message object of type 'MotionPlanRequest"
  "arm_navigation_msgs/MotionPlanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotionPlanRequest>)))
  "Returns md5sum for a message object of type '<MotionPlanRequest>"
  "75408e881303c6ad5069bd5df65ecb00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotionPlanRequest)))
  "Returns md5sum for a message object of type 'MotionPlanRequest"
  "75408e881303c6ad5069bd5df65ecb00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotionPlanRequest>)))
  "Returns full string definition for message of type '<MotionPlanRequest>"
  (cl:format cl:nil "# This service contains the definition for a request to the motion~%# planner and the output it provides~%~%# Parameters for the workspace that the planner should work inside~%arm_navigation_msgs/WorkspaceParameters workspace_parameters~%~%# Starting state updates. If certain joints should be considered~%# at positions other than the current ones, these positions should~%# be set here~%arm_navigation_msgs/RobotState start_state~%~%# The goal state for the model to plan for. The goal is achieved~%# if all constraints are satisfied~%arm_navigation_msgs/Constraints goal_constraints~%~%# No state at any point along the path in the produced motion plan will violate these constraints~%arm_navigation_msgs/Constraints path_constraints~%~%# The name of the motion planner to use. If no name is specified,~%# a default motion planner will be used~%string planner_id~%~%# The name of the group of joints on which this planner is operating~%string group_name~%~%# The number of times this plan is to be computed. Shortest solution~%# will be reported.~%int32 num_planning_attempts~%~%# The maximum amount of time the motion planner is allowed to plan for~%duration allowed_planning_time~%~%# An expected path duration (in seconds) along with an expected discretization of the path allows the planner to determine the discretization of the trajectory that it returns~%duration expected_path_duration~%duration expected_path_dt~%~%================================================================================~%MSG: arm_navigation_msgs/WorkspaceParameters~%# This message contains a set of parameters useful in~%# setting up the workspace for planning~%arm_navigation_msgs/Shape  workspace_region_shape~%geometry_msgs/PoseStamped    workspace_region_pose~%~%~%================================================================================~%MSG: arm_navigation_msgs/Shape~%byte SPHERE=0~%byte BOX=1~%byte CYLINDER=2~%byte MESH=3~%~%byte type~%~%~%#### define sphere, box, cylinder ####~%# the origin of each shape is considered at the shape's center~%~%# for sphere~%# radius := dimensions[0]~%~%# for cylinder~%# radius := dimensions[0]~%# length := dimensions[1]~%# the length is along the Z axis~%~%# for box~%# size_x := dimensions[0]~%# size_y := dimensions[1]~%# size_z := dimensions[2]~%float64[] dimensions~%~%~%#### define mesh ####~%~%# list of triangles; triangle k is defined by tre vertices located~%# at indices triangles[3k], triangles[3k+1], triangles[3k+2]~%int32[] triangles~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: arm_navigation_msgs/RobotState~%# This message contains information about the robot state, i.e. the positions of its joints and links~%sensor_msgs/JointState joint_state~%arm_navigation_msgs/MultiDOFJointState multi_dof_joint_state~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointState~%#A representation of a multi-dof joint state~%time stamp~%string[] joint_names~%string[] frame_ids~%string[] child_frame_ids~%geometry_msgs/Pose[] poses~%~%================================================================================~%MSG: arm_navigation_msgs/Constraints~%# This message contains a list of motion planning constraints.~%~%arm_navigation_msgs/JointConstraint[] joint_constraints~%arm_navigation_msgs/PositionConstraint[] position_constraints~%arm_navigation_msgs/OrientationConstraint[] orientation_constraints~%arm_navigation_msgs/VisibilityConstraint[] visibility_constraints~%~%================================================================================~%MSG: arm_navigation_msgs/JointConstraint~%# Constrain the position of a joint to be within a certain bound~%string joint_name~%~%# the bound to be achieved is [position - tolerance_below, position + tolerance_above]~%float64 position~%float64 tolerance_above~%float64 tolerance_below~%~%# A weighting factor for this constraint~%float64 weight~%================================================================================~%MSG: arm_navigation_msgs/PositionConstraint~%# This message contains the definition of a position constraint.~%Header header~%~%# The robot link this constraint refers to~%string link_name~%~%# The offset (in the link frame) for the target point on the link we are planning for~%geometry_msgs/Point target_point_offset~%~%# The nominal/target position for the point we are planning for~%geometry_msgs/Point position~%~%# The shape of the bounded region that constrains the position of the end-effector~%# This region is always centered at the position defined above~%arm_navigation_msgs/Shape constraint_region_shape~%~%# The orientation of the bounded region that constrains the position of the end-effector. ~%# This allows the specification of non-axis aligned constraints~%geometry_msgs/Quaternion constraint_region_orientation~%~%# Constraint weighting factor - a weight for this constraint~%float64 weight~%~%================================================================================~%MSG: arm_navigation_msgs/OrientationConstraint~%# This message contains the definition of an orientation constraint.~%Header header~%~%# The robot link this constraint refers to~%string link_name~%~%# The type of the constraint~%int32 type~%int32 LINK_FRAME=0~%int32 HEADER_FRAME=1~%~%# The desired orientation of the robot link specified as a quaternion~%geometry_msgs/Quaternion orientation~%~%# optional RPY error tolerances specified if ~%float64 absolute_roll_tolerance~%float64 absolute_pitch_tolerance~%float64 absolute_yaw_tolerance~%~%# Constraint weighting factor - a weight for this constraint~%float64 weight~%~%================================================================================~%MSG: arm_navigation_msgs/VisibilityConstraint~%# This message contains the definition of a visibility constraint.~%Header header~%~%# The point stamped target that needs to be kept within view of the sensor~%geometry_msgs/PointStamped target~%~%# The local pose of the frame in which visibility is to be maintained~%# The frame id should represent the robot link to which the sensor is attached~%# The visual axis of the sensor is assumed to be along the X axis of this frame~%geometry_msgs/PoseStamped sensor_pose~%~%# The deviation (in radians) that will be tolerated~%# Constraint error will be measured as the solid angle between the ~%# X axis of the frame defined above and the vector between the origin ~%# of the frame defined above and the target location~%float64 absolute_tolerance~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotionPlanRequest)))
  "Returns full string definition for message of type 'MotionPlanRequest"
  (cl:format cl:nil "# This service contains the definition for a request to the motion~%# planner and the output it provides~%~%# Parameters for the workspace that the planner should work inside~%arm_navigation_msgs/WorkspaceParameters workspace_parameters~%~%# Starting state updates. If certain joints should be considered~%# at positions other than the current ones, these positions should~%# be set here~%arm_navigation_msgs/RobotState start_state~%~%# The goal state for the model to plan for. The goal is achieved~%# if all constraints are satisfied~%arm_navigation_msgs/Constraints goal_constraints~%~%# No state at any point along the path in the produced motion plan will violate these constraints~%arm_navigation_msgs/Constraints path_constraints~%~%# The name of the motion planner to use. If no name is specified,~%# a default motion planner will be used~%string planner_id~%~%# The name of the group of joints on which this planner is operating~%string group_name~%~%# The number of times this plan is to be computed. Shortest solution~%# will be reported.~%int32 num_planning_attempts~%~%# The maximum amount of time the motion planner is allowed to plan for~%duration allowed_planning_time~%~%# An expected path duration (in seconds) along with an expected discretization of the path allows the planner to determine the discretization of the trajectory that it returns~%duration expected_path_duration~%duration expected_path_dt~%~%================================================================================~%MSG: arm_navigation_msgs/WorkspaceParameters~%# This message contains a set of parameters useful in~%# setting up the workspace for planning~%arm_navigation_msgs/Shape  workspace_region_shape~%geometry_msgs/PoseStamped    workspace_region_pose~%~%~%================================================================================~%MSG: arm_navigation_msgs/Shape~%byte SPHERE=0~%byte BOX=1~%byte CYLINDER=2~%byte MESH=3~%~%byte type~%~%~%#### define sphere, box, cylinder ####~%# the origin of each shape is considered at the shape's center~%~%# for sphere~%# radius := dimensions[0]~%~%# for cylinder~%# radius := dimensions[0]~%# length := dimensions[1]~%# the length is along the Z axis~%~%# for box~%# size_x := dimensions[0]~%# size_y := dimensions[1]~%# size_z := dimensions[2]~%float64[] dimensions~%~%~%#### define mesh ####~%~%# list of triangles; triangle k is defined by tre vertices located~%# at indices triangles[3k], triangles[3k+1], triangles[3k+2]~%int32[] triangles~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: arm_navigation_msgs/RobotState~%# This message contains information about the robot state, i.e. the positions of its joints and links~%sensor_msgs/JointState joint_state~%arm_navigation_msgs/MultiDOFJointState multi_dof_joint_state~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointState~%#A representation of a multi-dof joint state~%time stamp~%string[] joint_names~%string[] frame_ids~%string[] child_frame_ids~%geometry_msgs/Pose[] poses~%~%================================================================================~%MSG: arm_navigation_msgs/Constraints~%# This message contains a list of motion planning constraints.~%~%arm_navigation_msgs/JointConstraint[] joint_constraints~%arm_navigation_msgs/PositionConstraint[] position_constraints~%arm_navigation_msgs/OrientationConstraint[] orientation_constraints~%arm_navigation_msgs/VisibilityConstraint[] visibility_constraints~%~%================================================================================~%MSG: arm_navigation_msgs/JointConstraint~%# Constrain the position of a joint to be within a certain bound~%string joint_name~%~%# the bound to be achieved is [position - tolerance_below, position + tolerance_above]~%float64 position~%float64 tolerance_above~%float64 tolerance_below~%~%# A weighting factor for this constraint~%float64 weight~%================================================================================~%MSG: arm_navigation_msgs/PositionConstraint~%# This message contains the definition of a position constraint.~%Header header~%~%# The robot link this constraint refers to~%string link_name~%~%# The offset (in the link frame) for the target point on the link we are planning for~%geometry_msgs/Point target_point_offset~%~%# The nominal/target position for the point we are planning for~%geometry_msgs/Point position~%~%# The shape of the bounded region that constrains the position of the end-effector~%# This region is always centered at the position defined above~%arm_navigation_msgs/Shape constraint_region_shape~%~%# The orientation of the bounded region that constrains the position of the end-effector. ~%# This allows the specification of non-axis aligned constraints~%geometry_msgs/Quaternion constraint_region_orientation~%~%# Constraint weighting factor - a weight for this constraint~%float64 weight~%~%================================================================================~%MSG: arm_navigation_msgs/OrientationConstraint~%# This message contains the definition of an orientation constraint.~%Header header~%~%# The robot link this constraint refers to~%string link_name~%~%# The type of the constraint~%int32 type~%int32 LINK_FRAME=0~%int32 HEADER_FRAME=1~%~%# The desired orientation of the robot link specified as a quaternion~%geometry_msgs/Quaternion orientation~%~%# optional RPY error tolerances specified if ~%float64 absolute_roll_tolerance~%float64 absolute_pitch_tolerance~%float64 absolute_yaw_tolerance~%~%# Constraint weighting factor - a weight for this constraint~%float64 weight~%~%================================================================================~%MSG: arm_navigation_msgs/VisibilityConstraint~%# This message contains the definition of a visibility constraint.~%Header header~%~%# The point stamped target that needs to be kept within view of the sensor~%geometry_msgs/PointStamped target~%~%# The local pose of the frame in which visibility is to be maintained~%# The frame id should represent the robot link to which the sensor is attached~%# The visual axis of the sensor is assumed to be along the X axis of this frame~%geometry_msgs/PoseStamped sensor_pose~%~%# The deviation (in radians) that will be tolerated~%# Constraint error will be measured as the solid angle between the ~%# X axis of the frame defined above and the vector between the origin ~%# of the frame defined above and the target location~%float64 absolute_tolerance~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotionPlanRequest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'workspace_parameters))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_constraints))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path_constraints))
     4 (cl:length (cl:slot-value msg 'planner_id))
     4 (cl:length (cl:slot-value msg 'group_name))
     4
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotionPlanRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'MotionPlanRequest
    (cl:cons ':workspace_parameters (workspace_parameters msg))
    (cl:cons ':start_state (start_state msg))
    (cl:cons ':goal_constraints (goal_constraints msg))
    (cl:cons ':path_constraints (path_constraints msg))
    (cl:cons ':planner_id (planner_id msg))
    (cl:cons ':group_name (group_name msg))
    (cl:cons ':num_planning_attempts (num_planning_attempts msg))
    (cl:cons ':allowed_planning_time (allowed_planning_time msg))
    (cl:cons ':expected_path_duration (expected_path_duration msg))
    (cl:cons ':expected_path_dt (expected_path_dt msg))
))
