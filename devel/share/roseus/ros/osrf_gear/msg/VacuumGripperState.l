;; Auto-generated. Do not edit!


(when (boundp 'osrf_gear::VacuumGripperState)
  (if (not (find-package "OSRF_GEAR"))
    (make-package "OSRF_GEAR"))
  (shadow 'VacuumGripperState (find-package "OSRF_GEAR")))
(unless (find-package "OSRF_GEAR::VACUUMGRIPPERSTATE")
  (make-package "OSRF_GEAR::VACUUMGRIPPERSTATE"))

(in-package "ROS")
;;//! \htmlinclude VacuumGripperState.msg.html


(defclass osrf_gear::VacuumGripperState
  :super ros::object
  :slots (_enabled _attached ))

(defmethod osrf_gear::VacuumGripperState
  (:init
   (&key
    ((:enabled __enabled) nil)
    ((:attached __attached) nil)
    )
   (send-super :init)
   (setq _enabled __enabled)
   (setq _attached __attached)
   self)
  (:enabled
   (&optional __enabled)
   (if __enabled (setq _enabled __enabled)) _enabled)
  (:attached
   (&optional __attached)
   (if __attached (setq _attached __attached)) _attached)
  (:serialization-length
   ()
   (+
    ;; bool _enabled
    1
    ;; bool _attached
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enabled
       (if _enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _attached
       (if _attached (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enabled
     (setq _enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _attached
     (setq _attached (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get osrf_gear::VacuumGripperState :md5sum-) "60714eed20fb6d744d2c10a1fb15dc69")
(setf (get osrf_gear::VacuumGripperState :datatype-) "osrf_gear/VacuumGripperState")
(setf (get osrf_gear::VacuumGripperState :definition-)
      "# Vacum gripper state message
# This structure contains the state of the gripper.

# Is the suction enabled?
bool enabled

# Is an object attached to the gripper?
bool attached

")



(provide :osrf_gear/VacuumGripperState "60714eed20fb6d744d2c10a1fb15dc69")


