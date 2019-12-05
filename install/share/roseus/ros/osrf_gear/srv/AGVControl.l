;; Auto-generated. Do not edit!


(when (boundp 'osrf_gear::AGVControl)
  (if (not (find-package "OSRF_GEAR"))
    (make-package "OSRF_GEAR"))
  (shadow 'AGVControl (find-package "OSRF_GEAR")))
(unless (find-package "OSRF_GEAR::AGVCONTROL")
  (make-package "OSRF_GEAR::AGVCONTROL"))
(unless (find-package "OSRF_GEAR::AGVCONTROLREQUEST")
  (make-package "OSRF_GEAR::AGVCONTROLREQUEST"))
(unless (find-package "OSRF_GEAR::AGVCONTROLRESPONSE")
  (make-package "OSRF_GEAR::AGVCONTROLRESPONSE"))

(in-package "ROS")





(defclass osrf_gear::AGVControlRequest
  :super ros::object
  :slots (_kit_type ))

(defmethod osrf_gear::AGVControlRequest
  (:init
   (&key
    ((:kit_type __kit_type) "")
    )
   (send-super :init)
   (setq _kit_type (string __kit_type))
   self)
  (:kit_type
   (&optional __kit_type)
   (if __kit_type (setq _kit_type __kit_type)) _kit_type)
  (:serialization-length
   ()
   (+
    ;; string _kit_type
    4 (length _kit_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _kit_type
       (write-long (length _kit_type) s) (princ _kit_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _kit_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _kit_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass osrf_gear::AGVControlResponse
  :super ros::object
  :slots (_success ))

(defmethod osrf_gear::AGVControlResponse
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

(defclass osrf_gear::AGVControl
  :super ros::object
  :slots ())

(setf (get osrf_gear::AGVControl :md5sum-) "deaeee526929d0b28e9533c57234f4ca")
(setf (get osrf_gear::AGVControl :datatype-) "osrf_gear/AGVControl")
(setf (get osrf_gear::AGVControl :request) osrf_gear::AGVControlRequest)
(setf (get osrf_gear::AGVControl :response) osrf_gear::AGVControlResponse)

(defmethod osrf_gear::AGVControlRequest
  (:response () (instance osrf_gear::AGVControlResponse :init)))

(setf (get osrf_gear::AGVControlRequest :md5sum-) "deaeee526929d0b28e9533c57234f4ca")
(setf (get osrf_gear::AGVControlRequest :datatype-) "osrf_gear/AGVControlRequest")
(setf (get osrf_gear::AGVControlRequest :definition-)
      "

string kit_type

---
bool success

")

(setf (get osrf_gear::AGVControlResponse :md5sum-) "deaeee526929d0b28e9533c57234f4ca")
(setf (get osrf_gear::AGVControlResponse :datatype-) "osrf_gear/AGVControlResponse")
(setf (get osrf_gear::AGVControlResponse :definition-)
      "

string kit_type

---
bool success

")



(provide :osrf_gear/AGVControl "deaeee526929d0b28e9533c57234f4ca")


