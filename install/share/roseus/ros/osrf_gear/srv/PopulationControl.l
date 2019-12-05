;; Auto-generated. Do not edit!


(when (boundp 'osrf_gear::PopulationControl)
  (if (not (find-package "OSRF_GEAR"))
    (make-package "OSRF_GEAR"))
  (shadow 'PopulationControl (find-package "OSRF_GEAR")))
(unless (find-package "OSRF_GEAR::POPULATIONCONTROL")
  (make-package "OSRF_GEAR::POPULATIONCONTROL"))
(unless (find-package "OSRF_GEAR::POPULATIONCONTROLREQUEST")
  (make-package "OSRF_GEAR::POPULATIONCONTROLREQUEST"))
(unless (find-package "OSRF_GEAR::POPULATIONCONTROLRESPONSE")
  (make-package "OSRF_GEAR::POPULATIONCONTROLRESPONSE"))

(in-package "ROS")





(defclass osrf_gear::PopulationControlRequest
  :super ros::object
  :slots (_action ))

(defmethod osrf_gear::PopulationControlRequest
  (:init
   (&key
    ((:action __action) "")
    )
   (send-super :init)
   (setq _action (string __action))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; string _action
    4 (length _action)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass osrf_gear::PopulationControlResponse
  :super ros::object
  :slots (_success ))

(defmethod osrf_gear::PopulationControlResponse
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

(defclass osrf_gear::PopulationControl
  :super ros::object
  :slots ())

(setf (get osrf_gear::PopulationControl :md5sum-) "02058b7d55716526fae62eb68abd6f31")
(setf (get osrf_gear::PopulationControl :datatype-) "osrf_gear/PopulationControl")
(setf (get osrf_gear::PopulationControl :request) osrf_gear::PopulationControlRequest)
(setf (get osrf_gear::PopulationControl :response) osrf_gear::PopulationControlResponse)

(defmethod osrf_gear::PopulationControlRequest
  (:response () (instance osrf_gear::PopulationControlResponse :init)))

(setf (get osrf_gear::PopulationControlRequest :md5sum-) "02058b7d55716526fae62eb68abd6f31")
(setf (get osrf_gear::PopulationControlRequest :datatype-) "osrf_gear/PopulationControlRequest")
(setf (get osrf_gear::PopulationControlRequest :definition-)
      "


string action

---
bool success
")

(setf (get osrf_gear::PopulationControlResponse :md5sum-) "02058b7d55716526fae62eb68abd6f31")
(setf (get osrf_gear::PopulationControlResponse :datatype-) "osrf_gear/PopulationControlResponse")
(setf (get osrf_gear::PopulationControlResponse :definition-)
      "


string action

---
bool success
")



(provide :osrf_gear/PopulationControl "02058b7d55716526fae62eb68abd6f31")


