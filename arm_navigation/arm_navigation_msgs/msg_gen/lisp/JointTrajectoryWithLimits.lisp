; Auto-generated. Do not edit!


(cl:in-package arm_navigation_msgs-msg)


;//! \htmlinclude JointTrajectoryWithLimits.msg.html

(cl:defclass <JointTrajectoryWithLimits> (roslisp-msg-protocol:ros-message)
  ((trajectory
    :reader trajectory
    :initarg :trajectory
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory))
   (limits
    :reader limits
    :initarg :limits
    :type (cl:vector arm_navigation_msgs-msg:JointLimits)
   :initform (cl:make-array 0 :element-type 'arm_navigation_msgs-msg:JointLimits :initial-element (cl:make-instance 'arm_navigation_msgs-msg:JointLimits))))
)

(cl:defclass JointTrajectoryWithLimits (<JointTrajectoryWithLimits>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointTrajectoryWithLimits>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointTrajectoryWithLimits)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-msg:<JointTrajectoryWithLimits> is deprecated: use arm_navigation_msgs-msg:JointTrajectoryWithLimits instead.")))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <JointTrajectoryWithLimits>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:trajectory-val is deprecated.  Use arm_navigation_msgs-msg:trajectory instead.")
  (trajectory m))

(cl:ensure-generic-function 'limits-val :lambda-list '(m))
(cl:defmethod limits-val ((m <JointTrajectoryWithLimits>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:limits-val is deprecated.  Use arm_navigation_msgs-msg:limits instead.")
  (limits m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointTrajectoryWithLimits>) ostream)
  "Serializes a message object of type '<JointTrajectoryWithLimits>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'limits))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'limits))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointTrajectoryWithLimits>) istream)
  "Deserializes a message object of type '<JointTrajectoryWithLimits>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointTrajectoryWithLimits>)))
  "Returns string type for a message object of type '<JointTrajectoryWithLimits>"
  "arm_navigation_msgs/JointTrajectoryWithLimits")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointTrajectoryWithLimits)))
  "Returns string type for a message object of type 'JointTrajectoryWithLimits"
  "arm_navigation_msgs/JointTrajectoryWithLimits")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointTrajectoryWithLimits>)))
  "Returns md5sum for a message object of type '<JointTrajectoryWithLimits>"
  "e31e1ba1b3409bbb645c8dfcca5935cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointTrajectoryWithLimits)))
  "Returns md5sum for a message object of type 'JointTrajectoryWithLimits"
  "e31e1ba1b3409bbb645c8dfcca5935cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointTrajectoryWithLimits>)))
  "Returns full string definition for message of type '<JointTrajectoryWithLimits>"
  (cl:format cl:nil "# A trajectory message that encodes joint limits within it.~%trajectory_msgs/JointTrajectory trajectory~%~%# A vector of JointLimit messages.~%# Each message contains the limits for a specific joint~%arm_navigation_msgs/JointLimits[] limits~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%float64[] positions~%float64[] velocities~%float64[] accelerations~%duration time_from_start~%================================================================================~%MSG: arm_navigation_msgs/JointLimits~%# This message contains information about limits of a particular joint (or control dimension)~%string joint_name~%~%# true if the joint has position limits~%bool has_position_limits~%~%# min and max position limits~%float64 min_position~%float64 max_position~%~%# true if joint has velocity limits~%bool has_velocity_limits~%~%# max velocity limit~%float64 max_velocity~%# min_velocity is assumed to be -max_velocity~%~%# true if joint has acceleration limits~%bool has_acceleration_limits~%# max acceleration limit~%float64 max_acceleration~%# min_acceleration is assumed to be -max_acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointTrajectoryWithLimits)))
  "Returns full string definition for message of type 'JointTrajectoryWithLimits"
  (cl:format cl:nil "# A trajectory message that encodes joint limits within it.~%trajectory_msgs/JointTrajectory trajectory~%~%# A vector of JointLimit messages.~%# Each message contains the limits for a specific joint~%arm_navigation_msgs/JointLimits[] limits~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%float64[] positions~%float64[] velocities~%float64[] accelerations~%duration time_from_start~%================================================================================~%MSG: arm_navigation_msgs/JointLimits~%# This message contains information about limits of a particular joint (or control dimension)~%string joint_name~%~%# true if the joint has position limits~%bool has_position_limits~%~%# min and max position limits~%float64 min_position~%float64 max_position~%~%# true if joint has velocity limits~%bool has_velocity_limits~%~%# max velocity limit~%float64 max_velocity~%# min_velocity is assumed to be -max_velocity~%~%# true if joint has acceleration limits~%bool has_acceleration_limits~%# max acceleration limit~%float64 max_acceleration~%# min_acceleration is assumed to be -max_acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointTrajectoryWithLimits>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'limits) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointTrajectoryWithLimits>))
  "Converts a ROS message object to a list"
  (cl:list 'JointTrajectoryWithLimits
    (cl:cons ':trajectory (trajectory msg))
    (cl:cons ':limits (limits msg))
))
