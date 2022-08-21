;; Auto-generated. Do not edit!


(when (boundp 'robotics_cyton::Float64)
  (if (not (find-package "ROBOTICS_CYTON"))
    (make-package "ROBOTICS_CYTON"))
  (shadow 'Float64 (find-package "ROBOTICS_CYTON")))
(unless (find-package "ROBOTICS_CYTON::FLOAT64")
  (make-package "ROBOTICS_CYTON::FLOAT64"))
(unless (find-package "ROBOTICS_CYTON::FLOAT64REQUEST")
  (make-package "ROBOTICS_CYTON::FLOAT64REQUEST"))
(unless (find-package "ROBOTICS_CYTON::FLOAT64RESPONSE")
  (make-package "ROBOTICS_CYTON::FLOAT64RESPONSE"))

(in-package "ROS")





(defclass robotics_cyton::Float64Request
  :super ros::object
  :slots (_data ))

(defmethod robotics_cyton::Float64Request
  (:init
   (&key
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _data (float __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float64 _data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _data
       (sys::poke _data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _data
     (setq _data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass robotics_cyton::Float64Response
  :super ros::object
  :slots ())

(defmethod robotics_cyton::Float64Response
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

(defclass robotics_cyton::Float64
  :super ros::object
  :slots ())

(setf (get robotics_cyton::Float64 :md5sum-) "fdb28210bfa9d7c91146260178d9a584")
(setf (get robotics_cyton::Float64 :datatype-) "robotics_cyton/Float64")
(setf (get robotics_cyton::Float64 :request) robotics_cyton::Float64Request)
(setf (get robotics_cyton::Float64 :response) robotics_cyton::Float64Response)

(defmethod robotics_cyton::Float64Request
  (:response () (instance robotics_cyton::Float64Response :init)))

(setf (get robotics_cyton::Float64Request :md5sum-) "fdb28210bfa9d7c91146260178d9a584")
(setf (get robotics_cyton::Float64Request :datatype-) "robotics_cyton/Float64Request")
(setf (get robotics_cyton::Float64Request :definition-)
      "float64 data

---
")

(setf (get robotics_cyton::Float64Response :md5sum-) "fdb28210bfa9d7c91146260178d9a584")
(setf (get robotics_cyton::Float64Response :datatype-) "robotics_cyton/Float64Response")
(setf (get robotics_cyton::Float64Response :definition-)
      "float64 data

---
")



(provide :robotics_cyton/Float64 "fdb28210bfa9d7c91146260178d9a584")


