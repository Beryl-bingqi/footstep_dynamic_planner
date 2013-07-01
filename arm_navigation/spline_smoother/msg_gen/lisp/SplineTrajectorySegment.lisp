; Auto-generated. Do not edit!


(cl:in-package spline_smoother-msg)


;//! \htmlinclude SplineTrajectorySegment.msg.html

(cl:defclass <SplineTrajectorySegment> (roslisp-msg-protocol:ros-message)
  ((duration
    :reader duration
    :initarg :duration
    :type cl:real
    :initform 0)
   (joints
    :reader joints
    :initarg :joints
    :type (cl:vector spline_smoother-msg:SplineCoefficients)
   :initform (cl:make-array 0 :element-type 'spline_smoother-msg:SplineCoefficients :initial-element (cl:make-instance 'spline_smoother-msg:SplineCoefficients))))
)

(cl:defclass SplineTrajectorySegment (<SplineTrajectorySegment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SplineTrajectorySegment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SplineTrajectorySegment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spline_smoother-msg:<SplineTrajectorySegment> is deprecated: use spline_smoother-msg:SplineTrajectorySegment instead.")))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <SplineTrajectorySegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spline_smoother-msg:duration-val is deprecated.  Use spline_smoother-msg:duration instead.")
  (duration m))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <SplineTrajectorySegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spline_smoother-msg:joints-val is deprecated.  Use spline_smoother-msg:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SplineTrajectorySegment>) ostream)
  "Serializes a message object of type '<SplineTrajectorySegment>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SplineTrajectorySegment>) istream)
  "Deserializes a message object of type '<SplineTrajectorySegment>"
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
    (cl:setf (cl:aref vals i) (cl:make-instance 'spline_smoother-msg:SplineCoefficients))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SplineTrajectorySegment>)))
  "Returns string type for a message object of type '<SplineTrajectorySegment>"
  "spline_smoother/SplineTrajectorySegment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SplineTrajectorySegment)))
  "Returns string type for a message object of type 'SplineTrajectorySegment"
  "spline_smoother/SplineTrajectorySegment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SplineTrajectorySegment>)))
  "Returns md5sum for a message object of type '<SplineTrajectorySegment>"
  "1c95257e91547459aede67dd02a209d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SplineTrajectorySegment)))
  "Returns md5sum for a message object of type 'SplineTrajectorySegment"
  "1c95257e91547459aede67dd02a209d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SplineTrajectorySegment>)))
  "Returns full string definition for message of type '<SplineTrajectorySegment>"
  (cl:format cl:nil "duration duration~%SplineCoefficients[] joints~%~%================================================================================~%MSG: spline_smoother/SplineCoefficients~%float64[] coefficients~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SplineTrajectorySegment)))
  "Returns full string definition for message of type 'SplineTrajectorySegment"
  (cl:format cl:nil "duration duration~%SplineCoefficients[] joints~%~%================================================================================~%MSG: spline_smoother/SplineCoefficients~%float64[] coefficients~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SplineTrajectorySegment>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SplineTrajectorySegment>))
  "Converts a ROS message object to a list"
  (cl:list 'SplineTrajectorySegment
    (cl:cons ':duration (duration msg))
    (cl:cons ':joints (joints msg))
))
