;; Auto-generated. Do not edit!


(when (boundp 'osrf_gear::TrayContents)
  (if (not (find-package "OSRF_GEAR"))
    (make-package "OSRF_GEAR"))
  (shadow 'TrayContents (find-package "OSRF_GEAR")))
(unless (find-package "OSRF_GEAR::TRAYCONTENTS")
  (make-package "OSRF_GEAR::TRAYCONTENTS"))

(in-package "ROS")
;;//! \htmlinclude TrayContents.msg.html


(defclass osrf_gear::TrayContents
  :super ros::object
  :slots (_tray _objects ))

(defmethod osrf_gear::TrayContents
  (:init
   (&key
    ((:tray __tray) "")
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance osrf_gear::DetectedObject :init) r)) r))
    )
   (send-super :init)
   (setq _tray (string __tray))
   (setq _objects __objects)
   self)
  (:tray
   (&optional __tray)
   (if __tray (setq _tray __tray)) _tray)
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
    ;; string _tray
    4 (length _tray)
    ;; osrf_gear/DetectedObject[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tray
       (write-long (length _tray) s) (princ _tray s)
     ;; osrf_gear/DetectedObject[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tray
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tray (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; osrf_gear/DetectedObject[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance osrf_gear::DetectedObject :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get osrf_gear::TrayContents :md5sum-) "8b61a478a5b617eeaaa8cf0fa99e60cc")
(setf (get osrf_gear::TrayContents :datatype-) "osrf_gear/TrayContents")
(setf (get osrf_gear::TrayContents :definition-)
      "# Tray contents message
# This structure contains the information of the current contents of a tray.

# The ID of the tray
string tray

# Collection of objects
DetectedObject[] objects

================================================================================
MSG: osrf_gear/DetectedObject
# DetectedObject message
# This structure contains the information of a detected object.

# Object type
string type

# Whether or not the object is faulty
bool is_faulty

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



(provide :osrf_gear/TrayContents "8b61a478a5b617eeaaa8cf0fa99e60cc")


