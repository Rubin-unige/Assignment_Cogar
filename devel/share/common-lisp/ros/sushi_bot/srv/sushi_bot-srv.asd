
(cl:in-package :asdf)

(defsystem "sushi_bot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Microphone" :depends-on ("_package_Microphone"))
    (:file "_package_Microphone" :depends-on ("_package"))
    (:file "RobotTask" :depends-on ("_package_RobotTask"))
    (:file "_package_RobotTask" :depends-on ("_package"))
    (:file "VerifyOrder" :depends-on ("_package_VerifyOrder"))
    (:file "_package_VerifyOrder" :depends-on ("_package"))
  ))