; Auto-generated. Do not edit!


(cl:in-package robotics_cyton-srv)


;//! \htmlinclude cyton_move_all_joints-request.msg.html

(cl:defclass <cyton_move_all_joints-request> (roslisp-msg-protocol:ros-message)
  ((jointStates
    :reader jointStates
    :initarg :jointStates
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (acc
    :reader acc
    :initarg :acc
    :type cl:float
    :initform 0.0)
   (vel
    :reader vel
    :initarg :vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass cyton_move_all_joints-request (<cyton_move_all_joints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cyton_move_all_joints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cyton_move_all_joints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotics_cyton-srv:<cyton_move_all_joints-request> is deprecated: use robotics_cyton-srv:cyton_move_all_joints-request instead.")))

(cl:ensure-generic-function 'jointStates-val :lambda-list '(m))
(cl:defmethod jointStates-val ((m <cyton_move_all_joints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_cyton-srv:jointStates-val is deprecated.  Use robotics_cyton-srv:jointStates instead.")
  (jointStates m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <cyton_move_all_joints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_cyton-srv:acc-val is deprecated.  Use robotics_cyton-srv:acc instead.")
  (acc m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <cyton_move_all_joints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_cyton-srv:vel-val is deprecated.  Use robotics_cyton-srv:vel instead.")
  (vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cyton_move_all_joints-request>) ostream)
  "Serializes a message object of type '<cyton_move_all_joints-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'jointStates))))
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
   (cl:slot-value msg 'jointStates))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cyton_move_all_joints-request>) istream)
  "Deserializes a message object of type '<cyton_move_all_joints-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'jointStates) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'jointStates)))
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
    (cl:setf (cl:slot-value msg 'acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cyton_move_all_joints-request>)))
  "Returns string type for a service object of type '<cyton_move_all_joints-request>"
  "robotics_cyton/cyton_move_all_jointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cyton_move_all_joints-request)))
  "Returns string type for a service object of type 'cyton_move_all_joints-request"
  "robotics_cyton/cyton_move_all_jointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cyton_move_all_joints-request>)))
  "Returns md5sum for a message object of type '<cyton_move_all_joints-request>"
  "9e70ab60f9bda1c235d95bce9fc54eb5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cyton_move_all_joints-request)))
  "Returns md5sum for a message object of type 'cyton_move_all_joints-request"
  "9e70ab60f9bda1c235d95bce9fc54eb5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cyton_move_all_joints-request>)))
  "Returns full string definition for message of type '<cyton_move_all_joints-request>"
  (cl:format cl:nil "float64[] jointStates~%float32 acc~%float32 vel~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cyton_move_all_joints-request)))
  "Returns full string definition for message of type 'cyton_move_all_joints-request"
  (cl:format cl:nil "float64[] jointStates~%float32 acc~%float32 vel~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cyton_move_all_joints-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'jointStates) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cyton_move_all_joints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cyton_move_all_joints-request
    (cl:cons ':jointStates (jointStates msg))
    (cl:cons ':acc (acc msg))
    (cl:cons ':vel (vel msg))
))
;//! \htmlinclude cyton_move_all_joints-response.msg.html

(cl:defclass <cyton_move_all_joints-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass cyton_move_all_joints-response (<cyton_move_all_joints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cyton_move_all_joints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cyton_move_all_joints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotics_cyton-srv:<cyton_move_all_joints-response> is deprecated: use robotics_cyton-srv:cyton_move_all_joints-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cyton_move_all_joints-response>) ostream)
  "Serializes a message object of type '<cyton_move_all_joints-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cyton_move_all_joints-response>) istream)
  "Deserializes a message object of type '<cyton_move_all_joints-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cyton_move_all_joints-response>)))
  "Returns string type for a service object of type '<cyton_move_all_joints-response>"
  "robotics_cyton/cyton_move_all_jointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cyton_move_all_joints-response)))
  "Returns string type for a service object of type 'cyton_move_all_joints-response"
  "robotics_cyton/cyton_move_all_jointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cyton_move_all_joints-response>)))
  "Returns md5sum for a message object of type '<cyton_move_all_joints-response>"
  "9e70ab60f9bda1c235d95bce9fc54eb5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cyton_move_all_joints-response)))
  "Returns md5sum for a message object of type 'cyton_move_all_joints-response"
  "9e70ab60f9bda1c235d95bce9fc54eb5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cyton_move_all_joints-response>)))
  "Returns full string definition for message of type '<cyton_move_all_joints-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cyton_move_all_joints-response)))
  "Returns full string definition for message of type 'cyton_move_all_joints-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cyton_move_all_joints-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cyton_move_all_joints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cyton_move_all_joints-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cyton_move_all_joints)))
  'cyton_move_all_joints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cyton_move_all_joints)))
  'cyton_move_all_joints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cyton_move_all_joints)))
  "Returns string type for a service object of type '<cyton_move_all_joints>"
  "robotics_cyton/cyton_move_all_joints")