; Auto-generated. Do not edit!


(cl:in-package spline_smoother-msg)


;//! \htmlinclude LSPBTrajectorySegmentMsg.msg.html

(cl:defclass <LSPBTrajectorySegmentMsg> (roslisp-msg-protocol:ros-message)
  ((duration
    :reader duration
    :initarg :duration
    :type cl:real
    :initform 0)
   (joints
    :reader joints
    :initarg :joints
    :type (cl:vector spline_smoother-msg:LSPBSplineCoefficients)
   :initform (cl:make-array 0 :element-type 'spline_smoother-msg:LSPBSplineCoefficients :initial-element (cl:make-instance 'spline_smoother-msg:LSPBSplineCoefficients))))
)

(cl:defclass LSPBTrajectorySegmentMsg (<LSPBTrajectorySegmentMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LSPBTrajectorySegmentMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LSPBTrajectorySegmentMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spline_smoother-msg:<LSPBTrajectorySegmentMsg> is deprecated: use spline_smoother-msg:LSPBTrajectorySegmentMsg instead.")))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <LSPBTrajectorySegmentMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spline_smoother-msg:duration-val is deprecated.  Use spline_smoother-msg:duration instead.")
  (duration m))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <LSPBTrajectorySegmentMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spline_smoother-msg:joints-val is deprecated.  Use spline_smoother-msg:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LSPBTrajectorySegmentMsg>) ostream)
  "Serializes a message object of type '<LSPBTrajectorySegmentMsg>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'duration) (cl:floor (cl:slot-value msg 'duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LSPBTrajectorySegmentMsg>) istream)
  "Deserializes a message object of type '<LSPBTrajectorySegmentMsg>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'spline_smoother-msg:LSPBSplineCoefficients))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LSPBTrajectorySegmentMsg>)))
  "Returns string type for a message object of type '<LSPBTrajectorySegmentMsg>"
  "spline_smoother/LSPBTrajectorySegmentMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LSPBTrajectorySegmentMsg)))
  "Returns string type for a message object of type 'LSPBTrajectorySegmentMsg"
  "spline_smoother/LSPBTrajectorySegmentMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LSPBTrajectorySegmentMsg>)))
  "Returns md5sum for a message object of type '<LSPBTrajectorySegmentMsg>"
  "53054857ee1d2a19ca83edc07b14eef2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LSPBTrajectorySegmentMsg)))
  "Returns md5sum for a message object of type 'LSPBTrajectorySegmentMsg"
  "53054857ee1d2a19ca83edc07b14eef2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LSPBTrajectorySegmentMsg>)))
  "Returns full string definition for message of type '<LSPBTrajectorySegmentMsg>"
  (cl:format cl:nil "duration duration~%LSPBSplineCoefficients[] joints~%~%================================================================================~%MSG: spline_smoother/LSPBSplineCoefficients~%float64[] coefficients~%float64 linear_segment_duration~%float64 quadratic_segment_duration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LSPBTrajectorySegmentMsg)))
  "Returns full string definition for message of type 'LSPBTrajectorySegmentMsg"
  (cl:format cl:nil "duration duration~%LSPBSplineCoefficients[] joints~%~%================================================================================~%MSG: spline_smoother/LSPBSplineCoefficients~%float64[] coefficients~%float64 linear_segment_duration~%float64 quadratic_segment_duration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LSPBTrajectorySegmentMsg>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LSPBTrajectorySegmentMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'LSPBTrajectorySegmentMsg
    (cl:cons ':duration (duration msg))
    (cl:cons ':joints (joints msg))
))
