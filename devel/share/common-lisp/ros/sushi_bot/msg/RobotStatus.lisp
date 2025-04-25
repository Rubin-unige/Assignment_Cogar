; Auto-generated. Do not edit!


(cl:in-package sushi_bot-msg)


;//! \htmlinclude RobotStatus.msg.html

(cl:defclass <RobotStatus> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:string
    :initform "")
   (location
    :reader location
    :initarg :location
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (order_status
    :reader order_status
    :initarg :order_status
    :type cl:string
    :initform "")
   (order_id
    :reader order_id
    :initarg :order_id
    :type cl:string
    :initform "")
   (is_available
    :reader is_available
    :initarg :is_available
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotStatus (<RobotStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sushi_bot-msg:<RobotStatus> is deprecated: use sushi_bot-msg:RobotStatus instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushi_bot-msg:robot_id-val is deprecated.  Use sushi_bot-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushi_bot-msg:location-val is deprecated.  Use sushi_bot-msg:location instead.")
  (location m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushi_bot-msg:status-val is deprecated.  Use sushi_bot-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'order_status-val :lambda-list '(m))
(cl:defmethod order_status-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushi_bot-msg:order_status-val is deprecated.  Use sushi_bot-msg:order_status instead.")
  (order_status m))

(cl:ensure-generic-function 'order_id-val :lambda-list '(m))
(cl:defmethod order_id-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushi_bot-msg:order_id-val is deprecated.  Use sushi_bot-msg:order_id instead.")
  (order_id m))

(cl:ensure-generic-function 'is_available-val :lambda-list '(m))
(cl:defmethod is_available-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushi_bot-msg:is_available-val is deprecated.  Use sushi_bot-msg:is_available instead.")
  (is_available m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStatus>) ostream)
  "Serializes a message object of type '<RobotStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'order_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'order_status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'order_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'order_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_available) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStatus>) istream)
  "Deserializes a message object of type '<RobotStatus>"
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
      (cl:setf (cl:slot-value msg 'location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'order_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'order_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'order_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'order_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'is_available) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStatus>)))
  "Returns string type for a message object of type '<RobotStatus>"
  "sushi_bot/RobotStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStatus)))
  "Returns string type for a message object of type 'RobotStatus"
  "sushi_bot/RobotStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStatus>)))
  "Returns md5sum for a message object of type '<RobotStatus>"
  "e29185a01811c1afe86cbc3bbc80a5fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStatus)))
  "Returns md5sum for a message object of type 'RobotStatus"
  "e29185a01811c1afe86cbc3bbc80a5fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStatus>)))
  "Returns full string definition for message of type '<RobotStatus>"
  (cl:format cl:nil "string robot_id~%string location~%string status~%string order_status~%string order_id~%bool is_available~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStatus)))
  "Returns full string definition for message of type 'RobotStatus"
  (cl:format cl:nil "string robot_id~%string location~%string status~%string order_status~%string order_id~%bool is_available~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_id))
     4 (cl:length (cl:slot-value msg 'location))
     4 (cl:length (cl:slot-value msg 'status))
     4 (cl:length (cl:slot-value msg 'order_status))
     4 (cl:length (cl:slot-value msg 'order_id))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStatus
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':location (location msg))
    (cl:cons ':status (status msg))
    (cl:cons ':order_status (order_status msg))
    (cl:cons ':order_id (order_id msg))
    (cl:cons ':is_available (is_available msg))
))
