; Auto-generated. Do not edit!


(cl:in-package assignment_cogar-srv)


;//! \htmlinclude VerifyOrder-request.msg.html

(cl:defclass <VerifyOrder-request> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:string
    :initform "")
   (dish_name
    :reader dish_name
    :initarg :dish_name
    :type cl:string
    :initform ""))
)

(cl:defclass VerifyOrder-request (<VerifyOrder-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VerifyOrder-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VerifyOrder-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_cogar-srv:<VerifyOrder-request> is deprecated: use assignment_cogar-srv:VerifyOrder-request instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <VerifyOrder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-srv:robot_id-val is deprecated.  Use assignment_cogar-srv:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'dish_name-val :lambda-list '(m))
(cl:defmethod dish_name-val ((m <VerifyOrder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-srv:dish_name-val is deprecated.  Use assignment_cogar-srv:dish_name instead.")
  (dish_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VerifyOrder-request>) ostream)
  "Serializes a message object of type '<VerifyOrder-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VerifyOrder-request>) istream)
  "Deserializes a message object of type '<VerifyOrder-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VerifyOrder-request>)))
  "Returns string type for a service object of type '<VerifyOrder-request>"
  "assignment_cogar/VerifyOrderRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VerifyOrder-request)))
  "Returns string type for a service object of type 'VerifyOrder-request"
  "assignment_cogar/VerifyOrderRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VerifyOrder-request>)))
  "Returns md5sum for a message object of type '<VerifyOrder-request>"
  "821c392785703a596b403147fefd576d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VerifyOrder-request)))
  "Returns md5sum for a message object of type 'VerifyOrder-request"
  "821c392785703a596b403147fefd576d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VerifyOrder-request>)))
  "Returns full string definition for message of type '<VerifyOrder-request>"
  (cl:format cl:nil "string robot_id ~%string dish_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VerifyOrder-request)))
  "Returns full string definition for message of type 'VerifyOrder-request"
  (cl:format cl:nil "string robot_id ~%string dish_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VerifyOrder-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_id))
     4 (cl:length (cl:slot-value msg 'dish_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VerifyOrder-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VerifyOrder-request
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':dish_name (dish_name msg))
))
;//! \htmlinclude VerifyOrder-response.msg.html

(cl:defclass <VerifyOrder-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VerifyOrder-response (<VerifyOrder-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VerifyOrder-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VerifyOrder-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_cogar-srv:<VerifyOrder-response> is deprecated: use assignment_cogar-srv:VerifyOrder-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <VerifyOrder-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-srv:success-val is deprecated.  Use assignment_cogar-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VerifyOrder-response>) ostream)
  "Serializes a message object of type '<VerifyOrder-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VerifyOrder-response>) istream)
  "Deserializes a message object of type '<VerifyOrder-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VerifyOrder-response>)))
  "Returns string type for a service object of type '<VerifyOrder-response>"
  "assignment_cogar/VerifyOrderResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VerifyOrder-response)))
  "Returns string type for a service object of type 'VerifyOrder-response"
  "assignment_cogar/VerifyOrderResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VerifyOrder-response>)))
  "Returns md5sum for a message object of type '<VerifyOrder-response>"
  "821c392785703a596b403147fefd576d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VerifyOrder-response)))
  "Returns md5sum for a message object of type 'VerifyOrder-response"
  "821c392785703a596b403147fefd576d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VerifyOrder-response>)))
  "Returns full string definition for message of type '<VerifyOrder-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VerifyOrder-response)))
  "Returns full string definition for message of type 'VerifyOrder-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VerifyOrder-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VerifyOrder-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VerifyOrder-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VerifyOrder)))
  'VerifyOrder-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VerifyOrder)))
  'VerifyOrder-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VerifyOrder)))
  "Returns string type for a service object of type '<VerifyOrder>"
  "assignment_cogar/VerifyOrder")