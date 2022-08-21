
(cl:in-package :asdf)

(defsystem "cute_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Float64Array" :depends-on ("_package_Float64Array"))
    (:file "_package_Float64Array" :depends-on ("_package"))
  ))