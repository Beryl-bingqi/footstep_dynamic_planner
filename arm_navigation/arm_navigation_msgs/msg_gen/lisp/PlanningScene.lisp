; Auto-generated. Do not edit!


(cl:in-package arm_navigation_msgs-msg)


;//! \htmlinclude PlanningScene.msg.html

(cl:defclass <PlanningScene> (roslisp-msg-protocol:ros-message)
  ((robot_state
    :reader robot_state
    :initarg :robot_state
    :type arm_navigation_msgs-msg:RobotState
    :initform (cl:make-instance 'arm_navigation_msgs-msg:RobotState))
   (fixed_frame_transforms
    :reader fixed_frame_transforms
    :initarg :fixed_frame_transforms
    :type (cl:vector geometry_msgs-msg:TransformStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:TransformStamped :initial-element (cl:make-instance 'geometry_msgs-msg:TransformStamped)))
   (allowed_collision_matrix
    :reader allowed_collision_matrix
    :initarg :allowed_collision_matrix
    :type arm_navigation_msgs-msg:AllowedCollisionMatrix
    :initform (cl:make-instance 'arm_navigation_msgs-msg:AllowedCollisionMatrix))
   (allowed_contacts
    :reader allowed_contacts
    :initarg :allowed_contacts
    :type (cl:vector arm_navigation_msgs-msg:AllowedContactSpecification)
   :initform (cl:make-array 0 :element-type 'arm_navigation_msgs-msg:AllowedContactSpecification :initial-element (cl:make-instance 'arm_navigation_msgs-msg:AllowedContactSpecification)))
   (link_padding
    :reader link_padding
    :initarg :link_padding
    :type (cl:vector arm_navigation_msgs-msg:LinkPadding)
   :initform (cl:make-array 0 :element-type 'arm_navigation_msgs-msg:LinkPadding :initial-element (cl:make-instance 'arm_navigation_msgs-msg:LinkPadding)))
   (collision_objects
    :reader collision_objects
    :initarg :collision_objects
    :type (cl:vector arm_navigation_msgs-msg:CollisionObject)
   :initform (cl:make-array 0 :element-type 'arm_navigation_msgs-msg:CollisionObject :initial-element (cl:make-instance 'arm_navigation_msgs-msg:CollisionObject)))
   (attached_collision_objects
    :reader attached_collision_objects
    :initarg :attached_collision_objects
    :type (cl:vector arm_navigation_msgs-msg:AttachedCollisionObject)
   :initform (cl:make-array 0 :element-type 'arm_navigation_msgs-msg:AttachedCollisionObject :initial-element (cl:make-instance 'arm_navigation_msgs-msg:AttachedCollisionObject)))
   (collision_map
    :reader collision_map
    :initarg :collision_map
    :type arm_navigation_msgs-msg:CollisionMap
    :initform (cl:make-instance 'arm_navigation_msgs-msg:CollisionMap)))
)

(cl:defclass PlanningScene (<PlanningScene>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanningScene>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanningScene)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-msg:<PlanningScene> is deprecated: use arm_navigation_msgs-msg:PlanningScene instead.")))

(cl:ensure-generic-function 'robot_state-val :lambda-list '(m))
(cl:defmethod robot_state-val ((m <PlanningScene>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:robot_state-val is deprecated.  Use arm_navigation_msgs-msg:robot_state instead.")
  (robot_state m))

(cl:ensure-generic-function 'fixed_frame_transforms-val :lambda-list '(m))
(cl:defmethod fixed_frame_transforms-val ((m <PlanningScene>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:fixed_frame_transforms-val is deprecated.  Use arm_navigation_msgs-msg:fixed_frame_transforms instead.")
  (fixed_frame_transforms m))

(cl:ensure-generic-function 'allowed_collision_matrix-val :lambda-list '(m))
(cl:defmethod allowed_collision_matrix-val ((m <PlanningScene>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:allowed_collision_matrix-val is deprecated.  Use arm_navigation_msgs-msg:allowed_collision_matrix instead.")
  (allowed_collision_matrix m))

(cl:ensure-generic-function 'allowed_contacts-val :lambda-list '(m))
(cl:defmethod allowed_contacts-val ((m <PlanningScene>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:allowed_contacts-val is deprecated.  Use arm_navigation_msgs-msg:allowed_contacts instead.")
  (allowed_contacts m))

(cl:ensure-generic-function 'link_padding-val :lambda-list '(m))
(cl:defmethod link_padding-val ((m <PlanningScene>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:link_padding-val is deprecated.  Use arm_navigation_msgs-msg:link_padding instead.")
  (link_padding m))

(cl:ensure-generic-function 'collision_objects-val :lambda-list '(m))
(cl:defmethod collision_objects-val ((m <PlanningScene>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:collision_objects-val is deprecated.  Use arm_navigation_msgs-msg:collision_objects instead.")
  (collision_objects m))

(cl:ensure-generic-function 'attached_collision_objects-val :lambda-list '(m))
(cl:defmethod attached_collision_objects-val ((m <PlanningScene>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:attached_collision_objects-val is deprecated.  Use arm_navigation_msgs-msg:attached_collision_objects instead.")
  (attached_collision_objects m))

(cl:ensure-generic-function 'collision_map-val :lambda-list '(m))
(cl:defmethod collision_map-val ((m <PlanningScene>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:collision_map-val is deprecated.  Use arm_navigation_msgs-msg:collision_map instead.")
  (collision_map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanningScene>) ostream)
  "Serializes a message object of type '<PlanningScene>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_state) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fixed_frame_transforms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'fixed_frame_transforms))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'allowed_collision_matrix) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'allowed_contacts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'allowed_contacts))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'link_padding))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'link_padding))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'collision_objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'collision_objects))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'attached_collision_objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'attached_collision_objects))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'collision_map) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanningScene>) istream)
  "Deserializes a message object of type '<PlanningScene>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_state) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fixed_frame_transforms) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fixed_frame_transforms)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:TransformStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'allowed_collision_matrix) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'allowed_contacts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'allowed_contacts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'arm_navigation_msgs-msg:AllowedContactSpecification))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'link_padding) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'link_padding)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'arm_navigation_msgs-msg:LinkPadding))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'collision_objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'collision_objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'arm_navigation_msgs-msg:CollisionObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'attached_collision_objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'attached_collision_objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'arm_navigation_msgs-msg:AttachedCollisionObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'collision_map) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanningScene>)))
  "Returns string type for a message object of type '<PlanningScene>"
  "arm_navigation_msgs/PlanningScene")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanningScene)))
  "Returns string type for a message object of type 'PlanningScene"
  "arm_navigation_msgs/PlanningScene")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanningScene>)))
  "Returns md5sum for a message object of type '<PlanningScene>"
  "6d1add8ef6efdd62d194ef430abd4b75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanningScene)))
  "Returns md5sum for a message object of type 'PlanningScene"
  "6d1add8ef6efdd62d194ef430abd4b75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanningScene>)))
  "Returns full string definition for message of type '<PlanningScene>"
  (cl:format cl:nil "#full robot state~%arm_navigation_msgs/RobotState robot_state~%~%#additional frames for duplicating tf~%geometry_msgs/TransformStamped[] fixed_frame_transforms~%~%#full allowed collision matrix~%AllowedCollisionMatrix allowed_collision_matrix~%~%#allowed contacts~%arm_navigation_msgs/AllowedContactSpecification[] allowed_contacts~%~%#all link paddings~%arm_navigation_msgs/LinkPadding[] link_padding~%~%#collision objects~%arm_navigation_msgs/CollisionObject[] collision_objects~%arm_navigation_msgs/AttachedCollisionObject[] attached_collision_objects~%~%#the collision map~%arm_navigation_msgs/CollisionMap collision_map~%~%================================================================================~%MSG: arm_navigation_msgs/RobotState~%# This message contains information about the robot state, i.e. the positions of its joints and links~%sensor_msgs/JointState joint_state~%arm_navigation_msgs/MultiDOFJointState multi_dof_joint_state~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointState~%#A representation of a multi-dof joint state~%time stamp~%string[] joint_names~%string[] frame_ids~%string[] child_frame_ids~%geometry_msgs/Pose[] poses~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://www.ros.org/wiki/tf\">tf</a> package. ~%# See it's documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: arm_navigation_msgs/AllowedCollisionMatrix~%# the list of link names in the matrix~%string[] link_names~%~%# the individual entries in the allowed collision matrix~%# symmetric, with same order as link_names~%AllowedCollisionEntry[] entries~%~%================================================================================~%MSG: arm_navigation_msgs/AllowedCollisionEntry~%# whether or not collision checking is enabled~%bool[] enabled~%~%================================================================================~%MSG: arm_navigation_msgs/AllowedContactSpecification~%# The names of the regions~%string name~%~%# The shape of the region in the environment~%arm_navigation_msgs/Shape shape~%~%# The pose of the space defining the region~%geometry_msgs/PoseStamped pose_stamped~%~%# The set of links that will be allowed to have penetration contact within this region~%string[] link_names~%~%# The maximum penetration depth allowed for every link~%float64 penetration_depth~%~%================================================================================~%MSG: arm_navigation_msgs/Shape~%byte SPHERE=0~%byte BOX=1~%byte CYLINDER=2~%byte MESH=3~%~%byte type~%~%~%#### define sphere, box, cylinder ####~%# the origin of each shape is considered at the shape's center~%~%# for sphere~%# radius := dimensions[0]~%~%# for cylinder~%# radius := dimensions[0]~%# length := dimensions[1]~%# the length is along the Z axis~%~%# for box~%# size_x := dimensions[0]~%# size_y := dimensions[1]~%# size_z := dimensions[2]~%float64[] dimensions~%~%~%#### define mesh ####~%~%# list of triangles; triangle k is defined by tre vertices located~%# at indices triangles[3k], triangles[3k+1], triangles[3k+2]~%int32[] triangles~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: arm_navigation_msgs/LinkPadding~%#name for the link~%string link_name~%~%# padding to apply to the link~%float64 padding~%~%================================================================================~%MSG: arm_navigation_msgs/CollisionObject~%# a header, used for interpreting the poses~%Header header~%~%# the id of the object~%string id~%~%# The padding used for filtering points near the object.~%# This does not affect collision checking for the object.  ~%# Set to negative to get zero padding.~%float32 padding~%~%#This contains what is to be done with the object~%CollisionObjectOperation operation~%~%#the shapes associated with the object~%arm_navigation_msgs/Shape[] shapes~%~%#the poses associated with the shapes - will be transformed using the header~%geometry_msgs/Pose[] poses~%~%================================================================================~%MSG: arm_navigation_msgs/CollisionObjectOperation~%#Puts the object into the environment~%#or updates the object if already added~%byte ADD=0~%~%#Removes the object from the environment entirely~%byte REMOVE=1~%~%#Only valid within the context of a CollisionAttachedObject message~%#Will be ignored if sent with an CollisionObject message~%#Takes an attached object, detaches from the attached link~%#But adds back in as regular object~%byte DETACH_AND_ADD_AS_OBJECT=2~%~%#Only valid within the context of a CollisionAttachedObject message~%#Will be ignored if sent with an CollisionObject message~%#Takes current object in the environment and removes it as~%#a regular object~%byte ATTACH_AND_REMOVE_AS_OBJECT=3~%~%# Byte code for operation~%byte operation~%~%================================================================================~%MSG: arm_navigation_msgs/AttachedCollisionObject~%# The CollisionObject will be attached with a fixed joint to this link~%# If link name is set to REMOVE_ALL_ATTACHED_OBJECTS and object.operation ~%# is set to REMOVE will remove all attached bodies attached to any object~%string link_name~%~%#Reserved for indicating that all attached objects should be removed~%string REMOVE_ALL_ATTACHED_OBJECTS = \"all\"~%~%#This contains the actual shapes and poses for the CollisionObject~%#to be attached to the link~%#If action is remove and no object.id is set, all objects~%#attached to the link indicated by link_name will be removed~%CollisionObject object~%~%# The set of links that the attached objects are allowed to touch~%# by default - the link_name is included by default~%string[] touch_links~%~%================================================================================~%MSG: arm_navigation_msgs/CollisionMap~%#header for interpreting box positions~%Header header~%~%#boxes for use in collision testing~%OrientedBoundingBox[] boxes~%~%================================================================================~%MSG: arm_navigation_msgs/OrientedBoundingBox~%#the center of the box~%geometry_msgs/Point32 center~%~%#the extents of the box, assuming the center is at the point~%geometry_msgs/Point32 extents~%~%#the axis of the box~%geometry_msgs/Point32 axis~%~%#the angle of rotation around the axis~%float32 angle~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanningScene)))
  "Returns full string definition for message of type 'PlanningScene"
  (cl:format cl:nil "#full robot state~%arm_navigation_msgs/RobotState robot_state~%~%#additional frames for duplicating tf~%geometry_msgs/TransformStamped[] fixed_frame_transforms~%~%#full allowed collision matrix~%AllowedCollisionMatrix allowed_collision_matrix~%~%#allowed contacts~%arm_navigation_msgs/AllowedContactSpecification[] allowed_contacts~%~%#all link paddings~%arm_navigation_msgs/LinkPadding[] link_padding~%~%#collision objects~%arm_navigation_msgs/CollisionObject[] collision_objects~%arm_navigation_msgs/AttachedCollisionObject[] attached_collision_objects~%~%#the collision map~%arm_navigation_msgs/CollisionMap collision_map~%~%================================================================================~%MSG: arm_navigation_msgs/RobotState~%# This message contains information about the robot state, i.e. the positions of its joints and links~%sensor_msgs/JointState joint_state~%arm_navigation_msgs/MultiDOFJointState multi_dof_joint_state~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: arm_navigation_msgs/MultiDOFJointState~%#A representation of a multi-dof joint state~%time stamp~%string[] joint_names~%string[] frame_ids~%string[] child_frame_ids~%geometry_msgs/Pose[] poses~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://www.ros.org/wiki/tf\">tf</a> package. ~%# See it's documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: arm_navigation_msgs/AllowedCollisionMatrix~%# the list of link names in the matrix~%string[] link_names~%~%# the individual entries in the allowed collision matrix~%# symmetric, with same order as link_names~%AllowedCollisionEntry[] entries~%~%================================================================================~%MSG: arm_navigation_msgs/AllowedCollisionEntry~%# whether or not collision checking is enabled~%bool[] enabled~%~%================================================================================~%MSG: arm_navigation_msgs/AllowedContactSpecification~%# The names of the regions~%string name~%~%# The shape of the region in the environment~%arm_navigation_msgs/Shape shape~%~%# The pose of the space defining the region~%geometry_msgs/PoseStamped pose_stamped~%~%# The set of links that will be allowed to have penetration contact within this region~%string[] link_names~%~%# The maximum penetration depth allowed for every link~%float64 penetration_depth~%~%================================================================================~%MSG: arm_navigation_msgs/Shape~%byte SPHERE=0~%byte BOX=1~%byte CYLINDER=2~%byte MESH=3~%~%byte type~%~%~%#### define sphere, box, cylinder ####~%# the origin of each shape is considered at the shape's center~%~%# for sphere~%# radius := dimensions[0]~%~%# for cylinder~%# radius := dimensions[0]~%# length := dimensions[1]~%# the length is along the Z axis~%~%# for box~%# size_x := dimensions[0]~%# size_y := dimensions[1]~%# size_z := dimensions[2]~%float64[] dimensions~%~%~%#### define mesh ####~%~%# list of triangles; triangle k is defined by tre vertices located~%# at indices triangles[3k], triangles[3k+1], triangles[3k+2]~%int32[] triangles~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: arm_navigation_msgs/LinkPadding~%#name for the link~%string link_name~%~%# padding to apply to the link~%float64 padding~%~%================================================================================~%MSG: arm_navigation_msgs/CollisionObject~%# a header, used for interpreting the poses~%Header header~%~%# the id of the object~%string id~%~%# The padding used for filtering points near the object.~%# This does not affect collision checking for the object.  ~%# Set to negative to get zero padding.~%float32 padding~%~%#This contains what is to be done with the object~%CollisionObjectOperation operation~%~%#the shapes associated with the object~%arm_navigation_msgs/Shape[] shapes~%~%#the poses associated with the shapes - will be transformed using the header~%geometry_msgs/Pose[] poses~%~%================================================================================~%MSG: arm_navigation_msgs/CollisionObjectOperation~%#Puts the object into the environment~%#or updates the object if already added~%byte ADD=0~%~%#Removes the object from the environment entirely~%byte REMOVE=1~%~%#Only valid within the context of a CollisionAttachedObject message~%#Will be ignored if sent with an CollisionObject message~%#Takes an attached object, detaches from the attached link~%#But adds back in as regular object~%byte DETACH_AND_ADD_AS_OBJECT=2~%~%#Only valid within the context of a CollisionAttachedObject message~%#Will be ignored if sent with an CollisionObject message~%#Takes current object in the environment and removes it as~%#a regular object~%byte ATTACH_AND_REMOVE_AS_OBJECT=3~%~%# Byte code for operation~%byte operation~%~%================================================================================~%MSG: arm_navigation_msgs/AttachedCollisionObject~%# The CollisionObject will be attached with a fixed joint to this link~%# If link name is set to REMOVE_ALL_ATTACHED_OBJECTS and object.operation ~%# is set to REMOVE will remove all attached bodies attached to any object~%string link_name~%~%#Reserved for indicating that all attached objects should be removed~%string REMOVE_ALL_ATTACHED_OBJECTS = \"all\"~%~%#This contains the actual shapes and poses for the CollisionObject~%#to be attached to the link~%#If action is remove and no object.id is set, all objects~%#attached to the link indicated by link_name will be removed~%CollisionObject object~%~%# The set of links that the attached objects are allowed to touch~%# by default - the link_name is included by default~%string[] touch_links~%~%================================================================================~%MSG: arm_navigation_msgs/CollisionMap~%#header for interpreting box positions~%Header header~%~%#boxes for use in collision testing~%OrientedBoundingBox[] boxes~%~%================================================================================~%MSG: arm_navigation_msgs/OrientedBoundingBox~%#the center of the box~%geometry_msgs/Point32 center~%~%#the extents of the box, assuming the center is at the point~%geometry_msgs/Point32 extents~%~%#the axis of the box~%geometry_msgs/Point32 axis~%~%#the angle of rotation around the axis~%float32 angle~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanningScene>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_state))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fixed_frame_transforms) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'allowed_collision_matrix))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'allowed_contacts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'link_padding) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'collision_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'attached_collision_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'collision_map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanningScene>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanningScene
    (cl:cons ':robot_state (robot_state msg))
    (cl:cons ':fixed_frame_transforms (fixed_frame_transforms msg))
    (cl:cons ':allowed_collision_matrix (allowed_collision_matrix msg))
    (cl:cons ':allowed_contacts (allowed_contacts msg))
    (cl:cons ':link_padding (link_padding msg))
    (cl:cons ':collision_objects (collision_objects msg))
    (cl:cons ':attached_collision_objects (attached_collision_objects msg))
    (cl:cons ':collision_map (collision_map msg))
))
