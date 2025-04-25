; Auto-generated. Do not edit!


(cl:in-package sushi_bot-srv)


;//! \htmlinclude RobotTask-request.msg.html

(cl:defclass <RobotTask-request> (roslisp-msg-protocol:ros-message)
  ((dish_name
    :reader dish_name
    :initarg :dish_name
    :type cl:string
    :initform "")
   (table_number
    :reader table_number
    :initarg :table_number
    :type cl:string
    :initform ""))
)

(cl:defclass RobotTask-request (<RobotTask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotTask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotTask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sushi_bot-srv:<RobotTask-request> is deprecated: use sushi_bot-srv:RobotTask-request instead.")))

(cl:ensure-generic-function 'dish_name-val :lambda-list '(m))
(cl:defmethod dish_name-val ((m <RobotTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushi_bot-srv:dish_name-val is deprecated.  Use sushi_bot-srv:dish_name instead.")
  (dish_name m))

(cl:ensure-generic-function 'table_number-val :lambda-list '(m))
(cl:defmethod table_number-val ((m <RobotTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushi_bot-srv:table_number-val is deprecated.  Use sushi_bot-srv:table_number instead.")
  (table_number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotTask-request>) ostream)
  "Serializes a message object of type '<RobotTask-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dish_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dish_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'table_number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'table_number))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotTask-request>) istream)
  "Deserializes a message object of type '<RobotTask-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dish_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dish_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'table_number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'table_number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotTask-request>)))
  "Returns string type for a service object of type '<RobotTask-request>"
  "sushi_bot/RobotTaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotTask-request)))
  "Returns string type for a service object of type 'RobotTask-request"
  "sushi_bot/RobotTaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotTask-request>)))
  "Returns md5sum for a message object of type '<RobotTask-request>"
  "3d9d08dba52c168a90cd568a864ab567")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotTask-request)))
  "Returns md5sum for a message object of type 'RobotTask-request"
  "3d9d08dba52c168a90cd568a864ab567")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotTask-request>)))
  "Returns full string definition for message of type '<RobotTask-request>"
  (cl:format cl:nil "string dish_name~%string table_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotTask-request)))
  "Returns full string definition for message of type 'RobotTask-request"
  (cl:format cl:nil "string dish_name~%string table_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotTask-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'dish_name))
     4 (cl:length (cl:slot-value msg 'table_number))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotTask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotTask-request
    (cl:cons ':dish_name (dish_name msg))
    (cl:cons ':table_number (table_number msg))
))
;//! \htmlinclude RobotTask-response.msg.html

(cl:defclass <RobotTask-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass RobotTask-response (<RobotTask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotTask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotTask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sushi_bot-srv:<RobotTask-response> is deprecated: use sushi_bot-srv:RobotTask-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RobotTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushi_bot-srv:success-val is deprecated.  Use sushi_bot-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RobotTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushi_bot-srv:message-val is deprecated.  Use sushi_bot-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotTask-response>) ostream)
  "Serializes a message object of type '<RobotTask-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotTask-response>) istream)
  "Deserializes a message object of type '<RobotTask-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotTask-response>)))
  "Returns string type for a service object of type '<RobotTask-response>"
  "sushi_bot/RobotTaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotTask-response)))
  "Returns string type for a service object of type 'RobotTask-response"
  "sushi_bot/RobotTaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotTask-response>)))
  "Returns md5sum for a message object of type '<RobotTask-response>"
  "3d9d08dba52c168a90cd568a864ab567")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotTask-response)))
  "Returns md5sum for a message object of type 'RobotTask-response"
  "3d9d08dba52c168a90cd568a864ab567")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotTask-response>)))
  "Returns full string definition for message of type '<RobotTask-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotTask-response)))
  "Returns full string definition for message of type 'RobotTask-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotTask-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotTask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotTask-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotTask)))
  'RobotTask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotTask)))
  'RobotTask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotTask)))
  "Returns string type for a service object of type '<RobotTask>"
  "sushi_bot/RobotTask")