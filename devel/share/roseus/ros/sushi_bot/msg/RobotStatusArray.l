;; Auto-generated. Do not edit!


(when (boundp 'sushi_bot::RobotStatusArray)
  (if (not (find-package "SUSHI_BOT"))
    (make-package "SUSHI_BOT"))
  (shadow 'RobotStatusArray (find-package "SUSHI_BOT")))
(unless (find-package "SUSHI_BOT::ROBOTSTATUSARRAY")
  (make-package "SUSHI_BOT::ROBOTSTATUSARRAY"))

(in-package "ROS")
;;//! \htmlinclude RobotStatusArray.msg.html


(defclass sushi_bot::RobotStatusArray
  :super ros::object
  :slots (_robots ))

(defmethod sushi_bot::RobotStatusArray
  (:init
   (&key
    ((:robots __robots) ())
    )
   (send-super :init)
   (setq _robots __robots)
   self)
  (:robots
   (&rest __robots)
   (if (keywordp (car __robots))
       (send* _robots __robots)
     (progn
       (if __robots (setq _robots (car __robots)))
       _robots)))
  (:serialization-length
   ()
   (+
    ;; sushi_bot/RobotStatus[] _robots
    (apply #'+ (send-all _robots :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sushi_bot/RobotStatus[] _robots
     (write-long (length _robots) s)
     (dolist (elem _robots)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sushi_bot/RobotStatus[] _robots
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robots (let (r) (dotimes (i n) (push (instance sushi_bot::RobotStatus :init) r)) r))
     (dolist (elem- _robots)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sushi_bot::RobotStatusArray :md5sum-) "51965e5e3df189789150d9c35cd148f2")
(setf (get sushi_bot::RobotStatusArray :datatype-) "sushi_bot/RobotStatusArray")
(setf (get sushi_bot::RobotStatusArray :definition-)
      "RobotStatus[] robots
================================================================================
MSG: sushi_bot/RobotStatus
string robot_id
string status
string current_task
string current_table
bool is_available
")



(provide :sushi_bot/RobotStatusArray "51965e5e3df189789150d9c35cd148f2")


