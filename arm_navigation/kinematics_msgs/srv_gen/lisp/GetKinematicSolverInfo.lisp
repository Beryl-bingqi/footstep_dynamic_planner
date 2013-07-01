; Auto-generated. Do not edit!


(cl:in-package kinematics_msgs-srv)


;//! \htmlinclude GetKinematicSolverInfo-request.msg.html

(cl:defclass <GetKinematicSolverInfo-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetKinematicSolverInfo-request (<GetKinematicSolverInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetKinematicSolverInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetKinematicSolverInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinematics_msgs-srv:<GetKinematicSolverInfo-request> is deprecated: use kinematics_msgs-srv:GetKinematicSolverInfo-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetKinematicSolverInfo-request>) ostream)
  "Serializes a message object of type '<GetKinematicSolverInfo-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetKinematicSolverInfo-request>) istream)
  "Deserializes a message object of type '<GetKinematicSolverInfo-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetKinematicSolverInfo-request>)))
  "Returns string type for a service object of type '<GetKinematicSolverInfo-request>"
  "kinematics_msgs/GetKinematicSolverInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetKinematicSolverInfo-request)))
  "Returns string type for a service object of type 'GetKinematicSolverInfo-request"
  "kinematics_msgs/GetKinematicSolverInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetKinematicSolverInfo-request>)))
  "Returns md5sum for a message object of type '<GetKinematicSolverInfo-request>"
  "9b591d98efeb66095c1b33a70221cab5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetKinematicSolverInfo-request)))
  "Returns md5sum for a message object of type 'GetKinematicSolverInfo-request"
  "9b591d98efeb66095c1b33a70221cab5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetKinematicSolverInfo-request>)))
  "Returns full string definition for message of type '<GetKinematicSolverInfo-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetKinematicSolverInfo-request)))
  "Returns full string definition for message of type 'GetKinematicSolverInfo-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetKinematicSolverInfo-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetKinematicSolverInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetKinematicSolverInfo-request
))
;//! \htmlinclude GetKinematicSolverInfo-response.msg.html

(cl:defclass <GetKinematicSolverInfo-response> (roslisp-msg-protocol:ros-message)
  ((kinematic_solver_info
    :reader kinematic_solver_info
    :initarg :kinematic_solver_info
    :type kinematics_msgs-msg:KinematicSolverInfo
    :initform (cl:make-instance 'kinematics_msgs-msg:KinematicSolverInfo)))
)

(cl:defclass GetKinematicSolverInfo-response (<GetKinematicSolverInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetKinematicSolverInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetKinematicSolverInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinematics_msgs-srv:<GetKinematicSolverInfo-response> is deprecated: use kinematics_msgs-srv:GetKinematicSolverInfo-response instead.")))

(cl:ensure-generic-function 'kinematic_solver_info-val :lambda-list '(m))
(cl:defmethod kinematic_solver_info-val ((m <GetKinematicSolverInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinematics_msgs-srv:kinematic_solver_info-val is deprecated.  Use kinematics_msgs-srv:kinematic_solver_info instead.")
  (kinematic_solver_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetKinematicSolverInfo-response>) ostream)
  "Serializes a message object of type '<GetKinematicSolverInfo-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'kinematic_solver_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetKinematicSolverInfo-response>) istream)
  "Deserializes a message object of type '<GetKinematicSolverInfo-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'kinematic_solver_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetKinematicSolverInfo-response>)))
  "Returns string type for a service object of type '<GetKinematicSolverInfo-response>"
  "kinematics_msgs/GetKinematicSolverInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetKinematicSolverInfo-response)))
  "Returns string type for a service object of type 'GetKinematicSolverInfo-response"
  "kinematics_msgs/GetKinematicSolverInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetKinematicSolverInfo-response>)))
  "Returns md5sum for a message object of type '<GetKinematicSolverInfo-response>"
  "9b591d98efeb66095c1b33a70221cab5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetKinematicSolverInfo-response)))
  "Returns md5sum for a message object of type 'GetKinematicSolverInfo-response"
  "9b591d98efeb66095c1b33a70221cab5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetKinematicSolverInfo-response>)))
  "Returns full string definition for message of type '<GetKinematicSolverInfo-response>"
  (cl:format cl:nil "kinematics_msgs/KinematicSolverInfo kinematic_solver_info~%~%================================================================================~%MSG: kinematics_msgs/KinematicSolverInfo~%# A list of joints in the kinematic tree~%string[] joint_names~%# A list of joint limits corresponding to the joint names~%arm_navigation_msgs/JointLimits[] limits~%# A list of links that the kinematics node provides solutions for~%string[] link_names~%~%================================================================================~%MSG: arm_navigation_msgs/JointLimits~%# This message contains information about limits of a particular joint (or control dimension)~%string joint_name~%~%# true if the joint has position limits~%bool has_position_limits~%~%# min and max position limits~%float64 min_position~%float64 max_position~%~%# true if joint has velocity limits~%bool has_velocity_limits~%~%# max velocity limit~%float64 max_velocity~%# min_velocity is assumed to be -max_velocity~%~%# true if joint has acceleration limits~%bool has_acceleration_limits~%# max acceleration limit~%float64 max_acceleration~%# min_acceleration is assumed to be -max_acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetKinematicSolverInfo-response)))
  "Returns full string definition for message of type 'GetKinematicSolverInfo-response"
  (cl:format cl:nil "kinematics_msgs/KinematicSolverInfo kinematic_solver_info~%~%================================================================================~%MSG: kinematics_msgs/KinematicSolverInfo~%# A list of joints in the kinematic tree~%string[] joint_names~%# A list of joint limits corresponding to the joint names~%arm_navigation_msgs/JointLimits[] limits~%# A list of links that the kinematics node provides solutions for~%string[] link_names~%~%================================================================================~%MSG: arm_navigation_msgs/JointLimits~%# This message contains information about limits of a particular joint (or control dimension)~%string joint_name~%~%# true if the joint has position limits~%bool has_position_limits~%~%# min and max position limits~%float64 min_position~%float64 max_position~%~%# true if joint has velocity limits~%bool has_velocity_limits~%~%# max velocity limit~%float64 max_velocity~%# min_velocity is assumed to be -max_velocity~%~%# true if joint has acceleration limits~%bool has_acceleration_limits~%# max acceleration limit~%float64 max_acceleration~%# min_acceleration is assumed to be -max_acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetKinematicSolverInfo-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'kinematic_solver_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetKinematicSolverInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetKinematicSolverInfo-response
    (cl:cons ':kinematic_solver_info (kinematic_solver_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetKinematicSolverInfo)))
  'GetKinematicSolverInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetKinematicSolverInfo)))
  'GetKinematicSolverInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetKinematicSolverInfo)))
  "Returns string type for a service object of type '<GetKinematicSolverInfo>"
  "kinematics_msgs/GetKinematicSolverInfo")