;; Auto-generated. Do not edit!


(when (boundp 'assignment_cogar::Microphone)
  (if (not (find-package "ASSIGNMENT_COGAR"))
    (make-package "ASSIGNMENT_COGAR"))
  (shadow 'Microphone (find-package "ASSIGNMENT_COGAR")))
(unless (find-package "ASSIGNMENT_COGAR::MICROPHONE")
  (make-package "ASSIGNMENT_COGAR::MICROPHONE"))
(unless (find-package "ASSIGNMENT_COGAR::MICROPHONEREQUEST")
  (make-package "ASSIGNMENT_COGAR::MICROPHONEREQUEST"))
(unless (find-package "ASSIGNMENT_COGAR::MICROPHONERESPONSE")
  (make-package "ASSIGNMENT_COGAR::MICROPHONERESPONSE"))

(in-package "ROS")





(defclass assignment_cogar::MicrophoneRequest
  :super ros::object
  :slots ())

(defmethod assignment_cogar::MicrophoneRequest
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

(defclass assignment_cogar::MicrophoneResponse
  :super ros::object
  :slots (_response ))

(defmethod assignment_cogar::MicrophoneResponse
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

(defclass assignment_cogar::Microphone
  :super ros::object
  :slots ())

(setf (get assignment_cogar::Microphone :md5sum-) "6de314e2dc76fbff2b6244a6ad70b68d")
(setf (get assignment_cogar::Microphone :datatype-) "assignment_cogar/Microphone")
(setf (get assignment_cogar::Microphone :request) assignment_cogar::MicrophoneRequest)
(setf (get assignment_cogar::Microphone :response) assignment_cogar::MicrophoneResponse)

(defmethod assignment_cogar::MicrophoneRequest
  (:response () (instance assignment_cogar::MicrophoneResponse :init)))

(setf (get assignment_cogar::MicrophoneRequest :md5sum-) "6de314e2dc76fbff2b6244a6ad70b68d")
(setf (get assignment_cogar::MicrophoneRequest :datatype-) "assignment_cogar/MicrophoneRequest")
(setf (get assignment_cogar::MicrophoneRequest :definition-)
      "# Request
---
string response

")

(setf (get assignment_cogar::MicrophoneResponse :md5sum-) "6de314e2dc76fbff2b6244a6ad70b68d")
(setf (get assignment_cogar::MicrophoneResponse :datatype-) "assignment_cogar/MicrophoneResponse")
(setf (get assignment_cogar::MicrophoneResponse :definition-)
      "# Request
---
string response

")



(provide :assignment_cogar/Microphone "6de314e2dc76fbff2b6244a6ad70b68d")


