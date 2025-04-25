; Auto-generated. Do not edit!


(cl:in-package assignment_cogar-msg)


;//! \htmlinclude OrderStatus.msg.html

(cl:defclass <OrderStatus> (roslisp-msg-protocol:ros-message)
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
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (requires_staff_attention
    :reader requires_staff_attention
    :initarg :requires_staff_attention
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass OrderStatus (<OrderStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OrderStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OrderStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_cogar-msg:<OrderStatus> is deprecated: use assignment_cogar-msg:OrderStatus instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <OrderStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-msg:robot_id-val is deprecated.  Use assignment_cogar-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'dish_name-val :lambda-list '(m))
(cl:defmethod dish_name-val ((m <OrderStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-msg:dish_name-val is deprecated.  Use assignment_cogar-msg:dish_name instead.")
  (dish_name m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <OrderStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-msg:status-val is deprecated.  Use assignment_cogar-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'requires_staff_attention-val :lambda-list '(m))
(cl:defmethod requires_staff_attention-val ((m <OrderStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-msg:requires_staff_attention-val is deprecated.  Use assignment_cogar-msg:requires_staff_attention instead.")
  (requires_staff_attention m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OrderStatus>) ostream)
  "Serializes a message object of type '<OrderStatus>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'requires_staff_attention) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OrderStatus>) istream)
  "Deserializes a message object of type '<OrderStatus>"
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
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'requires_staff_attention) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OrderStatus>)))
  "Returns string type for a message object of type '<OrderStatus>"
  "assignment_cogar/OrderStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OrderStatus)))
  "Returns string type for a message object of type 'OrderStatus"
  "assignment_cogar/OrderStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OrderStatus>)))
  "Returns md5sum for a message object of type '<OrderStatus>"
  "53d9d96d6078b16a5b79f0e97d7da161")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OrderStatus)))
  "Returns md5sum for a message object of type 'OrderStatus"
  "53d9d96d6078b16a5b79f0e97d7da161")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OrderStatus>)))
  "Returns full string definition for message of type '<OrderStatus>"
  (cl:format cl:nil "string robot_id~%string dish_name~%string status~%bool requires_staff_attention~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OrderStatus)))
  "Returns full string definition for message of type 'OrderStatus"
  (cl:format cl:nil "string robot_id~%string dish_name~%string status~%bool requires_staff_attention~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OrderStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_id))
     4 (cl:length (cl:slot-value msg 'dish_name))
     4 (cl:length (cl:slot-value msg 'status))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OrderStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'OrderStatus
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':dish_name (dish_name msg))
    (cl:cons ':status (status msg))
    (cl:cons ':requires_staff_attention (requires_staff_attention msg))
))
