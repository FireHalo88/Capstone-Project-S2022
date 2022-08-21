; Auto-generated. Do not edit!


(cl:in-package robotics_cyton-srv)


;//! \htmlinclude Float64-request.msg.html

(cl:defclass <Float64-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0))
)

(cl:defclass Float64-request (<Float64-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Float64-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Float64-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotics_cyton-srv:<Float64-request> is deprecated: use robotics_cyton-srv:Float64-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Float64-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_cyton-srv:data-val is deprecated.  Use robotics_cyton-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Float64-request>) ostream)
  "Serializes a message object of type '<Float64-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Float64-request>) istream)
  "Deserializes a message object of type '<Float64-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Float64-request>)))
  "Returns string type for a service object of type '<Float64-request>"
  "robotics_cyton/Float64Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Float64-request)))
  "Returns string type for a service object of type 'Float64-request"
  "robotics_cyton/Float64Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Float64-request>)))
  "Returns md5sum for a message object of type '<Float64-request>"
  "fdb28210bfa9d7c91146260178d9a584")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Float64-request)))
  "Returns md5sum for a message object of type 'Float64-request"
  "fdb28210bfa9d7c91146260178d9a584")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Float64-request>)))
  "Returns full string definition for message of type '<Float64-request>"
  (cl:format cl:nil "float64 data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Float64-request)))
  "Returns full string definition for message of type 'Float64-request"
  (cl:format cl:nil "float64 data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Float64-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Float64-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Float64-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude Float64-response.msg.html

(cl:defclass <Float64-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Float64-response (<Float64-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Float64-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Float64-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotics_cyton-srv:<Float64-response> is deprecated: use robotics_cyton-srv:Float64-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Float64-response>) ostream)
  "Serializes a message object of type '<Float64-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Float64-response>) istream)
  "Deserializes a message object of type '<Float64-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Float64-response>)))
  "Returns string type for a service object of type '<Float64-response>"
  "robotics_cyton/Float64Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Float64-response)))
  "Returns string type for a service object of type 'Float64-response"
  "robotics_cyton/Float64Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Float64-response>)))
  "Returns md5sum for a message object of type '<Float64-response>"
  "fdb28210bfa9d7c91146260178d9a584")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Float64-response)))
  "Returns md5sum for a message object of type 'Float64-response"
  "fdb28210bfa9d7c91146260178d9a584")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Float64-response>)))
  "Returns full string definition for message of type '<Float64-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Float64-response)))
  "Returns full string definition for message of type 'Float64-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Float64-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Float64-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Float64-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Float64)))
  'Float64-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Float64)))
  'Float64-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Float64)))
  "Returns string type for a service object of type '<Float64>"
  "robotics_cyton/Float64")