; Auto-generated. Do not edit!


(cl:in-package kinematics_msgs-msg)


;//! \htmlinclude PositionIKRequest.msg.html

(cl:defclass <PositionIKRequest> (roslisp-msg-protocol:ros-message)
  ((ik_link_name
    :reader ik_link_name
    :initarg :ik_link_name
    :type cl:string
    :initform "")
   (pose_stamped
    :reader pose_stamped
    :initarg :pose_stamped
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (ik_seed_state
    :reader ik_seed_state
    :initarg :ik_seed_state
    :type arm_navigation_msgs-msg:RobotState
    :initform (cl:make-instance 'arm_navigation_msgs-msg:RobotState))
   (robot_state
    :reader robot_state
    :initarg :robot_state
    :type arm_navigation_msgs-msg:RobotState
    :initform (cl:make-instance 'arm_navigation_msgs-msg:RobotState)))
)

(cl:defclass PositionIKRequest (<PositionIKRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionIKRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionIKRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinematics_msgs-msg:<PositionIKRequest> is deprecated: use kinematics_msgs-msg:PositionIKRequest instead.")))

(cl:ensure-generic-function 'ik_link_name-val :lambda-list '(m))
(cl:defmethod ik_link_name-val ((m <PositionIKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinematics_msgs-msg:ik_link_name-val is deprecated.  Use kinematics_msgs-msg:ik_link_name instead.")
  (ik_link_name m))

(cl:ensure-generic-function 'pose_stamped-val :lambda-list '(m))
(cl:defmethod pose_stamped-val ((m <PositionIKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinematics_msgs-msg:pose_stamped-val is deprecated.  Use kinematics_msgs-msg:pose_stamped instead.")
  (pose_stamped m))

(cl:ensure-generic-function 'ik_seed_state-val :lambda-list '(m))
(cl:defmethod ik_seed_state-val ((m <PositionIKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinematics_msgs-msg:ik_seed_state-val is deprecated.  Use kinematics_msgs-msg:ik_seed_state instead.")
  (ik_seed_state m))

(cl:ensure-generic-function 'robot_state-val :lambda-list '(m))
(cl:defmethod robot_state-val ((m <PositionIKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinematics_msgs-msg:robot_state-val is deprecated.  Use kinematics_msgs-msg:robot_state instead.")
  (robot_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionIKRequest>) ostream)
  "Serializes a message object of type '<PositionIKRequest>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ik_link_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ik_link_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_stamped) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ik_seed_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionIKRequest>) istream)
  "Deserializes a message object of type '<PositionIKRequest>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ik_link_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ik_link_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_stamped) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ik_seed_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionIKRequest>)))
  "Returns string type for a message object of type '<PositionIKRequest>"
  "kinematics_msgs/PositionIKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionIKRequest)))
  "Returns string type for a message object of type 'PositionIKRequest"
  "kinematics_msgs/PositionIKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionIKRequest>)))
  "Returns md5sum for a message object of type '<PositionIKRequest>"
  "737bb756c6253bdd460b1383d0b12dac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionIKRequest)))
  "Returns md5sum for a message object of type 'PositionIKRequest"
  "737bb756c6253bdd460b1383d0b12dac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionIKRequest>)))
  "Returns full string definition for message of type '<PositionIKRequest>"
  (cl:format cl:nil "# A Position IK request message~%# The name of the link for which we are computing IK~%string ik_link_name~%~%# The (stamped) pose of the link~%geometry_msgs/PoseStamped pose_stamped~%~%# A RobotState consisting of hint/seed positions for the IK computation. ~%# These may be used to seed the IK search. ~%# The seed state MUST contain state for all joints to be used by the IK solver~%# to compute IK. The list of joints that the IK solver deals with can be found using~%# the kinematics_msgs/GetKinematicSolverInfo~%arm_navigation_msgs/RobotState ik_seed_state~%~%# Additional state information can be provided here to specify the starting positions ~%# of other joints/links on the robot.~%arm_navigation_msgs/RobotState robot_state~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: arm_navigation_msgs/RobotState~%# This message contains information about the robot state, i.e. the positions of its joints and links~%sensor_msgs/JointState joint_state~%arm_navigation_msgs/MultiDOFJointState multi_dof_joint_state~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointState~%#A representation of a multi-dof joint state~%time stamp~%string[] joint_names~%string[] frame_ids~%string[] child_frame_ids~%geometry_msgs/Pose[] poses~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionIKRequest)))
  "Returns full string definition for message of type 'PositionIKRequest"
  (cl:format cl:nil "# A Position IK request message~%# The name of the link for which we are computing IK~%string ik_link_name~%~%# The (stamped) pose of the link~%geometry_msgs/PoseStamped pose_stamped~%~%# A RobotState consisting of hint/seed positions for the IK computation. ~%# These may be used to seed the IK search. ~%# The seed state MUST contain state for all joints to be used by the IK solver~%# to compute IK. The list of joints that the IK solver deals with can be found using~%# the kinematics_msgs/GetKinematicSolverInfo~%arm_navigation_msgs/RobotState ik_seed_state~%~%# Additional state information can be provided here to specify the starting positions ~%# of other joints/links on the robot.~%arm_navigation_msgs/RobotState robot_state~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: arm_navigation_msgs/RobotState~%# This message contains information about the robot state, i.e. the positions of its joints and links~%sensor_msgs/JointState joint_state~%arm_navigation_msgs/MultiDOFJointState multi_dof_joint_state~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointState~%#A representation of a multi-dof joint state~%time stamp~%string[] joint_names~%string[] frame_ids~%string[] child_frame_ids~%geometry_msgs/Pose[] poses~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionIKRequest>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ik_link_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_stamped))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ik_seed_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionIKRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionIKRequest
    (cl:cons ':ik_link_name (ik_link_name msg))
    (cl:cons ':pose_stamped (pose_stamped msg))
    (cl:cons ':ik_seed_state (ik_seed_state msg))
    (cl:cons ':robot_state (robot_state msg))
))
