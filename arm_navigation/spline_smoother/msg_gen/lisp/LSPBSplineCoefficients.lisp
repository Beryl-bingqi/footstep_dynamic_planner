; Auto-generated. Do not edit!


(cl:in-package spline_smoother-msg)


;//! \htmlinclude LSPBSplineCoefficients.msg.html

(cl:defclass <LSPBSplineCoefficients> (roslisp-msg-protocol:ros-message)
  ((coefficients
    :reader coefficients
    :initarg :coefficients
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (linear_segment_duration
    :reader linear_segment_duration
    :initarg :linear_segment_duration
    :type cl:float
    :initform 0.0)
   (quadratic_segment_duration
    :reader quadratic_segment_duration
    :initarg :quadratic_segment_duration
    :type cl:float
    :initform 0.0))
)

(cl:defclass LSPBSplineCoefficients (<LSPBSplineCoefficients>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LSPBSplineCoefficients>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LSPBSplineCoefficients)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spline_smoother-msg:<LSPBSplineCoefficients> is deprecated: use spline_smoother-msg:LSPBSplineCoefficients instead.")))

(cl:ensure-generic-function 'coefficients-val :lambda-list '(m))
(cl:defmethod coefficients-val ((m <LSPBSplineCoefficients>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spline_smoother-msg:coefficients-val is deprecated.  Use spline_smoother-msg:coefficients instead.")
  (coefficients m))

(cl:ensure-generic-function 'linear_segment_duration-val :lambda-list '(m))
(cl:defmethod linear_segment_duration-val ((m <LSPBSplineCoefficients>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spline_smoother-msg:linear_segment_duration-val is deprecated.  Use spline_smoother-msg:linear_segment_duration instead.")
  (linear_segment_duration m))

(cl:ensure-generic-function 'quadratic_segment_duration-val :lambda-list '(m))
(cl:defmethod quadratic_segment_duration-val ((m <LSPBSplineCoefficients>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spline_smoother-msg:quadratic_segment_duration-val is deprecated.  Use spline_smoother-msg:quadratic_segment_duration instead.")
  (quadratic_segment_duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LSPBSplineCoefficients>) ostream)
  "Serializes a message object of type '<LSPBSplineCoefficients>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'coefficients))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'coefficients))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linear_segment_duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'quadratic_segment_duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LSPBSplineCoefficients>) istream)
  "Deserializes a message object of type '<LSPBSplineCoefficients>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'coefficients) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'coefficients)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_segment_duration) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'quadratic_segment_duration) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LSPBSplineCoefficients>)))
  "Returns string type for a message object of type '<LSPBSplineCoefficients>"
  "spline_smoother/LSPBSplineCoefficients")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LSPBSplineCoefficients)))
  "Returns string type for a message object of type 'LSPBSplineCoefficients"
  "spline_smoother/LSPBSplineCoefficients")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LSPBSplineCoefficients>)))
  "Returns md5sum for a message object of type '<LSPBSplineCoefficients>"
  "c00dc8b55f1156bf5a7d2645875397b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LSPBSplineCoefficients)))
  "Returns md5sum for a message object of type 'LSPBSplineCoefficients"
  "c00dc8b55f1156bf5a7d2645875397b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LSPBSplineCoefficients>)))
  "Returns full string definition for message of type '<LSPBSplineCoefficients>"
  (cl:format cl:nil "float64[] coefficients~%float64 linear_segment_duration~%float64 quadratic_segment_duration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LSPBSplineCoefficients)))
  "Returns full string definition for message of type 'LSPBSplineCoefficients"
  (cl:format cl:nil "float64[] coefficients~%float64 linear_segment_duration~%float64 quadratic_segment_duration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LSPBSplineCoefficients>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coefficients) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LSPBSplineCoefficients>))
  "Converts a ROS message object to a list"
  (cl:list 'LSPBSplineCoefficients
    (cl:cons ':coefficients (coefficients msg))
    (cl:cons ':linear_segment_duration (linear_segment_duration msg))
    (cl:cons ':quadratic_segment_duration (quadratic_segment_duration msg))
))
