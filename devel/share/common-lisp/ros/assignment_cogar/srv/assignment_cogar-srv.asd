
(cl:in-package :asdf)

(defsystem "assignment_cogar-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AssignTask" :depends-on ("_package_AssignTask"))
    (:file "_package_AssignTask" :depends-on ("_package"))
    (:file "FoodPlacer" :depends-on ("_package_FoodPlacer"))
    (:file "_package_FoodPlacer" :depends-on ("_package"))
    (:file "Microphone" :depends-on ("_package_Microphone"))
    (:file "_package_Microphone" :depends-on ("_package"))
    (:file "TriggerAnalysis" :depends-on ("_package_TriggerAnalysis"))
    (:file "_package_TriggerAnalysis" :depends-on ("_package"))
    (:file "VerifyOrder" :depends-on ("_package_VerifyOrder"))
    (:file "_package_VerifyOrder" :depends-on ("_package"))
  ))