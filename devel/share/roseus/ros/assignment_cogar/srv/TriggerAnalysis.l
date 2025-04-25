;; Auto-generated. Do not edit!


(when (boundp 'assignment_cogar::TriggerAnalysis)
  (if (not (find-package "ASSIGNMENT_COGAR"))
    (make-package "ASSIGNMENT_COGAR"))
  (shadow 'TriggerAnalysis (find-package "ASSIGNMENT_COGAR")))
(unless (find-package "ASSIGNMENT_COGAR::TRIGGERANALYSIS")
  (make-package "ASSIGNMENT_COGAR::TRIGGERANALYSIS"))
(unless (find-package "ASSIGNMENT_COGAR::TRIGGERANALYSISREQUEST")
  (make-package "ASSIGNMENT_COGAR::TRIGGERANALYSISREQUEST"))
(unless (find-package "ASSIGNMENT_COGAR::TRIGGERANALYSISRESPONSE")
  (make-package "ASSIGNMENT_COGAR::TRIGGERANALYSISRESPONSE"))

(in-package "ROS")





(defclass assignment_cogar::TriggerAnalysisRequest
  :super ros::object
  :slots (_robot_id ))

(defmethod assignment_cogar::TriggerAnalysisRequest
  (:init
   (&key
    ((:robot_id __robot_id) "")
    )
   (send-super :init)
   (setq _robot_id (string __robot_id))
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:serialization-length
   ()
   (+
    ;; string _robot_id
    4 (length _robot_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass assignment_cogar::TriggerAnalysisResponse
  :super ros::object
  :slots (_success ))

(defmethod assignment_cogar::TriggerAnalysisResponse
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

(defclass assignment_cogar::TriggerAnalysis
  :super ros::object
  :slots ())

(setf (get assignment_cogar::TriggerAnalysis :md5sum-) "79fe38de1d07cd33dda0cbb43e0bafa8")
(setf (get assignment_cogar::TriggerAnalysis :datatype-) "assignment_cogar/TriggerAnalysis")
(setf (get assignment_cogar::TriggerAnalysis :request) assignment_cogar::TriggerAnalysisRequest)
(setf (get assignment_cogar::TriggerAnalysis :response) assignment_cogar::TriggerAnalysisResponse)

(defmethod assignment_cogar::TriggerAnalysisRequest
  (:response () (instance assignment_cogar::TriggerAnalysisResponse :init)))

(setf (get assignment_cogar::TriggerAnalysisRequest :md5sum-) "79fe38de1d07cd33dda0cbb43e0bafa8")
(setf (get assignment_cogar::TriggerAnalysisRequest :datatype-) "assignment_cogar/TriggerAnalysisRequest")
(setf (get assignment_cogar::TriggerAnalysisRequest :definition-)
      "string robot_id
---
bool success
")

(setf (get assignment_cogar::TriggerAnalysisResponse :md5sum-) "79fe38de1d07cd33dda0cbb43e0bafa8")
(setf (get assignment_cogar::TriggerAnalysisResponse :datatype-) "assignment_cogar/TriggerAnalysisResponse")
(setf (get assignment_cogar::TriggerAnalysisResponse :definition-)
      "string robot_id
---
bool success
")



(provide :assignment_cogar/TriggerAnalysis "79fe38de1d07cd33dda0cbb43e0bafa8")


