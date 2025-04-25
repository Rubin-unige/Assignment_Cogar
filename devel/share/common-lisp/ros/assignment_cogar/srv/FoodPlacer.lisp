; Auto-generated. Do not edit!


(cl:in-package assignment_cogar-srv)


;//! \htmlinclude FoodPlacer-request.msg.html

(cl:defclass <FoodPlacer-request> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (has_empty_plate
    :reader has_empty_plate
    :initarg :has_empty_plate
    :type cl:boolean
    :initform cl:nil)
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:string
    :initform ""))
)

(cl:defclass FoodPlacer-request (<FoodPlacer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FoodPlacer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FoodPlacer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_cogar-srv:<FoodPlacer-request> is deprecated: use assignment_cogar-srv:FoodPlacer-request instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <FoodPlacer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-srv:status-val is deprecated.  Use assignment_cogar-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'has_empty_plate-val :lambda-list '(m))
(cl:defmethod has_empty_plate-val ((m <FoodPlacer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-srv:has_empty_plate-val is deprecated.  Use assignment_cogar-srv:has_empty_plate instead.")
  (has_empty_plate m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <FoodPlacer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-srv:robot_id-val is deprecated.  Use assignment_cogar-srv:robot_id instead.")
  (robot_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FoodPlacer-request>) ostream)
  "Serializes a message object of type '<FoodPlacer-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_empty_plate) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FoodPlacer-request>) istream)
  "Deserializes a message object of type '<FoodPlacer-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'has_empty_plate) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FoodPlacer-request>)))
  "Returns string type for a service object of type '<FoodPlacer-request>"
  "assignment_cogar/FoodPlacerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FoodPlacer-request)))
  "Returns string type for a service object of type 'FoodPlacer-request"
  "assignment_cogar/FoodPlacerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FoodPlacer-request>)))
  "Returns md5sum for a message object of type '<FoodPlacer-request>"
  "5a619c9ede21322d453b3bcb4c37ad47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FoodPlacer-request)))
  "Returns md5sum for a message object of type 'FoodPlacer-request"
  "5a619c9ede21322d453b3bcb4c37ad47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FoodPlacer-request>)))
  "Returns full string definition for message of type '<FoodPlacer-request>"
  (cl:format cl:nil "string status~%bool has_empty_plate~%string robot_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FoodPlacer-request)))
  "Returns full string definition for message of type 'FoodPlacer-request"
  (cl:format cl:nil "string status~%bool has_empty_plate~%string robot_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FoodPlacer-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
     1
     4 (cl:length (cl:slot-value msg 'robot_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FoodPlacer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FoodPlacer-request
    (cl:cons ':status (status msg))
    (cl:cons ':has_empty_plate (has_empty_plate msg))
    (cl:cons ':robot_id (robot_id msg))
))
;//! \htmlinclude FoodPlacer-response.msg.html

(cl:defclass <FoodPlacer-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass FoodPlacer-response (<FoodPlacer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FoodPlacer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FoodPlacer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_cogar-srv:<FoodPlacer-response> is deprecated: use assignment_cogar-srv:FoodPlacer-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <FoodPlacer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-srv:success-val is deprecated.  Use assignment_cogar-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <FoodPlacer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-srv:message-val is deprecated.  Use assignment_cogar-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FoodPlacer-response>) ostream)
  "Serializes a message object of type '<FoodPlacer-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FoodPlacer-response>) istream)
  "Deserializes a message object of type '<FoodPlacer-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FoodPlacer-response>)))
  "Returns string type for a service object of type '<FoodPlacer-response>"
  "assignment_cogar/FoodPlacerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FoodPlacer-response)))
  "Returns string type for a service object of type 'FoodPlacer-response"
  "assignment_cogar/FoodPlacerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FoodPlacer-response>)))
  "Returns md5sum for a message object of type '<FoodPlacer-response>"
  "5a619c9ede21322d453b3bcb4c37ad47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FoodPlacer-response)))
  "Returns md5sum for a message object of type 'FoodPlacer-response"
  "5a619c9ede21322d453b3bcb4c37ad47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FoodPlacer-response>)))
  "Returns full string definition for message of type '<FoodPlacer-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FoodPlacer-response)))
  "Returns full string definition for message of type 'FoodPlacer-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FoodPlacer-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FoodPlacer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FoodPlacer-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FoodPlacer)))
  'FoodPlacer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FoodPlacer)))
  'FoodPlacer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FoodPlacer)))
  "Returns string type for a service object of type '<FoodPlacer>"
  "assignment_cogar/FoodPlacer")