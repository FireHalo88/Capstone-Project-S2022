;; Auto-generated. Do not edit!


(when (boundp 'robotics_cyton::cyton_move_single_joint)
  (if (not (find-package "ROBOTICS_CYTON"))
    (make-package "ROBOTICS_CYTON"))
  (shadow 'cyton_move_single_joint (find-package "ROBOTICS_CYTON")))
(unless (find-package "ROBOTICS_CYTON::CYTON_MOVE_SINGLE_JOINT")
  (make-package "ROBOTICS_CYTON::CYTON_MOVE_SINGLE_JOINT"))
(unless (find-package "ROBOTICS_CYTON::CYTON_MOVE_SINGLE_JOINTREQUEST")
  (make-package "ROBOTICS_CYTON::CYTON_MOVE_SINGLE_JOINTREQUEST"))
(unless (find-package "ROBOTICS_CYTON::CYTON_MOVE_SINGLE_JOINTRESPONSE")
  (make-package "ROBOTICS_CYTON::CYTON_MOVE_SINGLE_JOINTRESPONSE"))

(in-package "ROS")





(defclass robotics_cyton::cyton_move_single_jointRequest
  :super ros::object
  :slots (_joint_number _position _vel _acc ))

(defmethod robotics_cyton::cyton_move_single_jointRequest
  (:init
   (&key
    ((:joint_number __joint_number) 0)
    ((:position __position) 0.0)
    ((:vel __vel) 0.0)
    ((:acc __acc) 0.0)
    )
   (send-super :init)
   (setq _joint_number (round __joint_number))
   (setq _position (float __position))
   (setq _vel (float __vel))
   (setq _acc (float __acc))
   self)
  (:joint_number
   (&optional __joint_number)
   (if __joint_number (setq _joint_number __joint_number)) _joint_number)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:serialization-length
   ()
   (+
    ;; int32 _joint_number
    4
    ;; float64 _position
    8
    ;; float64 _vel
    8
    ;; float64 _acc
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _joint_number
       (write-long _joint_number s)
     ;; float64 _position
       (sys::poke _position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc
       (sys::poke _acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _joint_number
     (setq _joint_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _position
     (setq _position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel
     (setq _vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc
     (setq _acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass robotics_cyton::cyton_move_single_jointResponse
  :super ros::object
  :slots (_outcome ))

(defmethod robotics_cyton::cyton_move_single_jointResponse
  (:init
   (&key
    ((:outcome __outcome) nil)
    )
   (send-super :init)
   (setq _outcome __outcome)
   self)
  (:outcome
   (&optional (__outcome :null))
   (if (not (eq __outcome :null)) (setq _outcome __outcome)) _outcome)
  (:serialization-length
   ()
   (+
    ;; bool _outcome
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _outcome
       (if _outcome (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _outcome
     (setq _outcome (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robotics_cyton::cyton_move_single_joint
  :super ros::object
  :slots ())

(setf (get robotics_cyton::cyton_move_single_joint :md5sum-) "72d8e1515109568f522880436505bc21")
(setf (get robotics_cyton::cyton_move_single_joint :datatype-) "robotics_cyton/cyton_move_single_joint")
(setf (get robotics_cyton::cyton_move_single_joint :request) robotics_cyton::cyton_move_single_jointRequest)
(setf (get robotics_cyton::cyton_move_single_joint :response) robotics_cyton::cyton_move_single_jointResponse)

(defmethod robotics_cyton::cyton_move_single_jointRequest
  (:response () (instance robotics_cyton::cyton_move_single_jointResponse :init)))

(setf (get robotics_cyton::cyton_move_single_jointRequest :md5sum-) "72d8e1515109568f522880436505bc21")
(setf (get robotics_cyton::cyton_move_single_jointRequest :datatype-) "robotics_cyton/cyton_move_single_jointRequest")
(setf (get robotics_cyton::cyton_move_single_jointRequest :definition-)
      "#request
int32 joint_number
float64 position
float64 vel
float64 acc
---
#response
bool outcome

")

(setf (get robotics_cyton::cyton_move_single_jointResponse :md5sum-) "72d8e1515109568f522880436505bc21")
(setf (get robotics_cyton::cyton_move_single_jointResponse :datatype-) "robotics_cyton/cyton_move_single_jointResponse")
(setf (get robotics_cyton::cyton_move_single_jointResponse :definition-)
      "#request
int32 joint_number
float64 position
float64 vel
float64 acc
---
#response
bool outcome

")



(provide :robotics_cyton/cyton_move_single_joint "72d8e1515109568f522880436505bc21")


