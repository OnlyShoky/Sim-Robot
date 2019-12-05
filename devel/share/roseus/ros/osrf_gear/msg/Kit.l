;; Auto-generated. Do not edit!


(when (boundp 'osrf_gear::Kit)
  (if (not (find-package "OSRF_GEAR"))
    (make-package "OSRF_GEAR"))
  (shadow 'Kit (find-package "OSRF_GEAR")))
(unless (find-package "OSRF_GEAR::KIT")
  (make-package "OSRF_GEAR::KIT"))

(in-package "ROS")
;;//! \htmlinclude Kit.msg.html


(defclass osrf_gear::Kit
  :super ros::object
  :slots (_kit_type _objects ))

(defmethod osrf_gear::Kit
  (:init
   (&key
    ((:kit_type __kit_type) "")
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance osrf_gear::KitObject :init) r)) r))
    )
   (send-super :init)
   (setq _kit_type (string __kit_type))
   (setq _objects __objects)
   self)
  (:kit_type
   (&optional __kit_type)
   (if __kit_type (setq _kit_type __kit_type)) _kit_type)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; string _kit_type
    4 (length _kit_type)
    ;; osrf_gear/KitObject[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _kit_type
       (write-long (length _kit_type) s) (princ _kit_type s)
     ;; osrf_gear/KitObject[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _kit_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _kit_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; osrf_gear/KitObject[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance osrf_gear::KitObject :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get osrf_gear::Kit :md5sum-) "54031a8e0ed56804a773bb7df501e16f")
(setf (get osrf_gear::Kit :datatype-) "osrf_gear/Kit")
(setf (get osrf_gear::Kit :definition-)
      "# Kit message
# This structure contains the information of kit.

# The type of kit
string kit_type

# Collection of objects
KitObject[] objects

================================================================================
MSG: osrf_gear/KitObject
# KitObject message
# This structure contains the information of an object contained in a kit.

# Object type
string type

# Target pose
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :osrf_gear/Kit "54031a8e0ed56804a773bb7df501e16f")


