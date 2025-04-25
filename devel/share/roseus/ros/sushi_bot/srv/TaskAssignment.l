;; Auto-generated. Do not edit!


(when (boundp 'sushi_bot::TaskAssignment)
  (if (not (find-package "SUSHI_BOT"))
    (make-package "SUSHI_BOT"))
  (shadow 'TaskAssignment (find-package "SUSHI_BOT")))
(unless (find-package "SUSHI_BOT::TASKASSIGNMENT")
  (make-package "SUSHI_BOT::TASKASSIGNMENT"))
(unless (find-package "SUSHI_BOT::TASKASSIGNMENTREQUEST")
  (make-package "SUSHI_BOT::TASKASSIGNMENTREQUEST"))
(unless (find-package "SUSHI_BOT::TASKASSIGNMENTRESPONSE")
  (make-package "SUSHI_BOT::TASKASSIGNMENTRESPONSE"))

(in-package "ROS")





(defclass sushi_bot::TaskAssignmentRequest
  :super ros::object
  :slots (_robot_id _dish_name _table_number ))

(defmethod sushi_bot::TaskAssignmentRequest
  (:init
   (&key
    ((:robot_id __robot_id) "")
    ((:dish_name __dish_name) "")
    ((:table_number __table_number) "")
    )
   (send-super :init)
   (setq _robot_id (string __robot_id))
   (setq _dish_name (string __dish_name))
   (setq _table_number (string __table_number))
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:dish_name
   (&optional __dish_name)
   (if __dish_name (setq _dish_name __dish_name)) _dish_name)
  (:table_number
   (&optional __table_number)
   (if __table_number (setq _table_number __table_number)) _table_number)
  (:serialization-length
   ()
   (+
    ;; string _robot_id
    4 (length _robot_id)
    ;; string _dish_name
    4 (length _dish_name)
    ;; string _table_number
    4 (length _table_number)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;; string _dish_name
       (write-long (length _dish_name) s) (princ _dish_name s)
     ;; string _table_number
       (write-long (length _table_number) s) (princ _table_number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _dish_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dish_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _table_number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _table_number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass sushi_bot::TaskAssignmentResponse
  :super ros::object
  :slots (_success _message ))

(defmethod sushi_bot::TaskAssignmentResponse
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

(defclass sushi_bot::TaskAssignment
  :super ros::object
  :slots ())

(setf (get sushi_bot::TaskAssignment :md5sum-) "ba41c7c5d4e8b7cf1a6d4085ce149d1f")
(setf (get sushi_bot::TaskAssignment :datatype-) "sushi_bot/TaskAssignment")
(setf (get sushi_bot::TaskAssignment :request) sushi_bot::TaskAssignmentRequest)
(setf (get sushi_bot::TaskAssignment :response) sushi_bot::TaskAssignmentResponse)

(defmethod sushi_bot::TaskAssignmentRequest
  (:response () (instance sushi_bot::TaskAssignmentResponse :init)))

(setf (get sushi_bot::TaskAssignmentRequest :md5sum-) "ba41c7c5d4e8b7cf1a6d4085ce149d1f")
(setf (get sushi_bot::TaskAssignmentRequest :datatype-) "sushi_bot/TaskAssignmentRequest")
(setf (get sushi_bot::TaskAssignmentRequest :definition-)
      "string robot_id
string dish_name
string table_number
---
bool success
string message
")

(setf (get sushi_bot::TaskAssignmentResponse :md5sum-) "ba41c7c5d4e8b7cf1a6d4085ce149d1f")
(setf (get sushi_bot::TaskAssignmentResponse :datatype-) "sushi_bot/TaskAssignmentResponse")
(setf (get sushi_bot::TaskAssignmentResponse :definition-)
      "string robot_id
string dish_name
string table_number
---
bool success
string message
")



(provide :sushi_bot/TaskAssignment "ba41c7c5d4e8b7cf1a6d4085ce149d1f")


