; Auto-generated. Do not edit!


(cl:in-package arm_navigation_msgs-msg)


;//! \htmlinclude WorkspaceParameters.msg.html

(cl:defclass <WorkspaceParameters> (roslisp-msg-protocol:ros-message)
  ((workspace_region_shape
    :reader workspace_region_shape
    :initarg :workspace_region_shape
    :type arm_navigation_msgs-msg:Shape
    :initform (cl:make-instance 'arm_navigation_msgs-msg:Shape))
   (workspace_region_pose
    :reader workspace_region_pose
    :initarg :workspace_region_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass WorkspaceParameters (<WorkspaceParameters>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WorkspaceParameters>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WorkspaceParameters)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-msg:<WorkspaceParameters> is deprecated: use arm_navigation_msgs-msg:WorkspaceParameters instead.")))

(cl:ensure-generic-function 'workspace_region_shape-val :lambda-list '(m))
(cl:defmethod workspace_region_shape-val ((m <WorkspaceParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:workspace_region_shape-val is deprecated.  Use arm_navigation_msgs-msg:workspace_region_shape instead.")
  (workspace_region_shape m))

(cl:ensure-generic-function 'workspace_region_pose-val :lambda-list '(m))
(cl:defmethod workspace_region_pose-val ((m <WorkspaceParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:workspace_region_pose-val is deprecated.  Use arm_navigation_msgs-msg:workspace_region_pose instead.")
  (workspace_region_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WorkspaceParameters>) ostream)
  "Serializes a message object of type '<WorkspaceParameters>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'workspace_region_shape) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'workspace_region_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WorkspaceParameters>) istream)
  "Deserializes a message object of type '<WorkspaceParameters>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'workspace_region_shape) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'workspace_region_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WorkspaceParameters>)))
  "Returns string type for a message object of type '<WorkspaceParameters>"
  "arm_navigation_msgs/WorkspaceParameters")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorkspaceParameters)))
  "Returns string type for a message object of type 'WorkspaceParameters"
  "arm_navigation_msgs/WorkspaceParameters")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WorkspaceParameters>)))
  "Returns md5sum for a message object of type '<WorkspaceParameters>"
  "1487490edff0df276863abf2cf221de5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WorkspaceParameters)))
  "Returns md5sum for a message object of type 'WorkspaceParameters"
  "1487490edff0df276863abf2cf221de5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WorkspaceParameters>)))
  "Returns full string definition for message of type '<WorkspaceParameters>"
  (cl:format cl:nil "# This message contains a set of parameters useful in~%# setting up the workspace for planning~%arm_navigation_msgs/Shape  workspace_region_shape~%geometry_msgs/PoseStamped    workspace_region_pose~%~%~%================================================================================~%MSG: arm_navigation_msgs/Shape~%byte SPHERE=0~%byte BOX=1~%byte CYLINDER=2~%byte MESH=3~%~%byte type~%~%~%#### define sphere, box, cylinder ####~%# the origin of each shape is considered at the shape's center~%~%# for sphere~%# radius := dimensions[0]~%~%# for cylinder~%# radius := dimensions[0]~%# length := dimensions[1]~%# the length is along the Z axis~%~%# for box~%# size_x := dimensions[0]~%# size_y := dimensions[1]~%# size_z := dimensions[2]~%float64[] dimensions~%~%~%#### define mesh ####~%~%# list of triangles; triangle k is defined by tre vertices located~%# at indices triangles[3k], triangles[3k+1], triangles[3k+2]~%int32[] triangles~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WorkspaceParameters)))
  "Returns full string definition for message of type 'WorkspaceParameters"
  (cl:format cl:nil "# This message contains a set of parameters useful in~%# setting up the workspace for planning~%arm_navigation_msgs/Shape  workspace_region_shape~%geometry_msgs/PoseStamped    workspace_region_pose~%~%~%================================================================================~%MSG: arm_navigation_msgs/Shape~%byte SPHERE=0~%byte BOX=1~%byte CYLINDER=2~%byte MESH=3~%~%byte type~%~%~%#### define sphere, box, cylinder ####~%# the origin of each shape is considered at the shape's center~%~%# for sphere~%# radius := dimensions[0]~%~%# for cylinder~%# radius := dimensions[0]~%# length := dimensions[1]~%# the length is along the Z axis~%~%# for box~%# size_x := dimensions[0]~%# size_y := dimensions[1]~%# size_z := dimensions[2]~%float64[] dimensions~%~%~%#### define mesh ####~%~%# list of triangles; triangle k is defined by tre vertices located~%# at indices triangles[3k], triangles[3k+1], triangles[3k+2]~%int32[] triangles~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WorkspaceParameters>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'workspace_region_shape))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'workspace_region_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WorkspaceParameters>))
  "Converts a ROS message object to a list"
  (cl:list 'WorkspaceParameters
    (cl:cons ':workspace_region_shape (workspace_region_shape msg))
    (cl:cons ':workspace_region_pose (workspace_region_pose msg))
))
