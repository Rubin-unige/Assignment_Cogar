; Auto-generated. Do not edit!


(cl:in-package assignment_cogar-srv)


;//! \htmlinclude Microphone-request.msg.html

(cl:defclass <Microphone-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Microphone-request (<Microphone-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Microphone-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Microphone-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_cogar-srv:<Microphone-request> is deprecated: use assignment_cogar-srv:Microphone-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Microphone-request>) ostream)
  "Serializes a message object of type '<Microphone-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Microphone-request>) istream)
  "Deserializes a message object of type '<Microphone-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Microphone-request>)))
  "Returns string type for a service object of type '<Microphone-request>"
  "assignment_cogar/MicrophoneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Microphone-request)))
  "Returns string type for a service object of type 'Microphone-request"
  "assignment_cogar/MicrophoneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Microphone-request>)))
  "Returns md5sum for a message object of type '<Microphone-request>"
  "6de314e2dc76fbff2b6244a6ad70b68d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Microphone-request)))
  "Returns md5sum for a message object of type 'Microphone-request"
  "6de314e2dc76fbff2b6244a6ad70b68d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Microphone-request>)))
  "Returns full string definition for message of type '<Microphone-request>"
  (cl:format cl:nil "# Request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Microphone-request)))
  "Returns full string definition for message of type 'Microphone-request"
  (cl:format cl:nil "# Request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Microphone-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Microphone-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Microphone-request
))
;//! \htmlinclude Microphone-response.msg.html

(cl:defclass <Microphone-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:string
    :initform ""))
)

(cl:defclass Microphone-response (<Microphone-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Microphone-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Microphone-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_cogar-srv:<Microphone-response> is deprecated: use assignment_cogar-srv:Microphone-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <Microphone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-srv:response-val is deprecated.  Use assignment_cogar-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Microphone-response>) ostream)
  "Serializes a message object of type '<Microphone-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Microphone-response>) istream)
  "Deserializes a message object of type '<Microphone-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Microphone-response>)))
  "Returns string type for a service object of type '<Microphone-response>"
  "assignment_cogar/MicrophoneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Microphone-response)))
  "Returns string type for a service object of type 'Microphone-response"
  "assignment_cogar/MicrophoneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Microphone-response>)))
  "Returns md5sum for a message object of type '<Microphone-response>"
  "6de314e2dc76fbff2b6244a6ad70b68d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Microphone-response)))
  "Returns md5sum for a message object of type 'Microphone-response"
  "6de314e2dc76fbff2b6244a6ad70b68d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Microphone-response>)))
  "Returns full string definition for message of type '<Microphone-response>"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Microphone-response)))
  "Returns full string definition for message of type 'Microphone-response"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Microphone-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Microphone-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Microphone-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Microphone)))
  'Microphone-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Microphone)))
  'Microphone-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Microphone)))
  "Returns string type for a service object of type '<Microphone>"
  "assignment_cogar/Microphone")