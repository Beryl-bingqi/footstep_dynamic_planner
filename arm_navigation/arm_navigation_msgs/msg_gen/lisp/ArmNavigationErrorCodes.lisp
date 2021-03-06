; Auto-generated. Do not edit!


(cl:in-package arm_navigation_msgs-msg)


;//! \htmlinclude ArmNavigationErrorCodes.msg.html

(cl:defclass <ArmNavigationErrorCodes> (roslisp-msg-protocol:ros-message)
  ((val
    :reader val
    :initarg :val
    :type cl:integer
    :initform 0))
)

(cl:defclass ArmNavigationErrorCodes (<ArmNavigationErrorCodes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmNavigationErrorCodes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmNavigationErrorCodes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-msg:<ArmNavigationErrorCodes> is deprecated: use arm_navigation_msgs-msg:ArmNavigationErrorCodes instead.")))

(cl:ensure-generic-function 'val-val :lambda-list '(m))
(cl:defmethod val-val ((m <ArmNavigationErrorCodes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:val-val is deprecated.  Use arm_navigation_msgs-msg:val instead.")
  (val m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ArmNavigationErrorCodes>)))
    "Constants for message type '<ArmNavigationErrorCodes>"
  '((:PLANNING_FAILED . -1)
    (:SUCCESS . 1)
    (:TIMED_OUT . -2)
    (:START_STATE_IN_COLLISION . -3)
    (:START_STATE_VIOLATES_PATH_CONSTRAINTS . -4)
    (:GOAL_IN_COLLISION . -5)
    (:GOAL_VIOLATES_PATH_CONSTRAINTS . -6)
    (:INVALID_ROBOT_STATE . -7)
    (:INCOMPLETE_ROBOT_STATE . -8)
    (:INVALID_PLANNER_ID . -9)
    (:INVALID_NUM_PLANNING_ATTEMPTS . -10)
    (:INVALID_ALLOWED_PLANNING_TIME . -11)
    (:INVALID_GROUP_NAME . -12)
    (:INVALID_GOAL_JOINT_CONSTRAINTS . -13)
    (:INVALID_GOAL_POSITION_CONSTRAINTS . -14)
    (:INVALID_GOAL_ORIENTATION_CONSTRAINTS . -15)
    (:INVALID_PATH_JOINT_CONSTRAINTS . -16)
    (:INVALID_PATH_POSITION_CONSTRAINTS . -17)
    (:INVALID_PATH_ORIENTATION_CONSTRAINTS . -18)
    (:INVALID_TRAJECTORY . -19)
    (:INVALID_INDEX . -20)
    (:JOINT_LIMITS_VIOLATED . -21)
    (:PATH_CONSTRAINTS_VIOLATED . -22)
    (:COLLISION_CONSTRAINTS_VIOLATED . -23)
    (:GOAL_CONSTRAINTS_VIOLATED . -24)
    (:JOINTS_NOT_MOVING . -25)
    (:TRAJECTORY_CONTROLLER_FAILED . -26)
    (:FRAME_TRANSFORM_FAILURE . -27)
    (:COLLISION_CHECKING_UNAVAILABLE . -28)
    (:ROBOT_STATE_STALE . -29)
    (:SENSOR_INFO_STALE . -30)
    (:NO_IK_SOLUTION . -31)
    (:INVALID_LINK_NAME . -32)
    (:IK_LINK_IN_COLLISION . -33)
    (:NO_FK_SOLUTION . -34)
    (:KINEMATICS_STATE_IN_COLLISION . -35)
    (:INVALID_TIMEOUT . -36))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ArmNavigationErrorCodes)))
    "Constants for message type 'ArmNavigationErrorCodes"
  '((:PLANNING_FAILED . -1)
    (:SUCCESS . 1)
    (:TIMED_OUT . -2)
    (:START_STATE_IN_COLLISION . -3)
    (:START_STATE_VIOLATES_PATH_CONSTRAINTS . -4)
    (:GOAL_IN_COLLISION . -5)
    (:GOAL_VIOLATES_PATH_CONSTRAINTS . -6)
    (:INVALID_ROBOT_STATE . -7)
    (:INCOMPLETE_ROBOT_STATE . -8)
    (:INVALID_PLANNER_ID . -9)
    (:INVALID_NUM_PLANNING_ATTEMPTS . -10)
    (:INVALID_ALLOWED_PLANNING_TIME . -11)
    (:INVALID_GROUP_NAME . -12)
    (:INVALID_GOAL_JOINT_CONSTRAINTS . -13)
    (:INVALID_GOAL_POSITION_CONSTRAINTS . -14)
    (:INVALID_GOAL_ORIENTATION_CONSTRAINTS . -15)
    (:INVALID_PATH_JOINT_CONSTRAINTS . -16)
    (:INVALID_PATH_POSITION_CONSTRAINTS . -17)
    (:INVALID_PATH_ORIENTATION_CONSTRAINTS . -18)
    (:INVALID_TRAJECTORY . -19)
    (:INVALID_INDEX . -20)
    (:JOINT_LIMITS_VIOLATED . -21)
    (:PATH_CONSTRAINTS_VIOLATED . -22)
    (:COLLISION_CONSTRAINTS_VIOLATED . -23)
    (:GOAL_CONSTRAINTS_VIOLATED . -24)
    (:JOINTS_NOT_MOVING . -25)
    (:TRAJECTORY_CONTROLLER_FAILED . -26)
    (:FRAME_TRANSFORM_FAILURE . -27)
    (:COLLISION_CHECKING_UNAVAILABLE . -28)
    (:ROBOT_STATE_STALE . -29)
    (:SENSOR_INFO_STALE . -30)
    (:NO_IK_SOLUTION . -31)
    (:INVALID_LINK_NAME . -32)
    (:IK_LINK_IN_COLLISION . -33)
    (:NO_FK_SOLUTION . -34)
    (:KINEMATICS_STATE_IN_COLLISION . -35)
    (:INVALID_TIMEOUT . -36))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmNavigationErrorCodes>) ostream)
  "Serializes a message object of type '<ArmNavigationErrorCodes>"
  (cl:let* ((signed (cl:slot-value msg 'val)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmNavigationErrorCodes>) istream)
  "Deserializes a message object of type '<ArmNavigationErrorCodes>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'val) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmNavigationErrorCodes>)))
  "Returns string type for a message object of type '<ArmNavigationErrorCodes>"
  "arm_navigation_msgs/ArmNavigationErrorCodes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmNavigationErrorCodes)))
  "Returns string type for a message object of type 'ArmNavigationErrorCodes"
  "arm_navigation_msgs/ArmNavigationErrorCodes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmNavigationErrorCodes>)))
  "Returns md5sum for a message object of type '<ArmNavigationErrorCodes>"
  "5acf26755415e1ec18a6d523028f204d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmNavigationErrorCodes)))
  "Returns md5sum for a message object of type 'ArmNavigationErrorCodes"
  "5acf26755415e1ec18a6d523028f204d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmNavigationErrorCodes>)))
  "Returns full string definition for message of type '<ArmNavigationErrorCodes>"
  (cl:format cl:nil "int32 val~%~%# overall behavior~%int32 PLANNING_FAILED=-1~%int32 SUCCESS=1~%int32 TIMED_OUT=-2~%~%# start state errors~%int32 START_STATE_IN_COLLISION=-3~%int32 START_STATE_VIOLATES_PATH_CONSTRAINTS=-4~%~%# goal errors~%int32 GOAL_IN_COLLISION=-5~%int32 GOAL_VIOLATES_PATH_CONSTRAINTS=-6~%~%# robot state~%int32 INVALID_ROBOT_STATE=-7~%int32 INCOMPLETE_ROBOT_STATE=-8~%~%# planning request errors~%int32 INVALID_PLANNER_ID=-9~%int32 INVALID_NUM_PLANNING_ATTEMPTS=-10~%int32 INVALID_ALLOWED_PLANNING_TIME=-11~%int32 INVALID_GROUP_NAME=-12~%int32 INVALID_GOAL_JOINT_CONSTRAINTS=-13~%int32 INVALID_GOAL_POSITION_CONSTRAINTS=-14~%int32 INVALID_GOAL_ORIENTATION_CONSTRAINTS=-15~%int32 INVALID_PATH_JOINT_CONSTRAINTS=-16~%int32 INVALID_PATH_POSITION_CONSTRAINTS=-17~%int32 INVALID_PATH_ORIENTATION_CONSTRAINTS=-18~%~%# state/trajectory monitor errors~%int32 INVALID_TRAJECTORY=-19~%int32 INVALID_INDEX=-20~%int32 JOINT_LIMITS_VIOLATED=-21~%int32 PATH_CONSTRAINTS_VIOLATED=-22~%int32 COLLISION_CONSTRAINTS_VIOLATED=-23~%int32 GOAL_CONSTRAINTS_VIOLATED=-24~%int32 JOINTS_NOT_MOVING=-25~%int32 TRAJECTORY_CONTROLLER_FAILED=-26~%~%# system errors~%int32 FRAME_TRANSFORM_FAILURE=-27~%int32 COLLISION_CHECKING_UNAVAILABLE=-28~%int32 ROBOT_STATE_STALE=-29~%int32 SENSOR_INFO_STALE=-30~%~%# kinematics errors~%int32 NO_IK_SOLUTION=-31~%int32 INVALID_LINK_NAME=-32~%int32 IK_LINK_IN_COLLISION=-33~%int32 NO_FK_SOLUTION=-34~%int32 KINEMATICS_STATE_IN_COLLISION=-35~%~%# general errors~%int32 INVALID_TIMEOUT=-36~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmNavigationErrorCodes)))
  "Returns full string definition for message of type 'ArmNavigationErrorCodes"
  (cl:format cl:nil "int32 val~%~%# overall behavior~%int32 PLANNING_FAILED=-1~%int32 SUCCESS=1~%int32 TIMED_OUT=-2~%~%# start state errors~%int32 START_STATE_IN_COLLISION=-3~%int32 START_STATE_VIOLATES_PATH_CONSTRAINTS=-4~%~%# goal errors~%int32 GOAL_IN_COLLISION=-5~%int32 GOAL_VIOLATES_PATH_CONSTRAINTS=-6~%~%# robot state~%int32 INVALID_ROBOT_STATE=-7~%int32 INCOMPLETE_ROBOT_STATE=-8~%~%# planning request errors~%int32 INVALID_PLANNER_ID=-9~%int32 INVALID_NUM_PLANNING_ATTEMPTS=-10~%int32 INVALID_ALLOWED_PLANNING_TIME=-11~%int32 INVALID_GROUP_NAME=-12~%int32 INVALID_GOAL_JOINT_CONSTRAINTS=-13~%int32 INVALID_GOAL_POSITION_CONSTRAINTS=-14~%int32 INVALID_GOAL_ORIENTATION_CONSTRAINTS=-15~%int32 INVALID_PATH_JOINT_CONSTRAINTS=-16~%int32 INVALID_PATH_POSITION_CONSTRAINTS=-17~%int32 INVALID_PATH_ORIENTATION_CONSTRAINTS=-18~%~%# state/trajectory monitor errors~%int32 INVALID_TRAJECTORY=-19~%int32 INVALID_INDEX=-20~%int32 JOINT_LIMITS_VIOLATED=-21~%int32 PATH_CONSTRAINTS_VIOLATED=-22~%int32 COLLISION_CONSTRAINTS_VIOLATED=-23~%int32 GOAL_CONSTRAINTS_VIOLATED=-24~%int32 JOINTS_NOT_MOVING=-25~%int32 TRAJECTORY_CONTROLLER_FAILED=-26~%~%# system errors~%int32 FRAME_TRANSFORM_FAILURE=-27~%int32 COLLISION_CHECKING_UNAVAILABLE=-28~%int32 ROBOT_STATE_STALE=-29~%int32 SENSOR_INFO_STALE=-30~%~%# kinematics errors~%int32 NO_IK_SOLUTION=-31~%int32 INVALID_LINK_NAME=-32~%int32 IK_LINK_IN_COLLISION=-33~%int32 NO_FK_SOLUTION=-34~%int32 KINEMATICS_STATE_IN_COLLISION=-35~%~%# general errors~%int32 INVALID_TIMEOUT=-36~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmNavigationErrorCodes>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmNavigationErrorCodes>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmNavigationErrorCodes
    (cl:cons ':val (val msg))
))
