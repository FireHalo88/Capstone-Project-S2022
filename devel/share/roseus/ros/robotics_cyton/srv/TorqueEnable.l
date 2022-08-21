;; Auto-generated. Do not edit!


(when (boundp 'robotics_cyton::TorqueEnable)
  (if (not (find-package "ROBOTICS_CYTON"))
    (make-package "ROBOTICS_CYTON"))
  (shadow 'TorqueEnable (find-package "ROBOTICS_CYTON")))
(unless (find-package "ROBOTICS_CYTON::TORQUEENABLE")
  (make-package "ROBOTICS_CYTON::TORQUEENABLE"))
(unless (find-package "ROBOTICS_CYTON::TORQUEENABLEREQUEST")
  (make-package "ROBOTICS_CYTON::TORQUEENABLEREQUEST"))
(unless (find-package "ROBOTICS_CYTON::TORQUEENABLERESPONSE")
  (make-package "ROBOTICS_CYTON::TORQUEENABLERESPONSE"))

(in-package "ROS")





(defclass robotics_cyton::TorqueEnableRequest
  :super ros::object
  :slots (_torque_enable ))

(defmethod robotics_cyton::TorqueEnableRequest
  (:init
   (&key
    ((:torque_enable __torque_enable) 0)
    )
   (send-super :init)
   (setq _torque_enable (round __torque_enable))
   self)
  (:torque_enable
   (&optional __torque_enable)
   (if __torque_enable (setq _torque_enable __torque_enable)) _torque_enable)
  (:serialization-length
   ()
   (+
    ;; byte _torque_enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; byte _torque_enable
       (write-byte _torque_enable s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; byte _torque_enable
     (setq _torque_enable (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _torque_enable 127) (setq _torque_enable (- _torque_enable 256)))
   ;;
   self)
  )

(defclass robotics_cyton::TorqueEnableResponse
  :super ros::object
  :slots ())

(defmethod robotics_cyton::TorqueEnableResponse
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

(defclass robotics_cyton::TorqueEnable
  :super ros::object
  :slots ())

(setf (get robotics_cyton::TorqueEnable :md5sum-) "bc940b9bf6a046947cb9f7274d752966")
(setf (get robotics_cyton::TorqueEnable :datatype-) "robotics_cyton/TorqueEnable")
(setf (get robotics_cyton::TorqueEnable :request) robotics_cyton::TorqueEnableRequest)
(setf (get robotics_cyton::TorqueEnable :response) robotics_cyton::TorqueEnableResponse)

(defmethod robotics_cyton::TorqueEnableRequest
  (:response () (instance robotics_cyton::TorqueEnableResponse :init)))

(setf (get robotics_cyton::TorqueEnableRequest :md5sum-) "bc940b9bf6a046947cb9f7274d752966")
(setf (get robotics_cyton::TorqueEnableRequest :datatype-) "robotics_cyton/TorqueEnableRequest")
(setf (get robotics_cyton::TorqueEnableRequest :definition-)
      "byte torque_enable
---


")

(setf (get robotics_cyton::TorqueEnableResponse :md5sum-) "bc940b9bf6a046947cb9f7274d752966")
(setf (get robotics_cyton::TorqueEnableResponse :datatype-) "robotics_cyton/TorqueEnableResponse")
(setf (get robotics_cyton::TorqueEnableResponse :definition-)
      "byte torque_enable
---


")



(provide :robotics_cyton/TorqueEnable "bc940b9bf6a046947cb9f7274d752966")


