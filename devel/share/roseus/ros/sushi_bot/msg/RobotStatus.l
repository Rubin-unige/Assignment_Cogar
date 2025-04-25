;; Auto-generated. Do not edit!


(when (boundp 'sushi_bot::RobotStatus)
  (if (not (find-package "SUSHI_BOT"))
    (make-package "SUSHI_BOT"))
  (shadow 'RobotStatus (find-package "SUSHI_BOT")))
(unless (find-package "SUSHI_BOT::ROBOTSTATUS")
  (make-package "SUSHI_BOT::ROBOTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RobotStatus.msg.html


(defclass sushi_bot::RobotStatus
  :super ros::object
  :slots (_robot_id _location _status _order_status _order_id _is_available ))

(defmethod sushi_bot::RobotStatus
  (:init
   (&key
    ((:robot_id __robot_id) "")
    ((:location __location) "")
    ((:status __status) "")
    ((:order_status __order_status) "")
    ((:order_id __order_id) "")
    ((:is_available __is_available) nil)
    )
   (send-super :init)
   (setq _robot_id (string __robot_id))
   (setq _location (string __location))
   (setq _status (string __status))
   (setq _order_status (string __order_status))
   (setq _order_id (string __order_id))
   (setq _is_available __is_available)
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:location
   (&optional __location)
   (if __location (setq _location __location)) _location)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:order_status
   (&optional __order_status)
   (if __order_status (setq _order_status __order_status)) _order_status)
  (:order_id
   (&optional __order_id)
   (if __order_id (setq _order_id __order_id)) _order_id)
  (:is_available
   (&optional (__is_available :null))
   (if (not (eq __is_available :null)) (setq _is_available __is_available)) _is_available)
  (:serialization-length
   ()
   (+
    ;; string _robot_id
    4 (length _robot_id)
    ;; string _location
    4 (length _location)
    ;; string _status
    4 (length _status)
    ;; string _order_status
    4 (length _order_status)
    ;; string _order_id
    4 (length _order_id)
    ;; bool _is_available
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;; string _location
       (write-long (length _location) s) (princ _location s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; string _order_status
       (write-long (length _order_status) s) (princ _order_status s)
     ;; string _order_id
       (write-long (length _order_id) s) (princ _order_id s)
     ;; bool _is_available
       (if _is_available (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _order_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _order_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _order_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _order_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _is_available
     (setq _is_available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sushi_bot::RobotStatus :md5sum-) "e29185a01811c1afe86cbc3bbc80a5fd")
(setf (get sushi_bot::RobotStatus :datatype-) "sushi_bot/RobotStatus")
(setf (get sushi_bot::RobotStatus :definition-)
      "string robot_id
string location
string status
string order_status
string order_id
bool is_available

")



(provide :sushi_bot/RobotStatus "e29185a01811c1afe86cbc3bbc80a5fd")


