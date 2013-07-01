; Auto-generated. Do not edit!


(cl:in-package arm_navigation_msgs-srv)


;//! \htmlinclude GetCollisionObjects-request.msg.html

(cl:defclass <GetCollisionObjects-request> (roslisp-msg-protocol:ros-message)
  ((include_points
    :reader include_points
    :initarg :include_points
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetCollisionObjects-request (<GetCollisionObjects-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCollisionObjects-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCollisionObjects-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-srv:<GetCollisionObjects-request> is deprecated: use arm_navigation_msgs-srv:GetCollisionObjects-request instead.")))

(cl:ensure-generic-function 'include_points-val :lambda-list '(m))
(cl:defmethod include_points-val ((m <GetCollisionObjects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:include_points-val is deprecated.  Use arm_navigation_msgs-srv:include_points instead.")
  (include_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCollisionObjects-request>) ostream)
  "Serializes a message object of type '<GetCollisionObjects-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'include_points) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCollisionObjects-request>) istream)
  "Deserializes a message object of type '<GetCollisionObjects-request>"
    (cl:setf (cl:slot-value msg 'include_points) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCollisionObjects-request>)))
  "Returns string type for a service object of type '<GetCollisionObjects-request>"
  "arm_navigation_msgs/GetCollisionObjectsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCollisionObjects-request)))
  "Returns string type for a service object of type 'GetCollisionObjects-request"
  "arm_navigation_msgs/GetCollisionObjectsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCollisionObjects-request>)))
  "Returns md5sum for a message object of type '<GetCollisionObjects-request>"
  "8a4f57995c7be09c22ca01de6eb557ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCollisionObjects-request)))
  "Returns md5sum for a message object of type 'GetCollisionObjects-request"
  "8a4f57995c7be09c22ca01de6eb557ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCollisionObjects-request>)))
  "Returns full string definition for message of type '<GetCollisionObjects-request>"
  (cl:format cl:nil "~%~%~%bool include_points~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCollisionObjects-request)))
  "Returns full string definition for message of type 'GetCollisionObjects-request"
  (cl:format cl:nil "~%~%~%bool include_points~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCollisionObjects-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCollisionObjects-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCollisionObjects-request
    (cl:cons ':include_points (include_points msg))
))
;//! \htmlinclude GetCollisionObjects-response.msg.html

(cl:defclass <GetCollisionObjects-response> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type arm_navigation_msgs-msg:CollisionMap
    :initform (cl:make-instance 'arm_navigation_msgs-msg:CollisionMap))
   (collision_objects
    :reader collision_objects
    :initarg :collision_objects
    :type (cl:vector arm_navigation_msgs-msg:CollisionObject)
   :initform (cl:make-array 0 :element-type 'arm_navigation_msgs-msg:CollisionObject :initial-element (cl:make-instance 'arm_navigation_msgs-msg:CollisionObject)))
   (attached_collision_objects
    :reader attached_collision_objects
    :initarg :attached_collision_objects
    :type (cl:vector arm_navigation_msgs-msg:AttachedCollisionObject)
   :initform (cl:make-array 0 :element-type 'arm_navigation_msgs-msg:AttachedCollisionObject :initial-element (cl:make-instance 'arm_navigation_msgs-msg:AttachedCollisionObject))))
)

(cl:defclass GetCollisionObjects-response (<GetCollisionObjects-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCollisionObjects-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCollisionObjects-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-srv:<GetCollisionObjects-response> is deprecated: use arm_navigation_msgs-srv:GetCollisionObjects-response instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <GetCollisionObjects-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:points-val is deprecated.  Use arm_navigation_msgs-srv:points instead.")
  (points m))

(cl:ensure-generic-function 'collision_objects-val :lambda-list '(m))
(cl:defmethod collision_objects-val ((m <GetCollisionObjects-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:collision_objects-val is deprecated.  Use arm_navigation_msgs-srv:collision_objects instead.")
  (collision_objects m))

(cl:ensure-generic-function 'attached_collision_objects-val :lambda-list '(m))
(cl:defmethod attached_collision_objects-val ((m <GetCollisionObjects-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-srv:attached_collision_objects-val is deprecated.  Use arm_navigation_msgs-srv:attached_collision_objects instead.")
  (attached_collision_objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCollisionObjects-response>) ostream)
  "Serializes a message object of type '<GetCollisionObjects-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'points) ostream)
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCollisionObjects-response>) istream)
  "Deserializes a message object of type '<GetCollisionObjects-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'points) istream)
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCollisionObjects-response>)))
  "Returns string type for a service object of type '<GetCollisionObjects-response>"
  "arm_navigation_msgs/GetCollisionObjectsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCollisionObjects-response)))
  "Returns string type for a service object of type 'GetCollisionObjects-response"
  "arm_navigation_msgs/GetCollisionObjectsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCollisionObjects-response>)))
  "Returns md5sum for a message object of type '<GetCollisionObjects-response>"
  "8a4f57995c7be09c22ca01de6eb557ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCollisionObjects-response)))
  "Returns md5sum for a message object of type 'GetCollisionObjects-response"
  "8a4f57995c7be09c22ca01de6eb557ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCollisionObjects-response>)))
  "Returns full string definition for message of type '<GetCollisionObjects-response>"
  (cl:format cl:nil "~%arm_navigation_msgs/CollisionMap points~%~%arm_navigation_msgs/CollisionObject[] collision_objects~%~%arm_navigation_msgs/AttachedCollisionObject[] attached_collision_objects~%~%~%================================================================================~%MSG: arm_navigation_msgs/CollisionMap~%#header for interpreting box positions~%Header header~%~%#boxes for use in collision testing~%OrientedBoundingBox[] boxes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: arm_navigation_msgs/OrientedBoundingBox~%#the center of the box~%geometry_msgs/Point32 center~%~%#the extents of the box, assuming the center is at the point~%geometry_msgs/Point32 extents~%~%#the axis of the box~%geometry_msgs/Point32 axis~%~%#the angle of rotation around the axis~%float32 angle~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: arm_navigation_msgs/CollisionObject~%# a header, used for interpreting the poses~%Header header~%~%# the id of the object~%string id~%~%# The padding used for filtering points near the object.~%# This does not affect collision checking for the object.  ~%# Set to negative to get zero padding.~%float32 padding~%~%#This contains what is to be done with the object~%CollisionObjectOperation operation~%~%#the shapes associated with the object~%arm_navigation_msgs/Shape[] shapes~%~%#the poses associated with the shapes - will be transformed using the header~%geometry_msgs/Pose[] poses~%~%================================================================================~%MSG: arm_navigation_msgs/CollisionObjectOperation~%#Puts the object into the environment~%#or updates the object if already added~%byte ADD=0~%~%#Removes the object from the environment entirely~%byte REMOVE=1~%~%#Only valid within the context of a CollisionAttachedObject message~%#Will be ignored if sent with an CollisionObject message~%#Takes an attached object, detaches from the attached link~%#But adds back in as regular object~%byte DETACH_AND_ADD_AS_OBJECT=2~%~%#Only valid within the context of a CollisionAttachedObject message~%#Will be ignored if sent with an CollisionObject message~%#Takes current object in the environment and removes it as~%#a regular object~%byte ATTACH_AND_REMOVE_AS_OBJECT=3~%~%# Byte code for operation~%byte operation~%~%================================================================================~%MSG: arm_navigation_msgs/Shape~%byte SPHERE=0~%byte BOX=1~%byte CYLINDER=2~%byte MESH=3~%~%byte type~%~%~%#### define sphere, box, cylinder ####~%# the origin of each shape is considered at the shape's center~%~%# for sphere~%# radius := dimensions[0]~%~%# for cylinder~%# radius := dimensions[0]~%# length := dimensions[1]~%# the length is along the Z axis~%~%# for box~%# size_x := dimensions[0]~%# size_y := dimensions[1]~%# size_z := dimensions[2]~%float64[] dimensions~%~%~%#### define mesh ####~%~%# list of triangles; triangle k is defined by tre vertices located~%# at indices triangles[3k], triangles[3k+1], triangles[3k+2]~%int32[] triangles~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: arm_navigation_msgs/AttachedCollisionObject~%# The CollisionObject will be attached with a fixed joint to this link~%# If link name is set to REMOVE_ALL_ATTACHED_OBJECTS and object.operation ~%# is set to REMOVE will remove all attached bodies attached to any object~%string link_name~%~%#Reserved for indicating that all attached objects should be removed~%string REMOVE_ALL_ATTACHED_OBJECTS = \"all\"~%~%#This contains the actual shapes and poses for the CollisionObject~%#to be attached to the link~%#If action is remove and no object.id is set, all objects~%#attached to the link indicated by link_name will be removed~%CollisionObject object~%~%# The set of links that the attached objects are allowed to touch~%# by default - the link_name is included by default~%string[] touch_links~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCollisionObjects-response)))
  "Returns full string definition for message of type 'GetCollisionObjects-response"
  (cl:format cl:nil "~%arm_navigation_msgs/CollisionMap points~%~%arm_navigation_msgs/CollisionObject[] collision_objects~%~%arm_navigation_msgs/AttachedCollisionObject[] attached_collision_objects~%~%~%================================================================================~%MSG: arm_navigation_msgs/CollisionMap~%#header for interpreting box positions~%Header header~%~%#boxes for use in collision testing~%OrientedBoundingBox[] boxes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: arm_navigation_msgs/OrientedBoundingBox~%#the center of the box~%geometry_msgs/Point32 center~%~%#the extents of the box, assuming the center is at the point~%geometry_msgs/Point32 extents~%~%#the axis of the box~%geometry_msgs/Point32 axis~%~%#the angle of rotation around the axis~%float32 angle~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: arm_navigation_msgs/CollisionObject~%# a header, used for interpreting the poses~%Header header~%~%# the id of the object~%string id~%~%# The padding used for filtering points near the object.~%# This does not affect collision checking for the object.  ~%# Set to negative to get zero padding.~%float32 padding~%~%#This contains what is to be done with the object~%CollisionObjectOperation operation~%~%#the shapes associated with the object~%arm_navigation_msgs/Shape[] shapes~%~%#the poses associated with the shapes - will be transformed using the header~%geometry_msgs/Pose[] poses~%~%================================================================================~%MSG: arm_navigation_msgs/CollisionObjectOperation~%#Puts the object into the environment~%#or updates the object if already added~%byte ADD=0~%~%#Removes the object from the environment entirely~%byte REMOVE=1~%~%#Only valid within the context of a CollisionAttachedObject message~%#Will be ignored if sent with an CollisionObject message~%#Takes an attached object, detaches from the attached link~%#But adds back in as regular object~%byte DETACH_AND_ADD_AS_OBJECT=2~%~%#Only valid within the context of a CollisionAttachedObject message~%#Will be ignored if sent with an CollisionObject message~%#Takes current object in the environment and removes it as~%#a regular object~%byte ATTACH_AND_REMOVE_AS_OBJECT=3~%~%# Byte code for operation~%byte operation~%~%================================================================================~%MSG: arm_navigation_msgs/Shape~%byte SPHERE=0~%byte BOX=1~%byte CYLINDER=2~%byte MESH=3~%~%byte type~%~%~%#### define sphere, box, cylinder ####~%# the origin of each shape is considered at the shape's center~%~%# for sphere~%# radius := dimensions[0]~%~%# for cylinder~%# radius := dimensions[0]~%# length := dimensions[1]~%# the length is along the Z axis~%~%# for box~%# size_x := dimensions[0]~%# size_y := dimensions[1]~%# size_z := dimensions[2]~%float64[] dimensions~%~%~%#### define mesh ####~%~%# list of triangles; triangle k is defined by tre vertices located~%# at indices triangles[3k], triangles[3k+1], triangles[3k+2]~%int32[] triangles~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: arm_navigation_msgs/AttachedCollisionObject~%# The CollisionObject will be attached with a fixed joint to this link~%# If link name is set to REMOVE_ALL_ATTACHED_OBJECTS and object.operation ~%# is set to REMOVE will remove all attached bodies attached to any object~%string link_name~%~%#Reserved for indicating that all attached objects should be removed~%string REMOVE_ALL_ATTACHED_OBJECTS = \"all\"~%~%#This contains the actual shapes and poses for the CollisionObject~%#to be attached to the link~%#If action is remove and no object.id is set, all objects~%#attached to the link indicated by link_name will be removed~%CollisionObject object~%~%# The set of links that the attached objects are allowed to touch~%# by default - the link_name is included by default~%string[] touch_links~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCollisionObjects-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'points))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'collision_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'attached_collision_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCollisionObjects-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCollisionObjects-response
    (cl:cons ':points (points msg))
    (cl:cons ':collision_objects (collision_objects msg))
    (cl:cons ':attached_collision_objects (attached_collision_objects msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCollisionObjects)))
  'GetCollisionObjects-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCollisionObjects)))
  'GetCollisionObjects-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCollisionObjects)))
  "Returns string type for a service object of type '<GetCollisionObjects>"
  "arm_navigation_msgs/GetCollisionObjects")