;; Auto-generated. Do not edit!


(when (boundp 'robotics_cyton::cyton_enable_robot)
  (if (not (find-package "ROBOTICS_CYTON"))
    (make-package "ROBOTICS_CYTON"))
  (shadow 'cyton_enable_robot (find-package "ROBOTICS_CYTON")))
(unless (find-package "ROBOTICS_CYTON::CYTON_ENABLE_ROBOT")
  (make-package "ROBOTICS_CYTON::CYTON_ENABLE_ROBOT"))
(unless (find-package "ROBOTICS_CYTON::CYTON_ENABLE_ROBOTREQUEST")
  (make-package "ROBOTICS_CYTON::CYTON_ENABLE_ROBOTREQUEST"))
(unless (find-package "ROBOTICS_CYTON::CYTON_ENABLE_ROBOTRESPONSE")
  (make-package "ROBOTICS_CYTON::CYTON_ENABLE_ROBOTRESPONSE"))

(in-package "ROS")





(defclass robotics_cyton::cyton_enable_robotRequest
  :super ros::object
  :slots (_enable_robot ))

(defmethod robotics_cyton::cyton_enable_robotRequest
  (:init
   (&key
    ((:enable_robot __enable_robot) 0)
    )
   (send-super :init)
   (setq _enable_robot (round __enable_robot))
   self)
  (:enable_robot
   (&optional __enable_robot)
   (if __enable_robot (setq _enable_robot __enable_robot)) _enable_robot)
  (:serialization-length
   ()
   (+
    ;; int32 _enable_robot
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _enable_robot
       (write-long _enable_robot s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _enable_robot
     (setq _enable_robot (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robotics_cyton::cyton_enable_robotResponse
  :super ros::object
  :slots ())

(defmethod robotics_cyton::cyton_enable_robotResponse
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

(defclass robotics_cyton::cyton_enable_robot
  :super ros::object
  :slots ())

(setf (get robotics_cyton::cyton_enable_robot :md5sum-) "cbdd2e9cd62c12dcd05983de0c95bf07")
(setf (get robotics_cyton::cyton_enable_robot :datatype-) "robotics_cyton/cyton_enable_robot")
(setf (get robotics_cyton::cyton_enable_robot :request) robotics_cyton::cyton_enable_robotRequest)
(setf (get robotics_cyton::cyton_enable_robot :response) robotics_cyton::cyton_enable_robotResponse)

(defmethod robotics_cyton::cyton_enable_robotRequest
  (:response () (instance robotics_cyton::cyton_enable_robotResponse :init)))

(setf (get robotics_cyton::cyton_enable_robotRequest :md5sum-) "cbdd2e9cd62c12dcd05983de0c95bf07")
(setf (get robotics_cyton::cyton_enable_robotRequest :datatype-) "robotics_cyton/cyton_enable_robotRequest")
(setf (get robotics_cyton::cyton_enable_robotRequest :definition-)
      "int32 enable_robot

---
")

(setf (get robotics_cyton::cyton_enable_robotResponse :md5sum-) "cbdd2e9cd62c12dcd05983de0c95bf07")
(setf (get robotics_cyton::cyton_enable_robotResponse :datatype-) "robotics_cyton/cyton_enable_robotResponse")
(setf (get robotics_cyton::cyton_enable_robotResponse :definition-)
      "int32 enable_robot

---
")



(provide :robotics_cyton/cyton_enable_robot "cbdd2e9cd62c12dcd05983de0c95bf07")


