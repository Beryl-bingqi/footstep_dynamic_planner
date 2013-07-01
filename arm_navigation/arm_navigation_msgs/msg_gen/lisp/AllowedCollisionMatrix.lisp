; Auto-generated. Do not edit!


(cl:in-package arm_navigation_msgs-msg)


;//! \htmlinclude AllowedCollisionMatrix.msg.html

(cl:defclass <AllowedCollisionMatrix> (roslisp-msg-protocol:ros-message)
  ((link_names
    :reader link_names
    :initarg :link_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (entries
    :reader entries
    :initarg :entries
    :type (cl:vector arm_navigation_msgs-msg:AllowedCollisionEntry)
   :initform (cl:make-array 0 :element-type 'arm_navigation_msgs-msg:AllowedCollisionEntry :initial-element (cl:make-instance 'arm_navigation_msgs-msg:AllowedCollisionEntry))))
)

(cl:defclass AllowedCollisionMatrix (<AllowedCollisionMatrix>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AllowedCollisionMatrix>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AllowedCollisionMatrix)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_navigation_msgs-msg:<AllowedCollisionMatrix> is deprecated: use arm_navigation_msgs-msg:AllowedCollisionMatrix instead.")))

(cl:ensure-generic-function 'link_names-val :lambda-list '(m))
(cl:defmethod link_names-val ((m <AllowedCollisionMatrix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:link_names-val is deprecated.  Use arm_navigation_msgs-msg:link_names instead.")
  (link_names m))

(cl:ensure-generic-function 'entries-val :lambda-list '(m))
(cl:defmethod entries-val ((m <AllowedCollisionMatrix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_navigation_msgs-msg:entries-val is deprecated.  Use arm_navigation_msgs-msg:entries instead.")
  (entries m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AllowedCollisionMatrix>) ostream)
  "Serializes a message object of type '<AllowedCollisionMatrix>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'link_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'link_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'entries))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'entries))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AllowedCollisionMatrix>) istream)
  "Deserializes a message object of type '<AllowedCollisionMatrix>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'link_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'link_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'entries) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'entries)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'arm_navigation_msgs-msg:AllowedCollisionEntry))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AllowedCollisionMatrix>)))
  "Returns string type for a message object of type '<AllowedCollisionMatrix>"
  "arm_navigation_msgs/AllowedCollisionMatrix")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AllowedCollisionMatrix)))
  "Returns string type for a message object of type 'AllowedCollisionMatrix"
  "arm_navigation_msgs/AllowedCollisionMatrix")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AllowedCollisionMatrix>)))
  "Returns md5sum for a message object of type '<AllowedCollisionMatrix>"
  "c5785d58d2d0b6270738f65222dbec5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AllowedCollisionMatrix)))
  "Returns md5sum for a message object of type 'AllowedCollisionMatrix"
  "c5785d58d2d0b6270738f65222dbec5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AllowedCollisionMatrix>)))
  "Returns full string definition for message of type '<AllowedCollisionMatrix>"
  (cl:format cl:nil "# the list of link names in the matrix~%string[] link_names~%~%# the individual entries in the allowed collision matrix~%# symmetric, with same order as link_names~%AllowedCollisionEntry[] entries~%~%================================================================================~%MSG: arm_navigation_msgs/AllowedCollisionEntry~%# whether or not collision checking is enabled~%bool[] enabled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AllowedCollisionMatrix)))
  "Returns full string definition for message of type 'AllowedCollisionMatrix"
  (cl:format cl:nil "# the list of link names in the matrix~%string[] link_names~%~%# the individual entries in the allowed collision matrix~%# symmetric, with same order as link_names~%AllowedCollisionEntry[] entries~%~%================================================================================~%MSG: arm_navigation_msgs/AllowedCollisionEntry~%# whether or not collision checking is enabled~%bool[] enabled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AllowedCollisionMatrix>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'link_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'entries) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AllowedCollisionMatrix>))
  "Converts a ROS message object to a list"
  (cl:list 'AllowedCollisionMatrix
    (cl:cons ':link_names (link_names msg))
    (cl:cons ':entries (entries msg))
))
