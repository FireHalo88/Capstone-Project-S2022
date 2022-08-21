; Auto-generated. Do not edit!


(cl:in-package robotics_cyton-srv)


;//! \htmlinclude cyton_enable_robot-request.msg.html

(cl:defclass <cyton_enable_robot-request> (roslisp-msg-protocol:ros-message)
  ((enable_robot
    :reader enable_robot
    :initarg :enable_robot
    :type cl:integer
    :initform 0))
)

(cl:defclass cyton_enable_robot-request (<cyton_enable_robot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cyton_enable_robot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cyton_enable_robot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotics_cyton-srv:<cyton_enable_robot-request> is deprecated: use robotics_cyton-srv:cyton_enable_robot-request instead.")))

(cl:ensure-generic-function 'enable_robot-val :lambda-list '(m))
(cl:defmethod enable_robot-val ((m <cyton_enable_robot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_cyton-srv:enable_robot-val is deprecated.  Use robotics_cyton-srv:enable_robot instead.")
  (enable_robot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cyton_enable_robot-request>) ostream)
  "Serializes a message object of type '<cyton_enable_robot-request>"
  (cl:let* ((signed (cl:slot-value msg 'enable_robot)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cyton_enable_robot-request>) istream)
  "Deserializes a message object of type '<cyton_enable_robot-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'enable_robot) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cyton_enable_robot-request>)))
  "Returns string type for a service object of type '<cyton_enable_robot-request>"
  "robotics_cyton/cyton_enable_robotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cyton_enable_robot-request)))
  "Returns string type for a service object of type 'cyton_enable_robot-request"
  "robotics_cyton/cyton_enable_robotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cyton_enable_robot-request>)))
  "Returns md5sum for a message object of type '<cyton_enable_robot-request>"
  "cbdd2e9cd62c12dcd05983de0c95bf07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cyton_enable_robot-request)))
  "Returns md5sum for a message object of type 'cyton_enable_robot-request"
  "cbdd2e9cd62c12dcd05983de0c95bf07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cyton_enable_robot-request>)))
  "Returns full string definition for message of type '<cyton_enable_robot-request>"
  (cl:format cl:nil "int32 enable_robot~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cyton_enable_robot-request)))
  "Returns full string definition for message of type 'cyton_enable_robot-request"
  (cl:format cl:nil "int32 enable_robot~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cyton_enable_robot-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cyton_enable_robot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cyton_enable_robot-request
    (cl:cons ':enable_robot (enable_robot msg))
))
;//! \htmlinclude cyton_enable_robot-response.msg.html

(cl:defclass <cyton_enable_robot-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass cyton_enable_robot-response (<cyton_enable_robot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cyton_enable_robot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cyton_enable_robot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotics_cyton-srv:<cyton_enable_robot-response> is deprecated: use robotics_cyton-srv:cyton_enable_robot-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cyton_enable_robot-response>) ostream)
  "Serializes a message object of type '<cyton_enable_robot-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cyton_enable_robot-response>) istream)
  "Deserializes a message object of type '<cyton_enable_robot-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cyton_enable_robot-response>)))
  "Returns string type for a service object of type '<cyton_enable_robot-response>"
  "robotics_cyton/cyton_enable_robotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cyton_enable_robot-response)))
  "Returns string type for a service object of type 'cyton_enable_robot-response"
  "robotics_cyton/cyton_enable_robotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cyton_enable_robot-response>)))
  "Returns md5sum for a message object of type '<cyton_enable_robot-response>"
  "cbdd2e9cd62c12dcd05983de0c95bf07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cyton_enable_robot-response)))
  "Returns md5sum for a message object of type 'cyton_enable_robot-response"
  "cbdd2e9cd62c12dcd05983de0c95bf07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cyton_enable_robot-response>)))
  "Returns full string definition for message of type '<cyton_enable_robot-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cyton_enable_robot-response)))
  "Returns full string definition for message of type 'cyton_enable_robot-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cyton_enable_robot-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cyton_enable_robot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cyton_enable_robot-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cyton_enable_robot)))
  'cyton_enable_robot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cyton_enable_robot)))
  'cyton_enable_robot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cyton_enable_robot)))
  "Returns string type for a service object of type '<cyton_enable_robot>"
  "robotics_cyton/cyton_enable_robot")