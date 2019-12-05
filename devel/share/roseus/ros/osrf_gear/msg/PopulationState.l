;; Auto-generated. Do not edit!


(when (boundp 'osrf_gear::PopulationState)
  (if (not (find-package "OSRF_GEAR"))
    (make-package "OSRF_GEAR"))
  (shadow 'PopulationState (find-package "OSRF_GEAR")))
(unless (find-package "OSRF_GEAR::POPULATIONSTATE")
  (make-package "OSRF_GEAR::POPULATIONSTATE"))

(in-package "ROS")
;;//! \htmlinclude PopulationState.msg.html


(defclass osrf_gear::PopulationState
  :super ros::object
  :slots (_enabled ))

(defmethod osrf_gear::PopulationState
  (:init
   (&key
    ((:enabled __enabled) nil)
    )
   (send-super :init)
   (setq _enabled __enabled)
   self)
  (:enabled
   (&optional __enabled)
   (if __enabled (setq _enabled __enabled)) _enabled)
  (:serialization-length
   ()
   (+
    ;; bool _enabled
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enabled
       (if _enabled (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enabled
     (setq _enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get osrf_gear::PopulationState :md5sum-) "2815464f55ab63684cc1bc38072d0b9b")
(setf (get osrf_gear::PopulationState :datatype-) "osrf_gear/PopulationState")
(setf (get osrf_gear::PopulationState :definition-)
      "# Population state message
# This structure contains the state of the object population.

# What is the current state of the plugin (\"running\", \"paused\")?
bool enabled

")



(provide :osrf_gear/PopulationState "2815464f55ab63684cc1bc38072d0b9b")


