;; Auto-generated. Do not edit!


(when (boundp 'osrf_gear::SubmitTray)
  (if (not (find-package "OSRF_GEAR"))
    (make-package "OSRF_GEAR"))
  (shadow 'SubmitTray (find-package "OSRF_GEAR")))
(unless (find-package "OSRF_GEAR::SUBMITTRAY")
  (make-package "OSRF_GEAR::SUBMITTRAY"))
(unless (find-package "OSRF_GEAR::SUBMITTRAYREQUEST")
  (make-package "OSRF_GEAR::SUBMITTRAYREQUEST"))
(unless (find-package "OSRF_GEAR::SUBMITTRAYRESPONSE")
  (make-package "OSRF_GEAR::SUBMITTRAYRESPONSE"))

(in-package "ROS")





(defclass osrf_gear::SubmitTrayRequest
  :super ros::object
  :slots (_tray_id _kit_type ))

(defmethod osrf_gear::SubmitTrayRequest
  (:init
   (&key
    ((:tray_id __tray_id) "")
    ((:kit_type __kit_type) "")
    )
   (send-super :init)
   (setq _tray_id (string __tray_id))
   (setq _kit_type (string __kit_type))
   self)
  (:tray_id
   (&optional __tray_id)
   (if __tray_id (setq _tray_id __tray_id)) _tray_id)
  (:kit_type
   (&optional __kit_type)
   (if __kit_type (setq _kit_type __kit_type)) _kit_type)
  (:serialization-length
   ()
   (+
    ;; string _tray_id
    4 (length _tray_id)
    ;; string _kit_type
    4 (length _kit_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tray_id
       (write-long (length _tray_id) s) (princ _tray_id s)
     ;; string _kit_type
       (write-long (length _kit_type) s) (princ _kit_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tray_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tray_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _kit_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _kit_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass osrf_gear::SubmitTrayResponse
  :super ros::object
  :slots (_success _inspection_result ))

(defmethod osrf_gear::SubmitTrayResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:inspection_result __inspection_result) 0.0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _inspection_result (float __inspection_result))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:inspection_result
   (&optional __inspection_result)
   (if __inspection_result (setq _inspection_result __inspection_result)) _inspection_result)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; float32 _inspection_result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; float32 _inspection_result
       (sys::poke _inspection_result (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _inspection_result
     (setq _inspection_result (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass osrf_gear::SubmitTray
  :super ros::object
  :slots ())

(setf (get osrf_gear::SubmitTray :md5sum-) "02ca9d3d33cd5aa38b11d30b6d8538ae")
(setf (get osrf_gear::SubmitTray :datatype-) "osrf_gear/SubmitTray")
(setf (get osrf_gear::SubmitTray :request) osrf_gear::SubmitTrayRequest)
(setf (get osrf_gear::SubmitTray :response) osrf_gear::SubmitTrayResponse)

(defmethod osrf_gear::SubmitTrayRequest
  (:response () (instance osrf_gear::SubmitTrayResponse :init)))

(setf (get osrf_gear::SubmitTrayRequest :md5sum-) "02ca9d3d33cd5aa38b11d30b6d8538ae")
(setf (get osrf_gear::SubmitTrayRequest :datatype-) "osrf_gear/SubmitTrayRequest")
(setf (get osrf_gear::SubmitTrayRequest :definition-)
      "string tray_id
string kit_type

---
bool success
float32 inspection_result

")

(setf (get osrf_gear::SubmitTrayResponse :md5sum-) "02ca9d3d33cd5aa38b11d30b6d8538ae")
(setf (get osrf_gear::SubmitTrayResponse :datatype-) "osrf_gear/SubmitTrayResponse")
(setf (get osrf_gear::SubmitTrayResponse :definition-)
      "string tray_id
string kit_type

---
bool success
float32 inspection_result

")



(provide :osrf_gear/SubmitTray "02ca9d3d33cd5aa38b11d30b6d8538ae")


