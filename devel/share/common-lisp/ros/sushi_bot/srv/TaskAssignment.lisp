; Auto-generated. Do not edit!


(cl:in-package sushi_bot-srv)


;//! \htmlinclude TaskAssignment-request.msg.html

(cl:defclass <TaskAssignment-request> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:string
    :initform "")
   (dish_name
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

(cl:defclass TaskAssignment-request (<TaskAssignment-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskAssignment-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskAssignment-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sushi_bot-srv:<TaskAssignment-request> is deprecated: use sushi_bot-srv:TaskAssignment-request instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <TaskAssignment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushi_bot-srv:robot_id-val is deprecated.  Use sushi_bot-srv:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'dish_name-val :lambda-list '(m))
(cl:defmethod dish_name-val ((m <TaskAssignment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushi_bot-srv:dish_name-val is deprecated.  Use sushi_bot-srv:dish_name instead.")
  (dish_name m))

(cl:ensure-generic-function 'table_number-val :lambda-list '(m))
(cl:defmethod table_number-val ((m <TaskAssignment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushi_bot-srv:table_number-val is deprecated.  Use sushi_bot-srv:table_number instead.")
  (table_number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskAssignment-request>) ostream)
  "Serializes a message object of type '<TaskAssignment-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_id))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskAssignment-request>) istream)
  "Deserializes a message object of type '<TaskAssignment-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskAssignment-request>)))
  "Returns string type for a service object of type '<TaskAssignment-request>"
  "sushi_bot/TaskAssignmentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskAssignment-request)))
  "Returns string type for a service object of type 'TaskAssignment-request"
  "sushi_bot/TaskAssignmentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskAssignment-request>)))
  "Returns md5sum for a message object of type '<TaskAssignment-request>"
  "ba41c7c5d4e8b7cf1a6d4085ce149d1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskAssignment-request)))
  "Returns md5sum for a message object of type 'TaskAssignment-request"
  "ba41c7c5d4e8b7cf1a6d4085ce149d1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskAssignment-request>)))
  "Returns full string definition for message of type '<TaskAssignment-request>"
  (cl:format cl:nil "string robot_id~%string dish_name~%string table_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskAssignment-request)))
  "Returns full string definition for message of type 'TaskAssignment-request"
  (cl:format cl:nil "string robot_id~%string dish_name~%string table_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskAssignment-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_id))
     4 (cl:length (cl:slot-value msg 'dish_name))
     4 (cl:length (cl:slot-value msg 'table_number))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskAssignment-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskAssignment-request
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':dish_name (dish_name msg))
    (cl:cons ':table_number (table_number msg))
))
;//! \htmlinclude TaskAssignment-response.msg.html

(cl:defclass <TaskAssignment-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass TaskAssignment-response (<TaskAssignment-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskAssignment-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskAssignment-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sushi_bot-srv:<TaskAssignment-response> is deprecated: use sushi_bot-srv:TaskAssignment-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TaskAssignment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushi_bot-srv:success-val is deprecated.  Use sushi_bot-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <TaskAssignment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushi_bot-srv:message-val is deprecated.  Use sushi_bot-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskAssignment-response>) ostream)
  "Serializes a message object of type '<TaskAssignment-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskAssignment-response>) istream)
  "Deserializes a message object of type '<TaskAssignment-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskAssignment-response>)))
  "Returns string type for a service object of type '<TaskAssignment-response>"
  "sushi_bot/TaskAssignmentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskAssignment-response)))
  "Returns string type for a service object of type 'TaskAssignment-response"
  "sushi_bot/TaskAssignmentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskAssignment-response>)))
  "Returns md5sum for a message object of type '<TaskAssignment-response>"
  "ba41c7c5d4e8b7cf1a6d4085ce149d1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskAssignment-response)))
  "Returns md5sum for a message object of type 'TaskAssignment-response"
  "ba41c7c5d4e8b7cf1a6d4085ce149d1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskAssignment-response>)))
  "Returns full string definition for message of type '<TaskAssignment-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskAssignment-response)))
  "Returns full string definition for message of type 'TaskAssignment-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskAssignment-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskAssignment-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskAssignment-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TaskAssignment)))
  'TaskAssignment-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TaskAssignment)))
  'TaskAssignment-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskAssignment)))
  "Returns string type for a service object of type '<TaskAssignment>"
  "sushi_bot/TaskAssignment")