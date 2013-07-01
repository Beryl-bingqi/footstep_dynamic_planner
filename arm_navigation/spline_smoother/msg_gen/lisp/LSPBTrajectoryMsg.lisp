; Auto-generated. Do not edit!


(cl:in-package spline_smoother-msg)


;//! \htmlinclude LSPBTrajectoryMsg.msg.html

(cl:defclass <LSPBTrajectoryMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (names
    :reader names
    :initarg :names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (segments
    :reader segments
    :initarg :segments
    :type (cl:vector spline_smoother-msg:LSPBTrajectorySegmentMsg)
   :initform (cl:make-array 0 :element-type 'spline_smoother-msg:LSPBTrajectorySegmentMsg :initial-element (cl:make-instance 'spline_smoother-msg:LSPBTrajectorySegmentMsg))))
)

(cl:defclass LSPBTrajectoryMsg (<LSPBTrajectoryMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LSPBTrajectoryMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LSPBTrajectoryMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spline_smoother-msg:<LSPBTrajectoryMsg> is deprecated: use spline_smoother-msg:LSPBTrajectoryMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LSPBTrajectoryMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spline_smoother-msg:header-val is deprecated.  Use spline_smoother-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'names-val :lambda-list '(m))
(cl:defmethod names-val ((m <LSPBTrajectoryMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spline_smoother-msg:names-val is deprecated.  Use spline_smoother-msg:names instead.")
  (names m))

(cl:ensure-generic-function 'segments-val :lambda-list '(m))
(cl:defmethod segments-val ((m <LSPBTrajectoryMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spline_smoother-msg:segments-val is deprecated.  Use spline_smoother-msg:segments instead.")
  (segments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LSPBTrajectoryMsg>) ostream)
  "Serializes a message object of type '<LSPBTrajectoryMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'names))))
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
   (cl:slot-value msg 'names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'segments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'segments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LSPBTrajectoryMsg>) istream)
  "Deserializes a message object of type '<LSPBTrajectoryMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'names)))
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
  (cl:setf (cl:slot-value msg 'segments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'segments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'spline_smoother-msg:LSPBTrajectorySegmentMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LSPBTrajectoryMsg>)))
  "Returns string type for a message object of type '<LSPBTrajectoryMsg>"
  "spline_smoother/LSPBTrajectoryMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LSPBTrajectoryMsg)))
  "Returns string type for a message object of type 'LSPBTrajectoryMsg"
  "spline_smoother/LSPBTrajectoryMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LSPBTrajectoryMsg>)))
  "Returns md5sum for a message object of type '<LSPBTrajectoryMsg>"
  "ce1139991f603c3d37b77cd9b60c5c3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LSPBTrajectoryMsg)))
  "Returns md5sum for a message object of type 'LSPBTrajectoryMsg"
  "ce1139991f603c3d37b77cd9b60c5c3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LSPBTrajectoryMsg>)))
  "Returns full string definition for message of type '<LSPBTrajectoryMsg>"
  (cl:format cl:nil "Header header~%string[] names~%LSPBTrajectorySegmentMsg[] segments~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: spline_smoother/LSPBTrajectorySegmentMsg~%duration duration~%LSPBSplineCoefficients[] joints~%~%================================================================================~%MSG: spline_smoother/LSPBSplineCoefficients~%float64[] coefficients~%float64 linear_segment_duration~%float64 quadratic_segment_duration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LSPBTrajectoryMsg)))
  "Returns full string definition for message of type 'LSPBTrajectoryMsg"
  (cl:format cl:nil "Header header~%string[] names~%LSPBTrajectorySegmentMsg[] segments~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: spline_smoother/LSPBTrajectorySegmentMsg~%duration duration~%LSPBSplineCoefficients[] joints~%~%================================================================================~%MSG: spline_smoother/LSPBSplineCoefficients~%float64[] coefficients~%float64 linear_segment_duration~%float64 quadratic_segment_duration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LSPBTrajectoryMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'segments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LSPBTrajectoryMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'LSPBTrajectoryMsg
    (cl:cons ':header (header msg))
    (cl:cons ':names (names msg))
    (cl:cons ':segments (segments msg))
))