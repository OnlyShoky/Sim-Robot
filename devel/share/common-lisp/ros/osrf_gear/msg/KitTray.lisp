; Auto-generated. Do not edit!


(cl:in-package osrf_gear-msg)


;//! \htmlinclude KitTray.msg.html

(cl:defclass <KitTray> (roslisp-msg-protocol:ros-message)
  ((tray
    :reader tray
    :initarg :tray
    :type cl:string
    :initform "")
   (kit
    :reader kit
    :initarg :kit
    :type osrf_gear-msg:Kit
    :initform (cl:make-instance 'osrf_gear-msg:Kit)))
)

(cl:defclass KitTray (<KitTray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KitTray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KitTray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name osrf_gear-msg:<KitTray> is deprecated: use osrf_gear-msg:KitTray instead.")))

(cl:ensure-generic-function 'tray-val :lambda-list '(m))
(cl:defmethod tray-val ((m <KitTray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osrf_gear-msg:tray-val is deprecated.  Use osrf_gear-msg:tray instead.")
  (tray m))

(cl:ensure-generic-function 'kit-val :lambda-list '(m))
(cl:defmethod kit-val ((m <KitTray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osrf_gear-msg:kit-val is deprecated.  Use osrf_gear-msg:kit instead.")
  (kit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KitTray>) ostream)
  "Serializes a message object of type '<KitTray>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tray))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tray))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'kit) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KitTray>) istream)
  "Deserializes a message object of type '<KitTray>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tray) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tray) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'kit) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KitTray>)))
  "Returns string type for a message object of type '<KitTray>"
  "osrf_gear/KitTray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KitTray)))
  "Returns string type for a message object of type 'KitTray"
  "osrf_gear/KitTray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KitTray>)))
  "Returns md5sum for a message object of type '<KitTray>"
  "5ef21954ac24ef4de6988a89e02e42ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KitTray)))
  "Returns md5sum for a message object of type 'KitTray"
  "5ef21954ac24ef4de6988a89e02e42ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KitTray>)))
  "Returns full string definition for message of type '<KitTray>"
  (cl:format cl:nil "# KitTray message~%# This structure contains the information of a kit tray.~%~%# The ID of the tray~%string tray~%~%# The kit on the tray~%Kit kit~%~%================================================================================~%MSG: osrf_gear/Kit~%# Kit message~%# This structure contains the information of kit.~%~%# The type of kit~%string kit_type~%~%# Collection of objects~%KitObject[] objects~%~%================================================================================~%MSG: osrf_gear/KitObject~%# KitObject message~%# This structure contains the information of an object contained in a kit.~%~%# Object type~%string type~%~%# Target pose~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KitTray)))
  "Returns full string definition for message of type 'KitTray"
  (cl:format cl:nil "# KitTray message~%# This structure contains the information of a kit tray.~%~%# The ID of the tray~%string tray~%~%# The kit on the tray~%Kit kit~%~%================================================================================~%MSG: osrf_gear/Kit~%# Kit message~%# This structure contains the information of kit.~%~%# The type of kit~%string kit_type~%~%# Collection of objects~%KitObject[] objects~%~%================================================================================~%MSG: osrf_gear/KitObject~%# KitObject message~%# This structure contains the information of an object contained in a kit.~%~%# Object type~%string type~%~%# Target pose~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KitTray>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tray))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'kit))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KitTray>))
  "Converts a ROS message object to a list"
  (cl:list 'KitTray
    (cl:cons ':tray (tray msg))
    (cl:cons ':kit (kit msg))
))
