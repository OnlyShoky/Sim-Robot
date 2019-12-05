; Auto-generated. Do not edit!


(cl:in-package osrf_gear-msg)


;//! \htmlinclude Kit.msg.html

(cl:defclass <Kit> (roslisp-msg-protocol:ros-message)
  ((kit_type
    :reader kit_type
    :initarg :kit_type
    :type cl:string
    :initform "")
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector osrf_gear-msg:KitObject)
   :initform (cl:make-array 0 :element-type 'osrf_gear-msg:KitObject :initial-element (cl:make-instance 'osrf_gear-msg:KitObject))))
)

(cl:defclass Kit (<Kit>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Kit>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Kit)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name osrf_gear-msg:<Kit> is deprecated: use osrf_gear-msg:Kit instead.")))

(cl:ensure-generic-function 'kit_type-val :lambda-list '(m))
(cl:defmethod kit_type-val ((m <Kit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osrf_gear-msg:kit_type-val is deprecated.  Use osrf_gear-msg:kit_type instead.")
  (kit_type m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <Kit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osrf_gear-msg:objects-val is deprecated.  Use osrf_gear-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Kit>) ostream)
  "Serializes a message object of type '<Kit>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'kit_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'kit_type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Kit>) istream)
  "Deserializes a message object of type '<Kit>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kit_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'kit_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'osrf_gear-msg:KitObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Kit>)))
  "Returns string type for a message object of type '<Kit>"
  "osrf_gear/Kit")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Kit)))
  "Returns string type for a message object of type 'Kit"
  "osrf_gear/Kit")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Kit>)))
  "Returns md5sum for a message object of type '<Kit>"
  "54031a8e0ed56804a773bb7df501e16f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Kit)))
  "Returns md5sum for a message object of type 'Kit"
  "54031a8e0ed56804a773bb7df501e16f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Kit>)))
  "Returns full string definition for message of type '<Kit>"
  (cl:format cl:nil "# Kit message~%# This structure contains the information of kit.~%~%# The type of kit~%string kit_type~%~%# Collection of objects~%KitObject[] objects~%~%================================================================================~%MSG: osrf_gear/KitObject~%# KitObject message~%# This structure contains the information of an object contained in a kit.~%~%# Object type~%string type~%~%# Target pose~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Kit)))
  "Returns full string definition for message of type 'Kit"
  (cl:format cl:nil "# Kit message~%# This structure contains the information of kit.~%~%# The type of kit~%string kit_type~%~%# Collection of objects~%KitObject[] objects~%~%================================================================================~%MSG: osrf_gear/KitObject~%# KitObject message~%# This structure contains the information of an object contained in a kit.~%~%# Object type~%string type~%~%# Target pose~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Kit>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'kit_type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Kit>))
  "Converts a ROS message object to a list"
  (cl:list 'Kit
    (cl:cons ':kit_type (kit_type msg))
    (cl:cons ':objects (objects msg))
))
