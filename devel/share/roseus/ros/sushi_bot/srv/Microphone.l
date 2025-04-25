;; Auto-generated. Do not edit!


(when (boundp 'sushi_bot::Microphone)
  (if (not (find-package "SUSHI_BOT"))
    (make-package "SUSHI_BOT"))
  (shadow 'Microphone (find-package "SUSHI_BOT")))
(unless (find-package "SUSHI_BOT::MICROPHONE")
  (make-package "SUSHI_BOT::MICROPHONE"))
(unless (find-package "SUSHI_BOT::MICROPHONEREQUEST")
  (make-package "SUSHI_BOT::MICROPHONEREQUEST"))
(unless (find-package "SUSHI_BOT::MICROPHONERESPONSE")
  (make-package "SUSHI_BOT::MICROPHONERESPONSE"))

(in-package "ROS")





(defclass sushi_bot::MicrophoneRequest
  :super ros::object
  :slots ())

(defmethod sushi_bot::MicrophoneRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass sushi_bot::MicrophoneResponse
  :super ros::object
  :slots (_response ))

(defmethod sushi_bot::MicrophoneResponse
  (:init
   (&key
    ((:response __response) "")
    )
   (send-super :init)
   (setq _response (string __response))
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; string _response
    4 (length _response)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _response
       (write-long (length _response) s) (princ _response s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass sushi_bot::Microphone
  :super ros::object
  :slots ())

(setf (get sushi_bot::Microphone :md5sum-) "6de314e2dc76fbff2b6244a6ad70b68d")
(setf (get sushi_bot::Microphone :datatype-) "sushi_bot/Microphone")
(setf (get sushi_bot::Microphone :request) sushi_bot::MicrophoneRequest)
(setf (get sushi_bot::Microphone :response) sushi_bot::MicrophoneResponse)

(defmethod sushi_bot::MicrophoneRequest
  (:response () (instance sushi_bot::MicrophoneResponse :init)))

(setf (get sushi_bot::MicrophoneRequest :md5sum-) "6de314e2dc76fbff2b6244a6ad70b68d")
(setf (get sushi_bot::MicrophoneRequest :datatype-) "sushi_bot/MicrophoneRequest")
(setf (get sushi_bot::MicrophoneRequest :definition-)
      "# Request
---
string response

")

(setf (get sushi_bot::MicrophoneResponse :md5sum-) "6de314e2dc76fbff2b6244a6ad70b68d")
(setf (get sushi_bot::MicrophoneResponse :datatype-) "sushi_bot/MicrophoneResponse")
(setf (get sushi_bot::MicrophoneResponse :definition-)
      "# Request
---
string response

")



(provide :sushi_bot/Microphone "6de314e2dc76fbff2b6244a6ad70b68d")


