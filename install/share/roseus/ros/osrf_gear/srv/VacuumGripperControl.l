;; Auto-generated. Do not edit!


(when (boundp 'osrf_gear::VacuumGripperControl)
  (if (not (find-package "OSRF_GEAR"))
    (make-package "OSRF_GEAR"))
  (shadow 'VacuumGripperControl (find-package "OSRF_GEAR")))
(unless (find-package "OSRF_GEAR::VACUUMGRIPPERCONTROL")
  (make-package "OSRF_GEAR::VACUUMGRIPPERCONTROL"))
(unless (find-package "OSRF_GEAR::VACUUMGRIPPERCONTROLREQUEST")
  (make-package "OSRF_GEAR::VACUUMGRIPPERCONTROLREQUEST"))
(unless (find-package "OSRF_GEAR::VACUUMGRIPPERCONTROLRESPONSE")
  (make-package "OSRF_GEAR::VACUUMGRIPPERCONTROLRESPONSE"))

(in-package "ROS")





(defclass osrf_gear::VacuumGripperControlRequest
  :super ros::object
  :slots (_enable ))

(defmethod osrf_gear::VacuumGripperControlRequest
  (:init
   (&key
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _enable __enable)
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass osrf_gear::VacuumGripperControlResponse
  :super ros::object
  :slots (_success ))

(defmethod osrf_gear::VacuumGripperControlResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
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

(defclass osrf_gear::VacuumGripperControl
  :super ros::object
  :slots ())

(setf (get osrf_gear::VacuumGripperControl :md5sum-) "6a0b406242562fc416b2c9c8a3efb051")
(setf (get osrf_gear::VacuumGripperControl :datatype-) "osrf_gear/VacuumGripperControl")
(setf (get osrf_gear::VacuumGripperControl :request) osrf_gear::VacuumGripperControlRequest)
(setf (get osrf_gear::VacuumGripperControl :response) osrf_gear::VacuumGripperControlResponse)

(defmethod osrf_gear::VacuumGripperControlRequest
  (:response () (instance osrf_gear::VacuumGripperControlResponse :init)))

(setf (get osrf_gear::VacuumGripperControlRequest :md5sum-) "6a0b406242562fc416b2c9c8a3efb051")
(setf (get osrf_gear::VacuumGripperControlRequest :datatype-) "osrf_gear/VacuumGripperControlRequest")
(setf (get osrf_gear::VacuumGripperControlRequest :definition-)
      "


bool enable

---
bool success

")

(setf (get osrf_gear::VacuumGripperControlResponse :md5sum-) "6a0b406242562fc416b2c9c8a3efb051")
(setf (get osrf_gear::VacuumGripperControlResponse :datatype-) "osrf_gear/VacuumGripperControlResponse")
(setf (get osrf_gear::VacuumGripperControlResponse :definition-)
      "


bool enable

---
bool success

")



(provide :osrf_gear/VacuumGripperControl "6a0b406242562fc416b2c9c8a3efb051")


