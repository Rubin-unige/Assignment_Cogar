;; Auto-generated. Do not edit!


(when (boundp 'assignment_cogar::AssignTask)
  (if (not (find-package "ASSIGNMENT_COGAR"))
    (make-package "ASSIGNMENT_COGAR"))
  (shadow 'AssignTask (find-package "ASSIGNMENT_COGAR")))
(unless (find-package "ASSIGNMENT_COGAR::ASSIGNTASK")
  (make-package "ASSIGNMENT_COGAR::ASSIGNTASK"))
(unless (find-package "ASSIGNMENT_COGAR::ASSIGNTASKREQUEST")
  (make-package "ASSIGNMENT_COGAR::ASSIGNTASKREQUEST"))
(unless (find-package "ASSIGNMENT_COGAR::ASSIGNTASKRESPONSE")
  (make-package "ASSIGNMENT_COGAR::ASSIGNTASKRESPONSE"))

(in-package "ROS")





(defclass assignment_cogar::AssignTaskRequest
  :super ros::object
  :slots (_order_id _robot_id _dish_name _table_id ))

(defmethod assignment_cogar::AssignTaskRequest
  (:init
   (&key
    ((:order_id __order_id) "")
    ((:robot_id __robot_id) "")
    ((:dish_name __dish_name) "")
    ((:table_id __table_id) "")
    )
   (send-super :init)
   (setq _order_id (string __order_id))
   (setq _robot_id (string __robot_id))
   (setq _dish_name (string __dish_name))
   (setq _table_id (string __table_id))
   self)
  (:order_id
   (&optional __order_id)
   (if __order_id (setq _order_id __order_id)) _order_id)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:dish_name
   (&optional __dish_name)
   (if __dish_name (setq _dish_name __dish_name)) _dish_name)
  (:table_id
   (&optional __table_id)
   (if __table_id (setq _table_id __table_id)) _table_id)
  (:serialization-length
   ()
   (+
    ;; string _order_id
    4 (length _order_id)
    ;; string _robot_id
    4 (length _robot_id)
    ;; string _dish_name
    4 (length _dish_name)
    ;; string _table_id
    4 (length _table_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _order_id
       (write-long (length _order_id) s) (princ _order_id s)
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;; string _dish_name
       (write-long (length _dish_name) s) (princ _dish_name s)
     ;; string _table_id
       (write-long (length _table_id) s) (princ _table_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _order_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _order_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _dish_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dish_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _table_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _table_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass assignment_cogar::AssignTaskResponse
  :super ros::object
  :slots (_success _message ))

(defmethod assignment_cogar::AssignTaskResponse
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

(defclass assignment_cogar::AssignTask
  :super ros::object
  :slots ())

(setf (get assignment_cogar::AssignTask :md5sum-) "f47a80f63d9e9eca8fb4a2735112c7ca")
(setf (get assignment_cogar::AssignTask :datatype-) "assignment_cogar/AssignTask")
(setf (get assignment_cogar::AssignTask :request) assignment_cogar::AssignTaskRequest)
(setf (get assignment_cogar::AssignTask :response) assignment_cogar::AssignTaskResponse)

(defmethod assignment_cogar::AssignTaskRequest
  (:response () (instance assignment_cogar::AssignTaskResponse :init)))

(setf (get assignment_cogar::AssignTaskRequest :md5sum-) "f47a80f63d9e9eca8fb4a2735112c7ca")
(setf (get assignment_cogar::AssignTaskRequest :datatype-) "assignment_cogar/AssignTaskRequest")
(setf (get assignment_cogar::AssignTaskRequest :definition-)
      "# Request
string order_id
string robot_id
string dish_name
string table_id
---
# Response
bool success
string message

")

(setf (get assignment_cogar::AssignTaskResponse :md5sum-) "f47a80f63d9e9eca8fb4a2735112c7ca")
(setf (get assignment_cogar::AssignTaskResponse :datatype-) "assignment_cogar/AssignTaskResponse")
(setf (get assignment_cogar::AssignTaskResponse :definition-)
      "# Request
string order_id
string robot_id
string dish_name
string table_id
---
# Response
bool success
string message

")



(provide :assignment_cogar/AssignTask "f47a80f63d9e9eca8fb4a2735112c7ca")


