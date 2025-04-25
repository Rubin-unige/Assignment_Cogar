;; Auto-generated. Do not edit!


(when (boundp 'sushi_bot::TableStatus)
  (if (not (find-package "SUSHI_BOT"))
    (make-package "SUSHI_BOT"))
  (shadow 'TableStatus (find-package "SUSHI_BOT")))
(unless (find-package "SUSHI_BOT::TABLESTATUS")
  (make-package "SUSHI_BOT::TABLESTATUS"))

(in-package "ROS")
;;//! \htmlinclude TableStatus.msg.html


(defclass sushi_bot::TableStatus
  :super ros::object
  :slots (_status _has_empty_plate _timestamp ))

(defmethod sushi_bot::TableStatus
  (:init
   (&key
    ((:status __status) "")
    ((:has_empty_plate __has_empty_plate) nil)
    ((:timestamp __timestamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _status (string __status))
   (setq _has_empty_plate __has_empty_plate)
   (setq _timestamp __timestamp)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:has_empty_plate
   (&optional (__has_empty_plate :null))
   (if (not (eq __has_empty_plate :null)) (setq _has_empty_plate __has_empty_plate)) _has_empty_plate)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ;; bool _has_empty_plate
    1
    ;; time _timestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; bool _has_empty_plate
       (if _has_empty_plate (write-byte -1 s) (write-byte 0 s))
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _has_empty_plate
     (setq _has_empty_plate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sushi_bot::TableStatus :md5sum-) "40a61210ebc44d54272f5bae65a7e206")
(setf (get sushi_bot::TableStatus :datatype-) "sushi_bot/TableStatus")
(setf (get sushi_bot::TableStatus :definition-)
      "string status
bool has_empty_plate
time timestamp

")



(provide :sushi_bot/TableStatus "40a61210ebc44d54272f5bae65a7e206")


