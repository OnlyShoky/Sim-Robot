;; Auto-generated. Do not edit!


(when (boundp 'osrf_gear::KitTray)
  (if (not (find-package "OSRF_GEAR"))
    (make-package "OSRF_GEAR"))
  (shadow 'KitTray (find-package "OSRF_GEAR")))
(unless (find-package "OSRF_GEAR::KITTRAY")
  (make-package "OSRF_GEAR::KITTRAY"))

(in-package "ROS")
;;//! \htmlinclude KitTray.msg.html


(defclass osrf_gear::KitTray
  :super ros::object
  :slots (_tray _kit ))

(defmethod osrf_gear::KitTray
  (:init
   (&key
    ((:tray __tray) "")
    ((:kit __kit) (instance osrf_gear::Kit :init))
    )
   (send-super :init)
   (setq _tray (string __tray))
   (setq _kit __kit)
   self)
  (:tray
   (&optional __tray)
   (if __tray (setq _tray __tray)) _tray)
  (:kit
   (&rest __kit)
   (if (keywordp (car __kit))
       (send* _kit __kit)
     (progn
       (if __kit (setq _kit (car __kit)))
       _kit)))
  (:serialization-length
   ()
   (+
    ;; string _tray
    4 (length _tray)
    ;; osrf_gear/Kit _kit
    (send _kit :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tray
       (write-long (length _tray) s) (princ _tray s)
     ;; osrf_gear/Kit _kit
       (send _kit :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tray
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tray (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; osrf_gear/Kit _kit
     (send _kit :deserialize buf ptr-) (incf ptr- (send _kit :serialization-length))
   ;;
   self)
  )

(setf (get osrf_gear::KitTray :md5sum-) "5ef21954ac24ef4de6988a89e02e42ba")
(setf (get osrf_gear::KitTray :datatype-) "osrf_gear/KitTray")
(setf (get osrf_gear::KitTray :definition-)
      "# KitTray message
# This structure contains the information of a kit tray.

# The ID of the tray
string tray

# The kit on the tray
Kit kit

================================================================================
MSG: osrf_gear/Kit
# Kit message
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



(provide :osrf_gear/KitTray "5ef21954ac24ef4de6988a89e02e42ba")


