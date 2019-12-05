;; Auto-generated. Do not edit!


(when (boundp 'osrf_gear::GetMaterialLocations)
  (if (not (find-package "OSRF_GEAR"))
    (make-package "OSRF_GEAR"))
  (shadow 'GetMaterialLocations (find-package "OSRF_GEAR")))
(unless (find-package "OSRF_GEAR::GETMATERIALLOCATIONS")
  (make-package "OSRF_GEAR::GETMATERIALLOCATIONS"))
(unless (find-package "OSRF_GEAR::GETMATERIALLOCATIONSREQUEST")
  (make-package "OSRF_GEAR::GETMATERIALLOCATIONSREQUEST"))
(unless (find-package "OSRF_GEAR::GETMATERIALLOCATIONSRESPONSE")
  (make-package "OSRF_GEAR::GETMATERIALLOCATIONSRESPONSE"))

(in-package "ROS")





(defclass osrf_gear::GetMaterialLocationsRequest
  :super ros::object
  :slots (_material_type ))

(defmethod osrf_gear::GetMaterialLocationsRequest
  (:init
   (&key
    ((:material_type __material_type) "")
    )
   (send-super :init)
   (setq _material_type (string __material_type))
   self)
  (:material_type
   (&optional __material_type)
   (if __material_type (setq _material_type __material_type)) _material_type)
  (:serialization-length
   ()
   (+
    ;; string _material_type
    4 (length _material_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _material_type
       (write-long (length _material_type) s) (princ _material_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _material_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _material_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass osrf_gear::GetMaterialLocationsResponse
  :super ros::object
  :slots (_storage_units ))

(defmethod osrf_gear::GetMaterialLocationsResponse
  (:init
   (&key
    ((:storage_units __storage_units) (let (r) (dotimes (i 0) (push (instance osrf_gear::StorageUnit :init) r)) r))
    )
   (send-super :init)
   (setq _storage_units __storage_units)
   self)
  (:storage_units
   (&rest __storage_units)
   (if (keywordp (car __storage_units))
       (send* _storage_units __storage_units)
     (progn
       (if __storage_units (setq _storage_units (car __storage_units)))
       _storage_units)))
  (:serialization-length
   ()
   (+
    ;; osrf_gear/StorageUnit[] _storage_units
    (apply #'+ (send-all _storage_units :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; osrf_gear/StorageUnit[] _storage_units
     (write-long (length _storage_units) s)
     (dolist (elem _storage_units)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; osrf_gear/StorageUnit[] _storage_units
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _storage_units (let (r) (dotimes (i n) (push (instance osrf_gear::StorageUnit :init) r)) r))
     (dolist (elem- _storage_units)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass osrf_gear::GetMaterialLocations
  :super ros::object
  :slots ())

(setf (get osrf_gear::GetMaterialLocations :md5sum-) "cbf263a50360138b80b1bdd46f5ff56f")
(setf (get osrf_gear::GetMaterialLocations :datatype-) "osrf_gear/GetMaterialLocations")
(setf (get osrf_gear::GetMaterialLocations :request) osrf_gear::GetMaterialLocationsRequest)
(setf (get osrf_gear::GetMaterialLocations :response) osrf_gear::GetMaterialLocationsResponse)

(defmethod osrf_gear::GetMaterialLocationsRequest
  (:response () (instance osrf_gear::GetMaterialLocationsResponse :init)))

(setf (get osrf_gear::GetMaterialLocationsRequest :md5sum-) "cbf263a50360138b80b1bdd46f5ff56f")
(setf (get osrf_gear::GetMaterialLocationsRequest :datatype-) "osrf_gear/GetMaterialLocationsRequest")
(setf (get osrf_gear::GetMaterialLocationsRequest :definition-)
      "

string material_type

---
StorageUnit[] storage_units


================================================================================
MSG: osrf_gear/StorageUnit
# StorageUnit message
# This structure contains the high-level information of an abstract storage unit.

# Storage unit ID
string unit_id
")

(setf (get osrf_gear::GetMaterialLocationsResponse :md5sum-) "cbf263a50360138b80b1bdd46f5ff56f")
(setf (get osrf_gear::GetMaterialLocationsResponse :datatype-) "osrf_gear/GetMaterialLocationsResponse")
(setf (get osrf_gear::GetMaterialLocationsResponse :definition-)
      "

string material_type

---
StorageUnit[] storage_units


================================================================================
MSG: osrf_gear/StorageUnit
# StorageUnit message
# This structure contains the high-level information of an abstract storage unit.

# Storage unit ID
string unit_id
")



(provide :osrf_gear/GetMaterialLocations "cbf263a50360138b80b1bdd46f5ff56f")


