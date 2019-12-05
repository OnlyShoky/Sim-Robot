; Auto-generated. Do not edit!


(cl:in-package osrf_gear-msg)


;//! \htmlinclude KitObject.msg.html

(cl:defclass <KitObject> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass KitObject (<KitObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KitObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KitObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name osrf_gear-msg:<KitObject> is deprecated: use osrf_gear-msg:KitObject instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <KitObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osrf_gear-msg:type-val is deprecated.  Use osrf_gear-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <KitObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osrf_gear-msg:pose-val is deprecated.  Use osrf_gear-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KitObject>) ostream)
  "Serializes a message object of type '<KitObject>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KitObject>) istream)
  "Deserializes a message object of type '<KitObject>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KitObject>)))
  "Returns string type for a message object of type '<KitObject>"
  "osrf_gear/KitObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KitObject)))
  "Returns string type for a message object of type 'KitObject"
  "osrf_gear/KitObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KitObject>)))
  "Returns md5sum for a message object of type '<KitObject>"
  "a85d66a9bab1444dfa98ed432ed88734")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KitObject)))
  "Returns md5sum for a message object of type 'KitObject"
  "a85d66a9bab1444dfa98ed432ed88734")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KitObject>)))
  "Returns full string definition for message of type '<KitObject>"
  (cl:format cl:nil "# KitObject message~%# This structure contains the information of an object contained in a kit.~%~%# Object type~%string type~%~%# Target pose~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KitObject)))
  "Returns full string definition for message of type 'KitObject"
  (cl:format cl:nil "# KitObject message~%# This structure contains the information of an object contained in a kit.~%~%# Object type~%string type~%~%# Target pose~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KitObject>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KitObject>))
  "Converts a ROS message object to a list"
  (cl:list 'KitObject
    (cl:cons ':type (type msg))
    (cl:cons ':pose (pose msg))
))
