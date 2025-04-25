;; Auto-generated. Do not edit!


(when (boundp 'assignment_cogar::FoodPlacer)
  (if (not (find-package "ASSIGNMENT_COGAR"))
    (make-package "ASSIGNMENT_COGAR"))
  (shadow 'FoodPlacer (find-package "ASSIGNMENT_COGAR")))
(unless (find-package "ASSIGNMENT_COGAR::FOODPLACER")
  (make-package "ASSIGNMENT_COGAR::FOODPLACER"))
(unless (find-package "ASSIGNMENT_COGAR::FOODPLACERREQUEST")
  (make-package "ASSIGNMENT_COGAR::FOODPLACERREQUEST"))
(unless (find-package "ASSIGNMENT_COGAR::FOODPLACERRESPONSE")
  (make-package "ASSIGNMENT_COGAR::FOODPLACERRESPONSE"))

(in-package "ROS")





(defclass assignment_cogar::FoodPlacerRequest
  :super ros::object
  :slots (_status _has_empty_plate _robot_id ))

(defmethod assignment_cogar::FoodPlacerRequest
  (:init
   (&key
    ((:status __status) "")
    ((:has_empty_plate __has_empty_plate) nil)
    ((:robot_id __robot_id) "")
    )
   (send-super :init)
   (setq _status (string __status))
   (setq _has_empty_plate __has_empty_plate)
   (setq _robot_id (string __robot_id))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:has_empty_plate
   (&optional (__has_empty_plate :null))
   (if (not (eq __has_empty_plate :null)) (setq _has_empty_plate __has_empty_plate)) _has_empty_plate)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ;; bool _has_empty_plate
    1
    ;; string _robot_id
    4 (length _robot_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; bool _has_empty_plate
       (if _has_empty_plate (write-byte -1 s) (write-byte 0 s))
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _has_empty_plate
     (setq _has_empty_plate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _robot_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass assignment_cogar::FoodPlacerResponse
  :super ros::object
  :slots (_success _message ))

(defmethod assignment_cogar::FoodPlacerResponse
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

(defclass assignment_cogar::FoodPlacer
  :super ros::object
  :slots ())

(setf (get assignment_cogar::FoodPlacer :md5sum-) "5a619c9ede21322d453b3bcb4c37ad47")
(setf (get assignment_cogar::FoodPlacer :datatype-) "assignment_cogar/FoodPlacer")
(setf (get assignment_cogar::FoodPlacer :request) assignment_cogar::FoodPlacerRequest)
(setf (get assignment_cogar::FoodPlacer :response) assignment_cogar::FoodPlacerResponse)

(defmethod assignment_cogar::FoodPlacerRequest
  (:response () (instance assignment_cogar::FoodPlacerResponse :init)))

(setf (get assignment_cogar::FoodPlacerRequest :md5sum-) "5a619c9ede21322d453b3bcb4c37ad47")
(setf (get assignment_cogar::FoodPlacerRequest :datatype-) "assignment_cogar/FoodPlacerRequest")
(setf (get assignment_cogar::FoodPlacerRequest :definition-)
      "string status
bool has_empty_plate
string robot_id
---
bool success
string message

")

(setf (get assignment_cogar::FoodPlacerResponse :md5sum-) "5a619c9ede21322d453b3bcb4c37ad47")
(setf (get assignment_cogar::FoodPlacerResponse :datatype-) "assignment_cogar/FoodPlacerResponse")
(setf (get assignment_cogar::FoodPlacerResponse :definition-)
      "string status
bool has_empty_plate
string robot_id
---
bool success
string message

")



(provide :assignment_cogar/FoodPlacer "5a619c9ede21322d453b3bcb4c37ad47")


