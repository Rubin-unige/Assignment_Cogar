;; Auto-generated. Do not edit!


(when (boundp 'sushi_bot::RobotTask)
  (if (not (find-package "SUSHI_BOT"))
    (make-package "SUSHI_BOT"))
  (shadow 'RobotTask (find-package "SUSHI_BOT")))
(unless (find-package "SUSHI_BOT::ROBOTTASK")
  (make-package "SUSHI_BOT::ROBOTTASK"))
(unless (find-package "SUSHI_BOT::ROBOTTASKREQUEST")
  (make-package "SUSHI_BOT::ROBOTTASKREQUEST"))
(unless (find-package "SUSHI_BOT::ROBOTTASKRESPONSE")
  (make-package "SUSHI_BOT::ROBOTTASKRESPONSE"))

(in-package "ROS")





(defclass sushi_bot::RobotTaskRequest
  :super ros::object
  :slots (_dish_name _table_number ))

(defmethod sushi_bot::RobotTaskRequest
  (:init
   (&key
    ((:dish_name __dish_name) "")
    ((:table_number __table_number) "")
    )
   (send-super :init)
   (setq _dish_name (string __dish_name))
   (setq _table_number (string __table_number))
   self)
  (:dish_name
   (&optional __dish_name)
   (if __dish_name (setq _dish_name __dish_name)) _dish_name)
  (:table_number
   (&optional __table_number)
   (if __table_number (setq _table_number __table_number)) _table_number)
  (:serialization-length
   ()
   (+
    ;; string _dish_name
    4 (length _dish_name)
    ;; string _table_number
    4 (length _table_number)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _dish_name
       (write-long (length _dish_name) s) (princ _dish_name s)
     ;; string _table_number
       (write-long (length _table_number) s) (princ _table_number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _dish_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dish_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _table_number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _table_number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass sushi_bot::RobotTaskResponse
  :super ros::object
  :slots (_success _message ))

(defmethod sushi_bot::RobotTaskResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass sushi_bot::RobotTask
  :super ros::object
  :slots ())

(setf (get sushi_bot::RobotTask :md5sum-) "3d9d08dba52c168a90cd568a864ab567")
(setf (get sushi_bot::RobotTask :datatype-) "sushi_bot/RobotTask")
(setf (get sushi_bot::RobotTask :request) sushi_bot::RobotTaskRequest)
(setf (get sushi_bot::RobotTask :response) sushi_bot::RobotTaskResponse)

(defmethod sushi_bot::RobotTaskRequest
  (:response () (instance sushi_bot::RobotTaskResponse :init)))

(setf (get sushi_bot::RobotTaskRequest :md5sum-) "3d9d08dba52c168a90cd568a864ab567")
(setf (get sushi_bot::RobotTaskRequest :datatype-) "sushi_bot/RobotTaskRequest")
(setf (get sushi_bot::RobotTaskRequest :definition-)
      "string dish_name
string table_number
---
bool success
string message
")

(setf (get sushi_bot::RobotTaskResponse :md5sum-) "3d9d08dba52c168a90cd568a864ab567")
(setf (get sushi_bot::RobotTaskResponse :datatype-) "sushi_bot/RobotTaskResponse")
(setf (get sushi_bot::RobotTaskResponse :definition-)
      "string dish_name
string table_number
---
bool success
string message
")



(provide :sushi_bot/RobotTask "3d9d08dba52c168a90cd568a864ab567")


