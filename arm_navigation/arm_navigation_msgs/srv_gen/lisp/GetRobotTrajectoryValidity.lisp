; Auto-generated. Do not edit!


(cl:in-package arm_navigation_msgs-srv)


;//! \htmlinclude GetRobotTrajectoryValidity-request.msg.html

(cl:defclass <GetRobotTrajectoryValidity-request> (roslisp-msg-protocol:ros-message)
  ((trajectory
    :reader trajectory
    :initarg :trajectory
    :type arm_navigation_msgs-msg:RobotTrajectory
    :initform (cl:make-instance 'arm_navigation_msgs-msg:RobotTrajectory))
   (robot_state
    :reader robot_state
    :initarg :robot_state
    :type arm_navigation_msgs-msg:RobotState
    :initform (cl:make-instance 'arm_navigation_msgs-msg:RobotState))
   (check_collisions
    :reader check_collisions
    :initarg :check_collisions
    :type cl:boolean
    :initform cl:nil)
   (check_path_constraints
    :reader check_path_constraints
    :initarg :check_path_constraints
    :type cl:boolean
    :initform cl:nil)
   (check_goal_constraints
    :reader check_goal_constraints
    :initarg :check_goal_constraints
    :type cl:boolean
    :initform cl:nil)
   (check_joint_limits
    :reader check_joint_limits
    :initarg :check_joint_limits
    :type cl:boolean
    :initform cl:nil)
   (check_full_trajectory
    :reader check_full_trajectory
    :initarg :check_full_trajectory
    :type cl:boolean
    :initform cl:nil)
   (path_constraints
    :reader path_constraints
    :initarg :path_constraints
    :type arm_navigation_msgs-msg:Constraints
    :initform (cl:make-instance 'arm_navigation_msgs-msg:Constraints))
   (goal_constraints
    :reader goal_constraints
    :initarg :goal_constraints
    :type arm_navigation_msgs-msg:Constraints
    :initform (cl:make-instance 'arm_navigation_msgs-msg:Constraints)))
)

(cl:defclass GetRobotTrajectoryValidity-request (<GetRobotTrajectoryValidity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRobotTrajectoryValidity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRobotTrajectoryValidity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-srv:<GetRobotTrajectoryValidity-request> is deprecated: use arm_navigation_msgs-srv:GetRobotTrajectoryValidity-request instead.")))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <GetRobotTrajectoryValidity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:trajectory-val is deprecated.  Use arm_navigation_msgs-srv:trajectory instead.")
  (trajectory m))

(cl:ensure-generic-function 'robot_state-val :lambda-list '(m))
(cl:defmethod robot_state-val ((m <GetRobotTrajectoryValidity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:robot_state-val is deprecated.  Use arm_navigation_msgs-srv:robot_state instead.")
  (robot_state m))

(cl:ensure-generic-function 'check_collisions-val :lambda-list '(m))
(cl:defmethod check_collisions-val ((m <GetRobotTrajectoryValidity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:check_collisions-val is deprecated.  Use arm_navigation_msgs-srv:check_collisions instead.")
  (check_collisions m))

(cl:ensure-generic-function 'check_path_constraints-val :lambda-list '(m))
(cl:defmethod check_path_constraints-val ((m <GetRobotTrajectoryValidity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:check_path_constraints-val is deprecated.  Use arm_navigation_msgs-srv:check_path_constraints instead.")
  (check_path_constraints m))

(cl:ensure-generic-function 'check_goal_constraints-val :lambda-list '(m))
(cl:defmethod check_goal_constraints-val ((m <GetRobotTrajectoryValidity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:check_goal_constraints-val is deprecated.  Use arm_navigation_msgs-srv:check_goal_constraints instead.")
  (check_goal_constraints m))

(cl:ensure-generic-function 'check_joint_limits-val :lambda-list '(m))
(cl:defmethod check_joint_limits-val ((m <GetRobotTrajectoryValidity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:check_joint_limits-val is deprecated.  Use arm_navigation_msgs-srv:check_joint_limits instead.")
  (check_joint_limits m))

(cl:ensure-generic-function 'check_full_trajectory-val :lambda-list '(m))
(cl:defmethod check_full_trajectory-val ((m <GetRobotTrajectoryValidity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:check_full_trajectory-val is deprecated.  Use arm_navigation_msgs-srv:check_full_trajectory instead.")
  (check_full_trajectory m))

(cl:ensure-generic-function 'path_constraints-val :lambda-list '(m))
(cl:defmethod path_constraints-val ((m <GetRobotTrajectoryValidity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:path_constraints-val is deprecated.  Use arm_navigation_msgs-srv:path_constraints instead.")
  (path_constraints m))

(cl:ensure-generic-function 'goal_constraints-val :lambda-list '(m))
(cl:defmethod goal_constraints-val ((m <GetRobotTrajectoryValidity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:goal_constraints-val is deprecated.  Use arm_navigation_msgs-srv:goal_constraints instead.")
  (goal_constraints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRobotTrajectoryValidity-request>) ostream)
  "Serializes a message object of type '<GetRobotTrajectoryValidity-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'check_collisions) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'check_path_constraints) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'check_goal_constraints) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'check_joint_limits) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'check_full_trajectory) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path_constraints) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_constraints) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRobotTrajectoryValidity-request>) istream)
  "Deserializes a message object of type '<GetRobotTrajectoryValidity-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_state) istream)
    (cl:setf (cl:slot-value msg 'check_collisions) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'check_path_constraints) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'check_goal_constraints) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'check_joint_limits) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'check_full_trajectory) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path_constraints) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_constraints) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRobotTrajectoryValidity-request>)))
  "Returns string type for a service object of type '<GetRobotTrajectoryValidity-request>"
  "arm_navigation_msgs/GetRobotTrajectoryValidityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotTrajectoryValidity-request)))
  "Returns string type for a service object of type 'GetRobotTrajectoryValidity-request"
  "arm_navigation_msgs/GetRobotTrajectoryValidityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRobotTrajectoryValidity-request>)))
  "Returns md5sum for a message object of type '<GetRobotTrajectoryValidity-request>"
  "2b18e8353390aab164a69813e3458fdb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRobotTrajectoryValidity-request)))
  "Returns md5sum for a message object of type 'GetRobotTrajectoryValidity-request"
  "2b18e8353390aab164a69813e3458fdb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRobotTrajectoryValidity-request>)))
  "Returns full string definition for message of type '<GetRobotTrajectoryValidity-request>"
  (cl:format cl:nil "~%arm_navigation_msgs/RobotTrajectory trajectory~%~%~%~%~%~%~%~%arm_navigation_msgs/RobotState robot_state~%~%~%bool check_collisions~%~%~%bool check_path_constraints~%~%~%bool check_goal_constraints~%~%~%bool check_joint_limits~%~%~%~%~%bool check_full_trajectory~%~%~%~%~%arm_navigation_msgs/Constraints path_constraints~%~%~%~%~%arm_navigation_msgs/Constraints goal_constraints~%~%~%================================================================================~%MSG: arm_navigation_msgs/RobotTrajectory~%trajectory_msgs/JointTrajectory joint_trajectory~%arm_navigation_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%float64[] positions~%float64[] velocities~%float64[] accelerations~%duration time_from_start~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointTrajectory~%#A representation of a multi-dof joint trajectory~%duration stamp~%string[] joint_names~%string[] frame_ids~%string[] child_frame_ids~%MultiDOFJointTrajectoryPoint[] points~%~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointTrajectoryPoint~%geometry_msgs/Pose[] poses~%duration time_from_start~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: arm_navigation_msgs/RobotState~%# This message contains information about the robot state, i.e. the positions of its joints and links~%sensor_msgs/JointState joint_state~%arm_navigation_msgs/MultiDOFJointState multi_dof_joint_state~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointState~%#A representation of a multi-dof joint state~%time stamp~%string[] joint_names~%string[] frame_ids~%string[] child_frame_ids~%geometry_msgs/Pose[] poses~%~%================================================================================~%MSG: arm_navigation_msgs/Constraints~%# This message contains a list of motion planning constraints.~%~%arm_navigation_msgs/JointConstraint[] joint_constraints~%arm_navigation_msgs/PositionConstraint[] position_constraints~%arm_navigation_msgs/OrientationConstraint[] orientation_constraints~%arm_navigation_msgs/VisibilityConstraint[] visibility_constraints~%~%================================================================================~%MSG: arm_navigation_msgs/JointConstraint~%# Constrain the position of a joint to be within a certain bound~%string joint_name~%~%# the bound to be achieved is [position - tolerance_below, position + tolerance_above]~%float64 position~%float64 tolerance_above~%float64 tolerance_below~%~%# A weighting factor for this constraint~%float64 weight~%================================================================================~%MSG: arm_navigation_msgs/PositionConstraint~%# This message contains the definition of a position constraint.~%Header header~%~%# The robot link this constraint refers to~%string link_name~%~%# The offset (in the link frame) for the target point on the link we are planning for~%geometry_msgs/Point target_point_offset~%~%# The nominal/target position for the point we are planning for~%geometry_msgs/Point position~%~%# The shape of the bounded region that constrains the position of the end-effector~%# This region is always centered at the position defined above~%arm_navigation_msgs/Shape constraint_region_shape~%~%# The orientation of the bounded region that constrains the position of the end-effector. ~%# This allows the specification of non-axis aligned constraints~%geometry_msgs/Quaternion constraint_region_orientation~%~%# Constraint weighting factor - a weight for this constraint~%float64 weight~%~%================================================================================~%MSG: arm_navigation_msgs/Shape~%byte SPHERE=0~%byte BOX=1~%byte CYLINDER=2~%byte MESH=3~%~%byte type~%~%~%#### define sphere, box, cylinder ####~%# the origin of each shape is considered at the shape's center~%~%# for sphere~%# radius := dimensions[0]~%~%# for cylinder~%# radius := dimensions[0]~%# length := dimensions[1]~%# the length is along the Z axis~%~%# for box~%# size_x := dimensions[0]~%# size_y := dimensions[1]~%# size_z := dimensions[2]~%float64[] dimensions~%~%~%#### define mesh ####~%~%# list of triangles; triangle k is defined by tre vertices located~%# at indices triangles[3k], triangles[3k+1], triangles[3k+2]~%int32[] triangles~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: arm_navigation_msgs/OrientationConstraint~%# This message contains the definition of an orientation constraint.~%Header header~%~%# The robot link this constraint refers to~%string link_name~%~%# The type of the constraint~%int32 type~%int32 LINK_FRAME=0~%int32 HEADER_FRAME=1~%~%# The desired orientation of the robot link specified as a quaternion~%geometry_msgs/Quaternion orientation~%~%# optional RPY error tolerances specified if ~%float64 absolute_roll_tolerance~%float64 absolute_pitch_tolerance~%float64 absolute_yaw_tolerance~%~%# Constraint weighting factor - a weight for this constraint~%float64 weight~%~%================================================================================~%MSG: arm_navigation_msgs/VisibilityConstraint~%# This message contains the definition of a visibility constraint.~%Header header~%~%# The point stamped target that needs to be kept within view of the sensor~%geometry_msgs/PointStamped target~%~%# The local pose of the frame in which visibility is to be maintained~%# The frame id should represent the robot link to which the sensor is attached~%# The visual axis of the sensor is assumed to be along the X axis of this frame~%geometry_msgs/PoseStamped sensor_pose~%~%# The deviation (in radians) that will be tolerated~%# Constraint error will be measured as the solid angle between the ~%# X axis of the frame defined above and the vector between the origin ~%# of the frame defined above and the target location~%float64 absolute_tolerance~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRobotTrajectoryValidity-request)))
  "Returns full string definition for message of type 'GetRobotTrajectoryValidity-request"
  (cl:format cl:nil "~%arm_navigation_msgs/RobotTrajectory trajectory~%~%~%~%~%~%~%~%arm_navigation_msgs/RobotState robot_state~%~%~%bool check_collisions~%~%~%bool check_path_constraints~%~%~%bool check_goal_constraints~%~%~%bool check_joint_limits~%~%~%~%~%bool check_full_trajectory~%~%~%~%~%arm_navigation_msgs/Constraints path_constraints~%~%~%~%~%arm_navigation_msgs/Constraints goal_constraints~%~%~%================================================================================~%MSG: arm_navigation_msgs/RobotTrajectory~%trajectory_msgs/JointTrajectory joint_trajectory~%arm_navigation_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%float64[] positions~%float64[] velocities~%float64[] accelerations~%duration time_from_start~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointTrajectory~%#A representation of a multi-dof joint trajectory~%duration stamp~%string[] joint_names~%string[] frame_ids~%string[] child_frame_ids~%MultiDOFJointTrajectoryPoint[] points~%~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointTrajectoryPoint~%geometry_msgs/Pose[] poses~%duration time_from_start~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: arm_navigation_msgs/RobotState~%# This message contains information about the robot state, i.e. the positions of its joints and links~%sensor_msgs/JointState joint_state~%arm_navigation_msgs/MultiDOFJointState multi_dof_joint_state~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointState~%#A representation of a multi-dof joint state~%time stamp~%string[] joint_names~%string[] frame_ids~%string[] child_frame_ids~%geometry_msgs/Pose[] poses~%~%================================================================================~%MSG: arm_navigation_msgs/Constraints~%# This message contains a list of motion planning constraints.~%~%arm_navigation_msgs/JointConstraint[] joint_constraints~%arm_navigation_msgs/PositionConstraint[] position_constraints~%arm_navigation_msgs/OrientationConstraint[] orientation_constraints~%arm_navigation_msgs/VisibilityConstraint[] visibility_constraints~%~%================================================================================~%MSG: arm_navigation_msgs/JointConstraint~%# Constrain the position of a joint to be within a certain bound~%string joint_name~%~%# the bound to be achieved is [position - tolerance_below, position + tolerance_above]~%float64 position~%float64 tolerance_above~%float64 tolerance_below~%~%# A weighting factor for this constraint~%float64 weight~%================================================================================~%MSG: arm_navigation_msgs/PositionConstraint~%# This message contains the definition of a position constraint.~%Header header~%~%# The robot link this constraint refers to~%string link_name~%~%# The offset (in the link frame) for the target point on the link we are planning for~%geometry_msgs/Point target_point_offset~%~%# The nominal/target position for the point we are planning for~%geometry_msgs/Point position~%~%# The shape of the bounded region that constrains the position of the end-effector~%# This region is always centered at the position defined above~%arm_navigation_msgs/Shape constraint_region_shape~%~%# The orientation of the bounded region that constrains the position of the end-effector. ~%# This allows the specification of non-axis aligned constraints~%geometry_msgs/Quaternion constraint_region_orientation~%~%# Constraint weighting factor - a weight for this constraint~%float64 weight~%~%================================================================================~%MSG: arm_navigation_msgs/Shape~%byte SPHERE=0~%byte BOX=1~%byte CYLINDER=2~%byte MESH=3~%~%byte type~%~%~%#### define sphere, box, cylinder ####~%# the origin of each shape is considered at the shape's center~%~%# for sphere~%# radius := dimensions[0]~%~%# for cylinder~%# radius := dimensions[0]~%# length := dimensions[1]~%# the length is along the Z axis~%~%# for box~%# size_x := dimensions[0]~%# size_y := dimensions[1]~%# size_z := dimensions[2]~%float64[] dimensions~%~%~%#### define mesh ####~%~%# list of triangles; triangle k is defined by tre vertices located~%# at indices triangles[3k], triangles[3k+1], triangles[3k+2]~%int32[] triangles~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: arm_navigation_msgs/OrientationConstraint~%# This message contains the definition of an orientation constraint.~%Header header~%~%# The robot link this constraint refers to~%string link_name~%~%# The type of the constraint~%int32 type~%int32 LINK_FRAME=0~%int32 HEADER_FRAME=1~%~%# The desired orientation of the robot link specified as a quaternion~%geometry_msgs/Quaternion orientation~%~%# optional RPY error tolerances specified if ~%float64 absolute_roll_tolerance~%float64 absolute_pitch_tolerance~%float64 absolute_yaw_tolerance~%~%# Constraint weighting factor - a weight for this constraint~%float64 weight~%~%================================================================================~%MSG: arm_navigation_msgs/VisibilityConstraint~%# This message contains the definition of a visibility constraint.~%Header header~%~%# The point stamped target that needs to be kept within view of the sensor~%geometry_msgs/PointStamped target~%~%# The local pose of the frame in which visibility is to be maintained~%# The frame id should represent the robot link to which the sensor is attached~%# The visual axis of the sensor is assumed to be along the X axis of this frame~%geometry_msgs/PoseStamped sensor_pose~%~%# The deviation (in radians) that will be tolerated~%# Constraint error will be measured as the solid angle between the ~%# X axis of the frame defined above and the vector between the origin ~%# of the frame defined above and the target location~%float64 absolute_tolerance~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRobotTrajectoryValidity-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_state))
     1
     1
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path_constraints))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_constraints))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRobotTrajectoryValidity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRobotTrajectoryValidity-request
    (cl:cons ':trajectory (trajectory msg))
    (cl:cons ':robot_state (robot_state msg))
    (cl:cons ':check_collisions (check_collisions msg))
    (cl:cons ':check_path_constraints (check_path_constraints msg))
    (cl:cons ':check_goal_constraints (check_goal_constraints msg))
    (cl:cons ':check_joint_limits (check_joint_limits msg))
    (cl:cons ':check_full_trajectory (check_full_trajectory msg))
    (cl:cons ':path_constraints (path_constraints msg))
    (cl:cons ':goal_constraints (goal_constraints msg))
))
;//! \htmlinclude GetRobotTrajectoryValidity-response.msg.html

(cl:defclass <GetRobotTrajectoryValidity-response> (roslisp-msg-protocol:ros-message)
  ((error_code
    :reader error_code
    :initarg :error_code
    :type arm_navigation_msgs-msg:ArmNavigationErrorCodes
    :initform (cl:make-instance 'arm_navigation_msgs-msg:ArmNavigationErrorCodes))
   (trajectory_error_codes
    :reader trajectory_error_codes
    :initarg :trajectory_error_codes
    :type (cl:vector arm_navigation_msgs-msg:ArmNavigationErrorCodes)
   :initform (cl:make-array 0 :element-type 'arm_navigation_msgs-msg:ArmNavigationErrorCodes :initial-element (cl:make-instance 'arm_navigation_msgs-msg:ArmNavigationErrorCodes))))
)

(cl:defclass GetRobotTrajectoryValidity-response (<GetRobotTrajectoryValidity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRobotTrajectoryValidity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRobotTrajectoryValidity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-srv:<GetRobotTrajectoryValidity-response> is deprecated: use arm_navigation_msgs-srv:GetRobotTrajectoryValidity-response instead.")))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetRobotTrajectoryValidity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:error_code-val is deprecated.  Use arm_navigation_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'trajectory_error_codes-val :lambda-list '(m))
(cl:defmethod trajectory_error_codes-val ((m <GetRobotTrajectoryValidity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:trajectory_error_codes-val is deprecated.  Use arm_navigation_msgs-srv:trajectory_error_codes instead.")
  (trajectory_error_codes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRobotTrajectoryValidity-response>) ostream)
  "Serializes a message object of type '<GetRobotTrajectoryValidity-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_code) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectory_error_codes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectory_error_codes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRobotTrajectoryValidity-response>) istream)
  "Deserializes a message object of type '<GetRobotTrajectoryValidity-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_code) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectory_error_codes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectory_error_codes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'arm_navigation_msgs-msg:ArmNavigationErrorCodes))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRobotTrajectoryValidity-response>)))
  "Returns string type for a service object of type '<GetRobotTrajectoryValidity-response>"
  "arm_navigation_msgs/GetRobotTrajectoryValidityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotTrajectoryValidity-response)))
  "Returns string type for a service object of type 'GetRobotTrajectoryValidity-response"
  "arm_navigation_msgs/GetRobotTrajectoryValidityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRobotTrajectoryValidity-response>)))
  "Returns md5sum for a message object of type '<GetRobotTrajectoryValidity-response>"
  "2b18e8353390aab164a69813e3458fdb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRobotTrajectoryValidity-response)))
  "Returns md5sum for a message object of type 'GetRobotTrajectoryValidity-response"
  "2b18e8353390aab164a69813e3458fdb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRobotTrajectoryValidity-response>)))
  "Returns full string definition for message of type '<GetRobotTrajectoryValidity-response>"
  (cl:format cl:nil "~%~%~%~%arm_navigation_msgs/ArmNavigationErrorCodes error_code~%~%~%~%~%arm_navigation_msgs/ArmNavigationErrorCodes[] trajectory_error_codes~%~%~%================================================================================~%MSG: arm_navigation_msgs/ArmNavigationErrorCodes~%int32 val~%~%# overall behavior~%int32 PLANNING_FAILED=-1~%int32 SUCCESS=1~%int32 TIMED_OUT=-2~%~%# start state errors~%int32 START_STATE_IN_COLLISION=-3~%int32 START_STATE_VIOLATES_PATH_CONSTRAINTS=-4~%~%# goal errors~%int32 GOAL_IN_COLLISION=-5~%int32 GOAL_VIOLATES_PATH_CONSTRAINTS=-6~%~%# robot state~%int32 INVALID_ROBOT_STATE=-7~%int32 INCOMPLETE_ROBOT_STATE=-8~%~%# planning request errors~%int32 INVALID_PLANNER_ID=-9~%int32 INVALID_NUM_PLANNING_ATTEMPTS=-10~%int32 INVALID_ALLOWED_PLANNING_TIME=-11~%int32 INVALID_GROUP_NAME=-12~%int32 INVALID_GOAL_JOINT_CONSTRAINTS=-13~%int32 INVALID_GOAL_POSITION_CONSTRAINTS=-14~%int32 INVALID_GOAL_ORIENTATION_CONSTRAINTS=-15~%int32 INVALID_PATH_JOINT_CONSTRAINTS=-16~%int32 INVALID_PATH_POSITION_CONSTRAINTS=-17~%int32 INVALID_PATH_ORIENTATION_CONSTRAINTS=-18~%~%# state/trajectory monitor errors~%int32 INVALID_TRAJECTORY=-19~%int32 INVALID_INDEX=-20~%int32 JOINT_LIMITS_VIOLATED=-21~%int32 PATH_CONSTRAINTS_VIOLATED=-22~%int32 COLLISION_CONSTRAINTS_VIOLATED=-23~%int32 GOAL_CONSTRAINTS_VIOLATED=-24~%int32 JOINTS_NOT_MOVING=-25~%int32 TRAJECTORY_CONTROLLER_FAILED=-26~%~%# system errors~%int32 FRAME_TRANSFORM_FAILURE=-27~%int32 COLLISION_CHECKING_UNAVAILABLE=-28~%int32 ROBOT_STATE_STALE=-29~%int32 SENSOR_INFO_STALE=-30~%~%# kinematics errors~%int32 NO_IK_SOLUTION=-31~%int32 INVALID_LINK_NAME=-32~%int32 IK_LINK_IN_COLLISION=-33~%int32 NO_FK_SOLUTION=-34~%int32 KINEMATICS_STATE_IN_COLLISION=-35~%~%# general errors~%int32 INVALID_TIMEOUT=-36~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRobotTrajectoryValidity-response)))
  "Returns full string definition for message of type 'GetRobotTrajectoryValidity-response"
  (cl:format cl:nil "~%~%~%~%arm_navigation_msgs/ArmNavigationErrorCodes error_code~%~%~%~%~%arm_navigation_msgs/ArmNavigationErrorCodes[] trajectory_error_codes~%~%~%================================================================================~%MSG: arm_navigation_msgs/ArmNavigationErrorCodes~%int32 val~%~%# overall behavior~%int32 PLANNING_FAILED=-1~%int32 SUCCESS=1~%int32 TIMED_OUT=-2~%~%# start state errors~%int32 START_STATE_IN_COLLISION=-3~%int32 START_STATE_VIOLATES_PATH_CONSTRAINTS=-4~%~%# goal errors~%int32 GOAL_IN_COLLISION=-5~%int32 GOAL_VIOLATES_PATH_CONSTRAINTS=-6~%~%# robot state~%int32 INVALID_ROBOT_STATE=-7~%int32 INCOMPLETE_ROBOT_STATE=-8~%~%# planning request errors~%int32 INVALID_PLANNER_ID=-9~%int32 INVALID_NUM_PLANNING_ATTEMPTS=-10~%int32 INVALID_ALLOWED_PLANNING_TIME=-11~%int32 INVALID_GROUP_NAME=-12~%int32 INVALID_GOAL_JOINT_CONSTRAINTS=-13~%int32 INVALID_GOAL_POSITION_CONSTRAINTS=-14~%int32 INVALID_GOAL_ORIENTATION_CONSTRAINTS=-15~%int32 INVALID_PATH_JOINT_CONSTRAINTS=-16~%int32 INVALID_PATH_POSITION_CONSTRAINTS=-17~%int32 INVALID_PATH_ORIENTATION_CONSTRAINTS=-18~%~%# state/trajectory monitor errors~%int32 INVALID_TRAJECTORY=-19~%int32 INVALID_INDEX=-20~%int32 JOINT_LIMITS_VIOLATED=-21~%int32 PATH_CONSTRAINTS_VIOLATED=-22~%int32 COLLISION_CONSTRAINTS_VIOLATED=-23~%int32 GOAL_CONSTRAINTS_VIOLATED=-24~%int32 JOINTS_NOT_MOVING=-25~%int32 TRAJECTORY_CONTROLLER_FAILED=-26~%~%# system errors~%int32 FRAME_TRANSFORM_FAILURE=-27~%int32 COLLISION_CHECKING_UNAVAILABLE=-28~%int32 ROBOT_STATE_STALE=-29~%int32 SENSOR_INFO_STALE=-30~%~%# kinematics errors~%int32 NO_IK_SOLUTION=-31~%int32 INVALID_LINK_NAME=-32~%int32 IK_LINK_IN_COLLISION=-33~%int32 NO_FK_SOLUTION=-34~%int32 KINEMATICS_STATE_IN_COLLISION=-35~%~%# general errors~%int32 INVALID_TIMEOUT=-36~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRobotTrajectoryValidity-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_code))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectory_error_codes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRobotTrajectoryValidity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRobotTrajectoryValidity-response
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':trajectory_error_codes (trajectory_error_codes msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRobotTrajectoryValidity)))
  'GetRobotTrajectoryValidity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRobotTrajectoryValidity)))
  'GetRobotTrajectoryValidity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotTrajectoryValidity)))
  "Returns string type for a service object of type '<GetRobotTrajectoryValidity>"
  "arm_navigation_msgs/GetRobotTrajectoryValidity")