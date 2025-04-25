;; Auto-generated. Do not edit!


(when (boundp 'sushi_bot::Order)
  (if (not (find-package "SUSHI_BOT"))
    (make-package "SUSHI_BOT"))
  (shadow 'Order (find-package "SUSHI_BOT")))
(unless (find-package "SUSHI_BOT::ORDER")
  (make-package "SUSHI_BOT::ORDER"))

(in-package "ROS")
;;//! \htmlinclude Order.msg.html


(defclass sushi_bot::Order
  :super ros::object
  :slots (_order_id _table_id _dish_name ))

(defmethod sushi_bot::Order
  (:init
   (&key
    ((:order_id __order_id) "")
    ((:table_id __table_id) "")
    ((:dish_name __dish_name) "")
    )
   (send-super :init)
   (setq _order_id (string __order_id))
   (setq _table_id (string __table_id))
   (setq _dish_name (string __dish_name))
   self)
  (:order_id
   (&optional __order_id)
   (if __order_id (setq _order_id __order_id)) _order_id)
  (:table_id
   (&optional __table_id)
   (if __table_id (setq _table_id __table_id)) _table_id)
  (:dish_name
   (&optional __dish_name)
   (if __dish_name (setq _dish_name __dish_name)) _dish_name)
  (:serialization-length
   ()
   (+
    ;; string _order_id
    4 (length _order_id)
    ;; string _table_id
    4 (length _table_id)
    ;; string _dish_name
    4 (length _dish_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _order_id
       (write-long (length _order_id) s) (princ _order_id s)
     ;; string _table_id
       (write-long (length _table_id) s) (princ _table_id s)
     ;; string _dish_name
       (write-long (length _dish_name) s) (princ _dish_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _order_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _order_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _table_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _table_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _dish_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dish_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get sushi_bot::Order :md5sum-) "cbb635957c0ba7c2418791d5a6ac2702")
(setf (get sushi_bot::Order :datatype-) "sushi_bot/Order")
(setf (get sushi_bot::Order :definition-)
      "string order_id
string table_id
string dish_name

")



(provide :sushi_bot/Order "cbb635957c0ba7c2418791d5a6ac2702")


