; Auto-generated. Do not edit!


(cl:in-package assignment_cogar-msg)


;//! \htmlinclude TableStatus.msg.html

(cl:defclass <TableStatus> (roslisp-msg-protocol:ros-message)
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
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0))
)

(cl:defclass TableStatus (<TableStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TableStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TableStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_cogar-msg:<TableStatus> is deprecated: use assignment_cogar-msg:TableStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TableStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-msg:status-val is deprecated.  Use assignment_cogar-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'has_empty_plate-val :lambda-list '(m))
(cl:defmethod has_empty_plate-val ((m <TableStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-msg:has_empty_plate-val is deprecated.  Use assignment_cogar-msg:has_empty_plate instead.")
  (has_empty_plate m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <TableStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_cogar-msg:timestamp-val is deprecated.  Use assignment_cogar-msg:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TableStatus>) ostream)
  "Serializes a message object of type '<TableStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_empty_plate) 1 0)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timestamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timestamp) (cl:floor (cl:slot-value msg 'timestamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TableStatus>) istream)
  "Deserializes a message object of type '<TableStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'has_empty_plate) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TableStatus>)))
  "Returns string type for a message object of type '<TableStatus>"
  "assignment_cogar/TableStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TableStatus)))
  "Returns string type for a message object of type 'TableStatus"
  "assignment_cogar/TableStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TableStatus>)))
  "Returns md5sum for a message object of type '<TableStatus>"
  "40a61210ebc44d54272f5bae65a7e206")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TableStatus)))
  "Returns md5sum for a message object of type 'TableStatus"
  "40a61210ebc44d54272f5bae65a7e206")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TableStatus>)))
  "Returns full string definition for message of type '<TableStatus>"
  (cl:format cl:nil "string status~%bool has_empty_plate~%time timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TableStatus)))
  "Returns full string definition for message of type 'TableStatus"
  (cl:format cl:nil "string status~%bool has_empty_plate~%time timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TableStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TableStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'TableStatus
    (cl:cons ':status (status msg))
    (cl:cons ':has_empty_plate (has_empty_plate msg))
    (cl:cons ':timestamp (timestamp msg))
))
