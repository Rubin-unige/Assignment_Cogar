; Auto-generated. Do not edit!


(cl:in-package sushi_bot-msg)


;//! \htmlinclude RobotStatusArray.msg.html

(cl:defclass <RobotStatusArray> (roslisp-msg-protocol:ros-message)
  ((robots
    :reader robots
    :initarg :robots
    :type (cl:vector sushi_bot-msg:RobotStatus)
   :initform (cl:make-array 0 :element-type 'sushi_bot-msg:RobotStatus :initial-element (cl:make-instance 'sushi_bot-msg:RobotStatus))))
)

(cl:defclass RobotStatusArray (<RobotStatusArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStatusArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStatusArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sushi_bot-msg:<RobotStatusArray> is deprecated: use sushi_bot-msg:RobotStatusArray instead.")))

(cl:ensure-generic-function 'robots-val :lambda-list '(m))
(cl:defmethod robots-val ((m <RobotStatusArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushi_bot-msg:robots-val is deprecated.  Use sushi_bot-msg:robots instead.")
  (robots m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStatusArray>) ostream)
  "Serializes a message object of type '<RobotStatusArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robots))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robots))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStatusArray>) istream)
  "Deserializes a message object of type '<RobotStatusArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robots) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robots)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sushi_bot-msg:RobotStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStatusArray>)))
  "Returns string type for a message object of type '<RobotStatusArray>"
  "sushi_bot/RobotStatusArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStatusArray)))
  "Returns string type for a message object of type 'RobotStatusArray"
  "sushi_bot/RobotStatusArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStatusArray>)))
  "Returns md5sum for a message object of type '<RobotStatusArray>"
  "51965e5e3df189789150d9c35cd148f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStatusArray)))
  "Returns md5sum for a message object of type 'RobotStatusArray"
  "51965e5e3df189789150d9c35cd148f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStatusArray>)))
  "Returns full string definition for message of type '<RobotStatusArray>"
  (cl:format cl:nil "RobotStatus[] robots~%================================================================================~%MSG: sushi_bot/RobotStatus~%string robot_id~%string status~%string current_task~%string current_table~%bool is_available~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStatusArray)))
  "Returns full string definition for message of type 'RobotStatusArray"
  (cl:format cl:nil "RobotStatus[] robots~%================================================================================~%MSG: sushi_bot/RobotStatus~%string robot_id~%string status~%string current_task~%string current_table~%bool is_available~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStatusArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robots) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStatusArray>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStatusArray
    (cl:cons ':robots (robots msg))
))
