; Auto-generated. Do not edit!


(cl:in-package spline_smoother-msg)


;//! \htmlinclude SplineCoefficients.msg.html

(cl:defclass <SplineCoefficients> (roslisp-msg-protocol:ros-message)
  ((coefficients
    :reader coefficients
    :initarg :coefficients
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SplineCoefficients (<SplineCoefficients>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SplineCoefficients>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SplineCoefficients)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spline_smoother-msg:<SplineCoefficients> is deprecated: use spline_smoother-msg:SplineCoefficients instead.")))

(cl:ensure-generic-function 'coefficients-val :lambda-list '(m))
(cl:defmethod coefficients-val ((m <SplineCoefficients>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spline_smoother-msg:coefficients-val is deprecated.  Use spline_smoother-msg:coefficients instead.")
  (coefficients m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SplineCoefficients>) ostream)
  "Serializes a message object of type '<SplineCoefficients>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SplineCoefficients>) istream)
  "Deserializes a message object of type '<SplineCoefficients>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SplineCoefficients>)))
  "Returns string type for a message object of type '<SplineCoefficients>"
  "spline_smoother/SplineCoefficients")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SplineCoefficients)))
  "Returns string type for a message object of type 'SplineCoefficients"
  "spline_smoother/SplineCoefficients")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SplineCoefficients>)))
  "Returns md5sum for a message object of type '<SplineCoefficients>"
  "c4e5d982f9108827e742320d3c247546")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SplineCoefficients)))
  "Returns md5sum for a message object of type 'SplineCoefficients"
  "c4e5d982f9108827e742320d3c247546")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SplineCoefficients>)))
  "Returns full string definition for message of type '<SplineCoefficients>"
  (cl:format cl:nil "float64[] coefficients~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SplineCoefficients)))
  "Returns full string definition for message of type 'SplineCoefficients"
  (cl:format cl:nil "float64[] coefficients~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SplineCoefficients>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coefficients) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SplineCoefficients>))
  "Converts a ROS message object to a list"
  (cl:list 'SplineCoefficients
    (cl:cons ':coefficients (coefficients msg))
))
