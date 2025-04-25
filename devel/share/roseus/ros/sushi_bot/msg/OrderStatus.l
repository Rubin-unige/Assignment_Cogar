;; Auto-generated. Do not edit!


(when (boundp 'sushi_bot::OrderStatus)
  (if (not (find-package "SUSHI_BOT"))
    (make-package "SUSHI_BOT"))
  (shadow 'OrderStatus (find-package "SUSHI_BOT")))
(unless (find-package "SUSHI_BOT::ORDERSTATUS")
  (make-package "SUSHI_BOT::ORDERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude OrderStatus.msg.html


(defclass sushi_bot::OrderStatus
  :super ros::object
  :slots (_robot_id _dish_name _status _requires_staff_attention ))

(defmethod sushi_bot::OrderStatus
  (:init
   (&key
    ((:robot_id __robot_id) "")
    ((:dish_name __dish_name) "")
    ((:status __status) "")
    ((:requires_staff_attention __requires_staff_attention) nil)
    )
   (send-super :init)
   (setq _robot_id (string __robot_id))
   (setq _dish_name (string __dish_name))
   (setq _status (string __status))
   (setq _requires_staff_attention __requires_staff_attention)
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:dish_name
   (&optional __dish_name)
   (if __dish_name (setq _dish_name __dish_name)) _dish_name)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:requires_staff_attention
   (&optional (__requires_staff_attention :null))
   (if (not (eq __requires_staff_attention :null)) (setq _requires_staff_attention __requires_staff_attention)) _requires_staff_attention)
  (:serialization-length
   ()
   (+
    ;; string _robot_id
    4 (length _robot_id)
    ;; string _dish_name
    4 (length _dish_name)
    ;; string _status
    4 (length _status)
    ;; bool _requires_staff_attention
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;; string _dish_name
       (write-long (length _dish_name) s) (princ _dish_name s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; bool _requires_staff_attention
       (if _requires_staff_attention (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _dish_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dish_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _requires_staff_attention
     (setq _requires_staff_attention (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sushi_bot::OrderStatus :md5sum-) "53d9d96d6078b16a5b79f0e97d7da161")
(setf (get sushi_bot::OrderStatus :datatype-) "sushi_bot/OrderStatus")
(setf (get sushi_bot::OrderStatus :definition-)
      "string robot_id
string dish_name
string status
bool requires_staff_attention
")



(provide :sushi_bot/OrderStatus "53d9d96d6078b16a5b79f0e97d7da161")


