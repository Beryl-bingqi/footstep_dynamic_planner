; Auto-generated. Do not edit!


(cl:in-package arm_navigation_msgs-msg)


;//! \htmlinclude RobotTrajectory.msg.html

(cl:defclass <RobotTrajectory> (roslisp-msg-protocol:ros-message)
  ((joint_trajectory
    :reader joint_trajectory
    :initarg :joint_trajectory
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory))
   (multi_dof_joint_trajectory
    :reader multi_dof_joint_trajectory
    :initarg :multi_dof_joint_trajectory
    :type arm_navigation_msgs-msg:MultiDOFJointTrajectory
    :initform (cl:make-instance 'arm_navigation_msgs-msg:MultiDOFJointTrajectory)))
)

(cl:defclass RobotTrajectory (<RobotTrajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotTrajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotTrajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-msg:<RobotTrajectory> is deprecated: use arm_navigation_msgs-msg:RobotTrajectory instead.")))

(cl:ensure-generic-function 'joint_trajectory-val :lambda-list '(m))
(cl:defmethod joint_trajectory-val ((m <RobotTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:joint_trajectory-val is deprecated.  Use arm_navigation_msgs-msg:joint_trajectory instead.")
  (joint_trajectory m))

(cl:ensure-generic-function 'multi_dof_joint_trajectory-val :lambda-list '(m))
(cl:defmethod multi_dof_joint_trajectory-val ((m <RobotTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:multi_dof_joint_trajectory-val is deprecated.  Use arm_navigation_msgs-msg:multi_dof_joint_trajectory instead.")
  (multi_dof_joint_trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotTrajectory>) ostream)
  "Serializes a message object of type '<RobotTrajectory>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joint_trajectory) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'multi_dof_joint_trajectory) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotTrajectory>) istream)
  "Deserializes a message object of type '<RobotTrajectory>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joint_trajectory) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'multi_dof_joint_trajectory) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotTrajectory>)))
  "Returns string type for a message object of type '<RobotTrajectory>"
  "arm_navigation_msgs/RobotTrajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotTrajectory)))
  "Returns string type for a message object of type 'RobotTrajectory"
  "arm_navigation_msgs/RobotTrajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotTrajectory>)))
  "Returns md5sum for a message object of type '<RobotTrajectory>"
  "5bc8324620001e5c07a09d0bbfaaf093")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotTrajectory)))
  "Returns md5sum for a message object of type 'RobotTrajectory"
  "5bc8324620001e5c07a09d0bbfaaf093")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotTrajectory>)))
  "Returns full string definition for message of type '<RobotTrajectory>"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory joint_trajectory~%arm_navigation_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%float64[] positions~%float64[] velocities~%float64[] accelerations~%duration time_from_start~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointTrajectory~%#A representation of a multi-dof joint trajectory~%duration stamp~%string[] joint_names~%string[] frame_ids~%string[] child_frame_ids~%MultiDOFJointTrajectoryPoint[] points~%~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointTrajectoryPoint~%geometry_msgs/Pose[] poses~%duration time_from_start~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotTrajectory)))
  "Returns full string definition for message of type 'RobotTrajectory"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory joint_trajectory~%arm_navigation_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%float64[] positions~%float64[] velocities~%float64[] accelerations~%duration time_from_start~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointTrajectory~%#A representation of a multi-dof joint trajectory~%duration stamp~%string[] joint_names~%string[] frame_ids~%string[] child_frame_ids~%MultiDOFJointTrajectoryPoint[] points~%~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointTrajectoryPoint~%geometry_msgs/Pose[] poses~%duration time_from_start~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotTrajectory>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint_trajectory))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'multi_dof_joint_trajectory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotTrajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotTrajectory
    (cl:cons ':joint_trajectory (joint_trajectory msg))
    (cl:cons ':multi_dof_joint_trajectory (multi_dof_joint_trajectory msg))
))
