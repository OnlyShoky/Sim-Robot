;; Auto-generated. Do not edit!


(when (boundp 'osrf_gear::Order)
  (if (not (find-package "OSRF_GEAR"))
    (make-package "OSRF_GEAR"))
  (shadow 'Order (find-package "OSRF_GEAR")))
(unless (find-package "OSRF_GEAR::ORDER")
  (make-package "OSRF_GEAR::ORDER"))

(in-package "ROS")
;;//! \htmlinclude Order.msg.html


(defclass osrf_gear::Order
  :super ros::object
  :slots (_order_id _kits ))

(defmethod osrf_gear::Order
  (:init
   (&key
    ((:order_id __order_id) "")
    ((:kits __kits) (let (r) (dotimes (i 0) (push (instance osrf_gear::Kit :init) r)) r))
    )
   (send-super :init)
   (setq _order_id (string __order_id))
   (setq _kits __kits)
   self)
  (:order_id
   (&optional __order_id)
   (if __order_id (setq _order_id __order_id)) _order_id)
  (:kits
   (&rest __kits)
   (if (keywordp (car __kits))
       (send* _kits __kits)
     (progn
       (if __kits (setq _kits (car __kits)))
       _kits)))
  (:serialization-length
   ()
   (+
    ;; string _order_id
    4 (length _order_id)
    ;; osrf_gear/Kit[] _kits
    (apply #'+ (send-all _kits :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _order_id
       (write-long (length _order_id) s) (princ _order_id s)
     ;; osrf_gear/Kit[] _kits
     (write-long (length _kits) s)
     (dolist (elem _kits)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _order_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _order_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; osrf_gear/Kit[] _kits
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _kits (let (r) (dotimes (i n) (push (instance osrf_gear::Kit :init) r)) r))
     (dolist (elem- _kits)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get osrf_gear::Order :md5sum-) "7fadfe9b7f871f7a5285e3dfb4eb98ef")
(setf (get osrf_gear::Order :datatype-) "osrf_gear/Order")
(setf (get osrf_gear::Order :definition-)
      "# Order message
# This structure contains the information of an order.

# ID of the order
string order_id

# Collection of kits
Kit[] kits

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



(provide :osrf_gear/Order "7fadfe9b7f871f7a5285e3dfb4eb98ef")


