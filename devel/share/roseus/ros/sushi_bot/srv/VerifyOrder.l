;; Auto-generated. Do not edit!


(when (boundp 'sushi_bot::VerifyOrder)
  (if (not (find-package "SUSHI_BOT"))
    (make-package "SUSHI_BOT"))
  (shadow 'VerifyOrder (find-package "SUSHI_BOT")))
(unless (find-package "SUSHI_BOT::VERIFYORDER")
  (make-package "SUSHI_BOT::VERIFYORDER"))
(unless (find-package "SUSHI_BOT::VERIFYORDERREQUEST")
  (make-package "SUSHI_BOT::VERIFYORDERREQUEST"))
(unless (find-package "SUSHI_BOT::VERIFYORDERRESPONSE")
  (make-package "SUSHI_BOT::VERIFYORDERRESPONSE"))

(in-package "ROS")





(defclass sushi_bot::VerifyOrderRequest
  :super ros::object
  :slots (_robot_id _dish_name ))

(defmethod sushi_bot::VerifyOrderRequest
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

(defclass sushi_bot::VerifyOrderResponse
  :super ros::object
  :slots (_success ))

(defmethod sushi_bot::VerifyOrderResponse
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

(defclass sushi_bot::VerifyOrder
  :super ros::object
  :slots ())

(setf (get sushi_bot::VerifyOrder :md5sum-) "821c392785703a596b403147fefd576d")
(setf (get sushi_bot::VerifyOrder :datatype-) "sushi_bot/VerifyOrder")
(setf (get sushi_bot::VerifyOrder :request) sushi_bot::VerifyOrderRequest)
(setf (get sushi_bot::VerifyOrder :response) sushi_bot::VerifyOrderResponse)

(defmethod sushi_bot::VerifyOrderRequest
  (:response () (instance sushi_bot::VerifyOrderResponse :init)))

(setf (get sushi_bot::VerifyOrderRequest :md5sum-) "821c392785703a596b403147fefd576d")
(setf (get sushi_bot::VerifyOrderRequest :datatype-) "sushi_bot/VerifyOrderRequest")
(setf (get sushi_bot::VerifyOrderRequest :definition-)
      "string robot_id 
string dish_name
---
bool success
")

(setf (get sushi_bot::VerifyOrderResponse :md5sum-) "821c392785703a596b403147fefd576d")
(setf (get sushi_bot::VerifyOrderResponse :datatype-) "sushi_bot/VerifyOrderResponse")
(setf (get sushi_bot::VerifyOrderResponse :definition-)
      "string robot_id 
string dish_name
---
bool success
")



(provide :sushi_bot/VerifyOrder "821c392785703a596b403147fefd576d")


