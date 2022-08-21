;; Auto-generated. Do not edit!


(when (boundp 'robotics_cyton::cyton_move_all_joints)
  (if (not (find-package "ROBOTICS_CYTON"))
    (make-package "ROBOTICS_CYTON"))
  (shadow 'cyton_move_all_joints (find-package "ROBOTICS_CYTON")))
(unless (find-package "ROBOTICS_CYTON::CYTON_MOVE_ALL_JOINTS")
  (make-package "ROBOTICS_CYTON::CYTON_MOVE_ALL_JOINTS"))
(unless (find-package "ROBOTICS_CYTON::CYTON_MOVE_ALL_JOINTSREQUEST")
  (make-package "ROBOTICS_CYTON::CYTON_MOVE_ALL_JOINTSREQUEST"))
(unless (find-package "ROBOTICS_CYTON::CYTON_MOVE_ALL_JOINTSRESPONSE")
  (make-package "ROBOTICS_CYTON::CYTON_MOVE_ALL_JOINTSRESPONSE"))

(in-package "ROS")





(defclass robotics_cyton::cyton_move_all_jointsRequest
  :super ros::object
  :slots (_jointStates _acc _vel ))

(defmethod robotics_cyton::cyton_move_all_jointsRequest
  (:init
   (&key
    ((:jointStates __jointStates) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acc __acc) 0.0)
    ((:vel __vel) 0.0)
    )
   (send-super :init)
   (setq _jointStates __jointStates)
   (setq _acc (float __acc))
   (setq _vel (float __vel))
   self)
  (:jointStates
   (&optional __jointStates)
   (if __jointStates (setq _jointStates __jointStates)) _jointStates)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:serialization-length
   ()
   (+
    ;; float64[] _jointStates
    (* 8    (length _jointStates)) 4
    ;; float32 _acc
    4
    ;; float32 _vel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _jointStates
     (write-long (length _jointStates) s)
     (dotimes (i (length _jointStates))
       (sys::poke (elt _jointStates i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float32 _acc
       (sys::poke _acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _jointStates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _jointStates (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _jointStates i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float32 _acc
     (setq _acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel
     (setq _vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robotics_cyton::cyton_move_all_jointsResponse
  :super ros::object
  :slots ())

(defmethod robotics_cyton::cyton_move_all_jointsResponse
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

(defclass robotics_cyton::cyton_move_all_joints
  :super ros::object
  :slots ())

(setf (get robotics_cyton::cyton_move_all_joints :md5sum-) "9e70ab60f9bda1c235d95bce9fc54eb5")
(setf (get robotics_cyton::cyton_move_all_joints :datatype-) "robotics_cyton/cyton_move_all_joints")
(setf (get robotics_cyton::cyton_move_all_joints :request) robotics_cyton::cyton_move_all_jointsRequest)
(setf (get robotics_cyton::cyton_move_all_joints :response) robotics_cyton::cyton_move_all_jointsResponse)

(defmethod robotics_cyton::cyton_move_all_jointsRequest
  (:response () (instance robotics_cyton::cyton_move_all_jointsResponse :init)))

(setf (get robotics_cyton::cyton_move_all_jointsRequest :md5sum-) "9e70ab60f9bda1c235d95bce9fc54eb5")
(setf (get robotics_cyton::cyton_move_all_jointsRequest :datatype-) "robotics_cyton/cyton_move_all_jointsRequest")
(setf (get robotics_cyton::cyton_move_all_jointsRequest :definition-)
      "float64[] jointStates
float32 acc
float32 vel

---
")

(setf (get robotics_cyton::cyton_move_all_jointsResponse :md5sum-) "9e70ab60f9bda1c235d95bce9fc54eb5")
(setf (get robotics_cyton::cyton_move_all_jointsResponse :datatype-) "robotics_cyton/cyton_move_all_jointsResponse")
(setf (get robotics_cyton::cyton_move_all_jointsResponse :definition-)
      "float64[] jointStates
float32 acc
float32 vel

---
")



(provide :robotics_cyton/cyton_move_all_joints "9e70ab60f9bda1c235d95bce9fc54eb5")


