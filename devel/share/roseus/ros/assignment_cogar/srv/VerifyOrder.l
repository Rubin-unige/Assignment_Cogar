;; Auto-generated. Do not edit!


(when (boundp 'assignment_cogar::VerifyOrder)
  (if (not (find-package "ASSIGNMENT_COGAR"))
    (make-package "ASSIGNMENT_COGAR"))
  (shadow 'VerifyOrder (find-package "ASSIGNMENT_COGAR")))
(unless (find-package "ASSIGNMENT_COGAR::VERIFYORDER")
  (make-package "ASSIGNMENT_COGAR::VERIFYORDER"))
(unless (find-package "ASSIGNMENT_COGAR::VERIFYORDERREQUEST")
  (make-package "ASSIGNMENT_COGAR::VERIFYORDERREQUEST"))
(unless (find-package "ASSIGNMENT_COGAR::VERIFYORDERRESPONSE")
  (make-package "ASSIGNMENT_COGAR::VERIFYORDERRESPONSE"))

(in-package "ROS")





(defclass assignment_cogar::VerifyOrderRequest
  :super ros::object
  :slots (_robot_id _dish_name ))

(defmethod assignment_cogar::VerifyOrderRequest
  (:init
   (&key
    ((:robot_id __robot_id) "")
    ((:dish_name __dish_name) "")
    )
   (send-super :init)
   (setq _robot_id (string __robot_id))
   (setq _dish_name (string __dish_name))
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:dish_name
   (&optional __dish_name)
   (if __dish_name (setq _dish_name __dish_name)) _dish_name)
  (:serialization-length
   ()
   (+
    ;; string _robot_id
    4 (length _robot_id)
    ;; string _dish_name
    4 (length _dish_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;; string _dish_name
       (write-long (length _dish_name) s) (princ _dish_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _dish_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dish_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass assignment_cogar::VerifyOrderResponse
  :super ros::object
  :slots (_success ))

(defmethod assignment_cogar::VerifyOrderResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass assignment_cogar::VerifyOrder
  :super ros::object
  :slots ())

(setf (get assignment_cogar::VerifyOrder :md5sum-) "821c392785703a596b403147fefd576d")
(setf (get assignment_cogar::VerifyOrder :datatype-) "assignment_cogar/VerifyOrder")
(setf (get assignment_cogar::VerifyOrder :request) assignment_cogar::VerifyOrderRequest)
(setf (get assignment_cogar::VerifyOrder :response) assignment_cogar::VerifyOrderResponse)

(defmethod assignment_cogar::VerifyOrderRequest
  (:response () (instance assignment_cogar::VerifyOrderResponse :init)))

(setf (get assignment_cogar::VerifyOrderRequest :md5sum-) "821c392785703a596b403147fefd576d")
(setf (get assignment_cogar::VerifyOrderRequest :datatype-) "assignment_cogar/VerifyOrderRequest")
(setf (get assignment_cogar::VerifyOrderRequest :definition-)
      "string robot_id 
string dish_name
---
bool success
")

(setf (get assignment_cogar::VerifyOrderResponse :md5sum-) "821c392785703a596b403147fefd576d")
(setf (get assignment_cogar::VerifyOrderResponse :datatype-) "assignment_cogar/VerifyOrderResponse")
(setf (get assignment_cogar::VerifyOrderResponse :definition-)
      "string robot_id 
string dish_name
---
bool success
")



(provide :assignment_cogar/VerifyOrder "821c392785703a596b403147fefd576d")


