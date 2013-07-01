; Auto-generated. Do not edit!


(cl:in-package arm_navigation_msgs-msg)


;//! \htmlinclude DisplayTrajectory.msg.html

(cl:defclass <DisplayTrajectory> (roslisp-msg-protocol:ros-message)
  ((model_id
    :reader model_id
    :initarg :model_id
    :type cl:string
    :initform "")
   (trajectory
    :reader trajectory
    :initarg :trajectory
    :type arm_navigation_msgs-msg:RobotTrajectory
    :initform (cl:make-instance 'arm_navigation_msgs-msg:RobotTrajectory))
   (robot_state
    :reader robot_state
    :initarg :robot_state
    :type arm_navigation_msgs-msg:RobotState
    :initform (cl:make-instance 'arm_navigation_msgs-msg:RobotState)))
)

(cl:defclass DisplayTrajectory (<DisplayTrajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DisplayTrajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DisplayTrajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-msg:<DisplayTrajectory> is deprecated: use arm_navigation_msgs-msg:DisplayTrajectory instead.")))

(cl:ensure-generic-function 'model_id-val :lambda-list '(m))
(cl:defmethod model_id-val ((m <DisplayTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:model_id-val is deprecated.  Use arm_navigation_msgs-msg:model_id instead.")
  (model_id m))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <DisplayTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:trajectory-val is deprecated.  Use arm_navigation_msgs-msg:trajectory instead.")
  (trajectory m))

(cl:ensure-generic-function 'robot_state-val :lambda-list '(m))
(cl:defmethod robot_state-val ((m <DisplayTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:robot_state-val is deprecated.  Use arm_navigation_msgs-msg:robot_state instead.")
  (robot_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DisplayTrajectory>) ostream)
  "Serializes a message object of type '<DisplayTrajectory>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DisplayTrajectory>) istream)
  "Deserializes a message object of type '<DisplayTrajectory>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DisplayTrajectory>)))
  "Returns string type for a message object of type '<DisplayTrajectory>"
  "arm_navigation_msgs/DisplayTrajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DisplayTrajectory)))
  "Returns string type for a message object of type 'DisplayTrajectory"
  "arm_navigation_msgs/DisplayTrajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DisplayTrajectory>)))
  "Returns md5sum for a message object of type '<DisplayTrajectory>"
  "382f217803665e4718c4edbac445582c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DisplayTrajectory)))
  "Returns md5sum for a message object of type 'DisplayTrajectory"
  "382f217803665e4718c4edbac445582c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DisplayTrajectory>)))
  "Returns full string definition for message of type '<DisplayTrajectory>"
  (cl:format cl:nil "# The model id for which this path has been generated~%string model_id~%# The representation of the path contains position values for all the joints that are moving along the path~%arm_navigation_msgs/RobotTrajectory trajectory~%# The robot state is used to obtain positions for all/some of the joints of the robot. ~%# It is used by the path display node to determine the positions of the joints that are not specified in the joint path message above. ~%# If the robot state message contains joint position information for joints that are also mentioned in the joint path message, the positions in the joint path message will overwrite the positions specified in the robot state message. ~%RobotState robot_state~%~%================================================================================~%MSG: arm_navigation_msgs/RobotTrajectory~%trajectory_msgs/JointTrajectory joint_trajectory~%arm_navigation_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%float64[] positions~%float64[] velocities~%float64[] accelerations~%duration time_from_start~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointTrajectory~%#A representation of a multi-dof joint trajectory~%duration stamp~%string[] joint_names~%string[] frame_ids~%string[] child_frame_ids~%MultiDOFJointTrajectoryPoint[] points~%~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointTrajectoryPoint~%geometry_msgs/Pose[] poses~%duration time_from_start~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: arm_navigation_msgs/RobotState~%# This message contains information about the robot state, i.e. the positions of its joints and links~%sensor_msgs/JointState joint_state~%arm_navigation_msgs/MultiDOFJointState multi_dof_joint_state~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointState~%#A representation of a multi-dof joint state~%time stamp~%string[] joint_names~%string[] frame_ids~%string[] child_frame_ids~%geometry_msgs/Pose[] poses~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DisplayTrajectory)))
  "Returns full string definition for message of type 'DisplayTrajectory"
  (cl:format cl:nil "# The model id for which this path has been generated~%string model_id~%# The representation of the path contains position values for all the joints that are moving along the path~%arm_navigation_msgs/RobotTrajectory trajectory~%# The robot state is used to obtain positions for all/some of the joints of the robot. ~%# It is used by the path display node to determine the positions of the joints that are not specified in the joint path message above. ~%# If the robot state message contains joint position information for joints that are also mentioned in the joint path message, the positions in the joint path message will overwrite the positions specified in the robot state message. ~%RobotState robot_state~%~%================================================================================~%MSG: arm_navigation_msgs/RobotTrajectory~%trajectory_msgs/JointTrajectory joint_trajectory~%arm_navigation_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%float64[] positions~%float64[] velocities~%float64[] accelerations~%duration time_from_start~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointTrajectory~%#A representation of a multi-dof joint trajectory~%duration stamp~%string[] joint_names~%string[] frame_ids~%string[] child_frame_ids~%MultiDOFJointTrajectoryPoint[] points~%~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointTrajectoryPoint~%geometry_msgs/Pose[] poses~%duration time_from_start~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: arm_navigation_msgs/RobotState~%# This message contains information about the robot state, i.e. the positions of its joints and links~%sensor_msgs/JointState joint_state~%arm_navigation_msgs/MultiDOFJointState multi_dof_joint_state~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointState~%#A representation of a multi-dof joint state~%time stamp~%string[] joint_names~%string[] frame_ids~%string[] child_frame_ids~%geometry_msgs/Pose[] poses~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DisplayTrajectory>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DisplayTrajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'DisplayTrajectory
    (cl:cons ':model_id (model_id msg))
    (cl:cons ':trajectory (trajectory msg))
    (cl:cons ':robot_state (robot_state msg))
))
