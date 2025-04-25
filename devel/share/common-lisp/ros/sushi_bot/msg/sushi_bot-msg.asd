
(cl:in-package :asdf)

(defsystem "sushi_bot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Order" :depends-on ("_package_Order"))
    (:file "_package_Order" :depends-on ("_package"))
    (:file "OrderStatus" :depends-on ("_package_OrderStatus"))
    (:file "_package_OrderStatus" :depends-on ("_package"))
    (:file "RobotStatus" :depends-on ("_package_RobotStatus"))
    (:file "_package_RobotStatus" :depends-on ("_package"))
    (:file "TableStatus" :depends-on ("_package_TableStatus"))
    (:file "_package_TableStatus" :depends-on ("_package"))
  ))