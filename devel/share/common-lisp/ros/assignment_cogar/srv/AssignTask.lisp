; Auto-generated. Do not edit!


(cl:in-package assignment_cogar-srv)


;//! \htmlinclude AssignTask-request.msg.html

(cl:defclass <AssignTask-request> (roslisp-msg-protocol:ros-message)
  ((order_id
    :reader order_id
    :initarg :order_id
    :type cl:string
    :initform "")
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:string
    :initform "")
   (dish_name
    :reader dish_name
    :initarg :dish_name
    :type cl:string
    :initform "")
   (table_id
    :reader table_id
    :initarg :table_id
    :type cl:string
    :initform ""))
)

(cl:defclass AssignTask-request (<AssignTask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssignTask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssignTask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_cogar-srv:<AssignTask-request> is deprecated: use assignment_cogar-srv:AssignTask-request instead.")))

(cl:ensure-generic-function 'order_id-val :lambda-list '(m))
(cl:defmethod order_id-val ((m <AssignTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-srv:order_id-val is deprecated.  Use assignment_cogar-srv:order_id instead.")
  (order_id m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <AssignTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-srv:robot_id-val is deprecated.  Use assignment_cogar-srv:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'dish_name-val :lambda-list '(m))
(cl:defmethod dish_name-val ((m <AssignTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-srv:dish_name-val is deprecated.  Use assignment_cogar-srv:dish_name instead.")
  (dish_name m))

(cl:ensure-generic-function 'table_id-val :lambda-list '(m))
(cl:defmethod table_id-val ((m <AssignTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-srv:table_id-val is deprecated.  Use assignment_cogar-srv:table_id instead.")
  (table_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssignTask-request>) ostream)
  "Serializes a message object of type '<AssignTask-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'order_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'order_id))
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'table_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'table_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssignTask-request>) istream)
  "Deserializes a message object of type '<AssignTask-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'order_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'order_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
      (cl:setf (cl:slot-value msg 'table_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'table_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssignTask-request>)))
  "Returns string type for a service object of type '<AssignTask-request>"
  "assignment_cogar/AssignTaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssignTask-request)))
  "Returns string type for a service object of type 'AssignTask-request"
  "assignment_cogar/AssignTaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssignTask-request>)))
  "Returns md5sum for a message object of type '<AssignTask-request>"
  "f47a80f63d9e9eca8fb4a2735112c7ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssignTask-request)))
  "Returns md5sum for a message object of type 'AssignTask-request"
  "f47a80f63d9e9eca8fb4a2735112c7ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssignTask-request>)))
  "Returns full string definition for message of type '<AssignTask-request>"
  (cl:format cl:nil "# Request~%string order_id~%string robot_id~%string dish_name~%string table_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssignTask-request)))
  "Returns full string definition for message of type 'AssignTask-request"
  (cl:format cl:nil "# Request~%string order_id~%string robot_id~%string dish_name~%string table_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssignTask-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'order_id))
     4 (cl:length (cl:slot-value msg 'robot_id))
     4 (cl:length (cl:slot-value msg 'dish_name))
     4 (cl:length (cl:slot-value msg 'table_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssignTask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AssignTask-request
    (cl:cons ':order_id (order_id msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':dish_name (dish_name msg))
    (cl:cons ':table_id (table_id msg))
))
;//! \htmlinclude AssignTask-response.msg.html

(cl:defclass <AssignTask-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AssignTask-response (<AssignTask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssignTask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssignTask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_cogar-srv:<AssignTask-response> is deprecated: use assignment_cogar-srv:AssignTask-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AssignTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-srv:success-val is deprecated.  Use assignment_cogar-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AssignTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-srv:message-val is deprecated.  Use assignment_cogar-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssignTask-response>) ostream)
  "Serializes a message object of type '<AssignTask-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssignTask-response>) istream)
  "Deserializes a message object of type '<AssignTask-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssignTask-response>)))
  "Returns string type for a service object of type '<AssignTask-response>"
  "assignment_cogar/AssignTaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssignTask-response)))
  "Returns string type for a service object of type 'AssignTask-response"
  "assignment_cogar/AssignTaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssignTask-response>)))
  "Returns md5sum for a message object of type '<AssignTask-response>"
  "f47a80f63d9e9eca8fb4a2735112c7ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssignTask-response)))
  "Returns md5sum for a message object of type 'AssignTask-response"
  "f47a80f63d9e9eca8fb4a2735112c7ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssignTask-response>)))
  "Returns full string definition for message of type '<AssignTask-response>"
  (cl:format cl:nil "# Response~%bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssignTask-response)))
  "Returns full string definition for message of type 'AssignTask-response"
  (cl:format cl:nil "# Response~%bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssignTask-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssignTask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AssignTask-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AssignTask)))
  'AssignTask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AssignTask)))
  'AssignTask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssignTask)))
  "Returns string type for a service object of type '<AssignTask>"
  "assignment_cogar/AssignTask")