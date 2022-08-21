; Auto-generated. Do not edit!


(cl:in-package robotics_cyton-srv)


;//! \htmlinclude cyton_move_single_joint-request.msg.html

(cl:defclass <cyton_move_single_joint-request> (roslisp-msg-protocol:ros-message)
  ((joint_number
    :reader joint_number
    :initarg :joint_number
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (vel
    :reader vel
    :initarg :vel
    :type cl:float
    :initform 0.0)
   (acc
    :reader acc
    :initarg :acc
    :type cl:float
    :initform 0.0))
)

(cl:defclass cyton_move_single_joint-request (<cyton_move_single_joint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cyton_move_single_joint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cyton_move_single_joint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotics_cyton-srv:<cyton_move_single_joint-request> is deprecated: use robotics_cyton-srv:cyton_move_single_joint-request instead.")))

(cl:ensure-generic-function 'joint_number-val :lambda-list '(m))
(cl:defmethod joint_number-val ((m <cyton_move_single_joint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_cyton-srv:joint_number-val is deprecated.  Use robotics_cyton-srv:joint_number instead.")
  (joint_number m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <cyton_move_single_joint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_cyton-srv:position-val is deprecated.  Use robotics_cyton-srv:position instead.")
  (position m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <cyton_move_single_joint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_cyton-srv:vel-val is deprecated.  Use robotics_cyton-srv:vel instead.")
  (vel m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <cyton_move_single_joint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_cyton-srv:acc-val is deprecated.  Use robotics_cyton-srv:acc instead.")
  (acc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cyton_move_single_joint-request>) ostream)
  "Serializes a message object of type '<cyton_move_single_joint-request>"
  (cl:let* ((signed (cl:slot-value msg 'joint_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cyton_move_single_joint-request>) istream)
  "Deserializes a message object of type '<cyton_move_single_joint-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint_number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cyton_move_single_joint-request>)))
  "Returns string type for a service object of type '<cyton_move_single_joint-request>"
  "robotics_cyton/cyton_move_single_jointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cyton_move_single_joint-request)))
  "Returns string type for a service object of type 'cyton_move_single_joint-request"
  "robotics_cyton/cyton_move_single_jointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cyton_move_single_joint-request>)))
  "Returns md5sum for a message object of type '<cyton_move_single_joint-request>"
  "72d8e1515109568f522880436505bc21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cyton_move_single_joint-request)))
  "Returns md5sum for a message object of type 'cyton_move_single_joint-request"
  "72d8e1515109568f522880436505bc21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cyton_move_single_joint-request>)))
  "Returns full string definition for message of type '<cyton_move_single_joint-request>"
  (cl:format cl:nil "#request~%int32 joint_number~%float64 position~%float64 vel~%float64 acc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cyton_move_single_joint-request)))
  "Returns full string definition for message of type 'cyton_move_single_joint-request"
  (cl:format cl:nil "#request~%int32 joint_number~%float64 position~%float64 vel~%float64 acc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cyton_move_single_joint-request>))
  (cl:+ 0
     4
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cyton_move_single_joint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cyton_move_single_joint-request
    (cl:cons ':joint_number (joint_number msg))
    (cl:cons ':position (position msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':acc (acc msg))
))
;//! \htmlinclude cyton_move_single_joint-response.msg.html

(cl:defclass <cyton_move_single_joint-response> (roslisp-msg-protocol:ros-message)
  ((outcome
    :reader outcome
    :initarg :outcome
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass cyton_move_single_joint-response (<cyton_move_single_joint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cyton_move_single_joint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cyton_move_single_joint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotics_cyton-srv:<cyton_move_single_joint-response> is deprecated: use robotics_cyton-srv:cyton_move_single_joint-response instead.")))

(cl:ensure-generic-function 'outcome-val :lambda-list '(m))
(cl:defmethod outcome-val ((m <cyton_move_single_joint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_cyton-srv:outcome-val is deprecated.  Use robotics_cyton-srv:outcome instead.")
  (outcome m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cyton_move_single_joint-response>) ostream)
  "Serializes a message object of type '<cyton_move_single_joint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'outcome) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cyton_move_single_joint-response>) istream)
  "Deserializes a message object of type '<cyton_move_single_joint-response>"
    (cl:setf (cl:slot-value msg 'outcome) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cyton_move_single_joint-response>)))
  "Returns string type for a service object of type '<cyton_move_single_joint-response>"
  "robotics_cyton/cyton_move_single_jointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cyton_move_single_joint-response)))
  "Returns string type for a service object of type 'cyton_move_single_joint-response"
  "robotics_cyton/cyton_move_single_jointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cyton_move_single_joint-response>)))
  "Returns md5sum for a message object of type '<cyton_move_single_joint-response>"
  "72d8e1515109568f522880436505bc21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cyton_move_single_joint-response)))
  "Returns md5sum for a message object of type 'cyton_move_single_joint-response"
  "72d8e1515109568f522880436505bc21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cyton_move_single_joint-response>)))
  "Returns full string definition for message of type '<cyton_move_single_joint-response>"
  (cl:format cl:nil "#response~%bool outcome~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cyton_move_single_joint-response)))
  "Returns full string definition for message of type 'cyton_move_single_joint-response"
  (cl:format cl:nil "#response~%bool outcome~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cyton_move_single_joint-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cyton_move_single_joint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cyton_move_single_joint-response
    (cl:cons ':outcome (outcome msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cyton_move_single_joint)))
  'cyton_move_single_joint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cyton_move_single_joint)))
  'cyton_move_single_joint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cyton_move_single_joint)))
  "Returns string type for a service object of type '<cyton_move_single_joint>"
  "robotics_cyton/cyton_move_single_joint")