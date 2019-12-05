; Auto-generated. Do not edit!


(cl:in-package osrf_gear-msg)


;//! \htmlinclude Order.msg.html

(cl:defclass <Order> (roslisp-msg-protocol:ros-message)
  ((order_id
    :reader order_id
    :initarg :order_id
    :type cl:string
    :initform "")
   (kits
    :reader kits
    :initarg :kits
    :type (cl:vector osrf_gear-msg:Kit)
   :initform (cl:make-array 0 :element-type 'osrf_gear-msg:Kit :initial-element (cl:make-instance 'osrf_gear-msg:Kit))))
)

(cl:defclass Order (<Order>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Order>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Order)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name osrf_gear-msg:<Order> is deprecated: use osrf_gear-msg:Order instead.")))

(cl:ensure-generic-function 'order_id-val :lambda-list '(m))
(cl:defmethod order_id-val ((m <Order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osrf_gear-msg:order_id-val is deprecated.  Use osrf_gear-msg:order_id instead.")
  (order_id m))

(cl:ensure-generic-function 'kits-val :lambda-list '(m))
(cl:defmethod kits-val ((m <Order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osrf_gear-msg:kits-val is deprecated.  Use osrf_gear-msg:kits instead.")
  (kits m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Order>) ostream)
  "Serializes a message object of type '<Order>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'order_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'order_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'kits))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'kits))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Order>) istream)
  "Deserializes a message object of type '<Order>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'order_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'order_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'kits) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'kits)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'osrf_gear-msg:Kit))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Order>)))
  "Returns string type for a message object of type '<Order>"
  "osrf_gear/Order")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Order)))
  "Returns string type for a message object of type 'Order"
  "osrf_gear/Order")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Order>)))
  "Returns md5sum for a message object of type '<Order>"
  "7fadfe9b7f871f7a5285e3dfb4eb98ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Order)))
  "Returns md5sum for a message object of type 'Order"
  "7fadfe9b7f871f7a5285e3dfb4eb98ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Order>)))
  "Returns full string definition for message of type '<Order>"
  (cl:format cl:nil "# Order message~%# This structure contains the information of an order.~%~%# ID of the order~%string order_id~%~%# Collection of kits~%Kit[] kits~%~%================================================================================~%MSG: osrf_gear/Kit~%# Kit message~%# This structure contains the information of kit.~%~%# The type of kit~%string kit_type~%~%# Collection of objects~%KitObject[] objects~%~%================================================================================~%MSG: osrf_gear/KitObject~%# KitObject message~%# This structure contains the information of an object contained in a kit.~%~%# Object type~%string type~%~%# Target pose~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Order)))
  "Returns full string definition for message of type 'Order"
  (cl:format cl:nil "# Order message~%# This structure contains the information of an order.~%~%# ID of the order~%string order_id~%~%# Collection of kits~%Kit[] kits~%~%================================================================================~%MSG: osrf_gear/Kit~%# Kit message~%# This structure contains the information of kit.~%~%# The type of kit~%string kit_type~%~%# Collection of objects~%KitObject[] objects~%~%================================================================================~%MSG: osrf_gear/KitObject~%# KitObject message~%# This structure contains the information of an object contained in a kit.~%~%# Object type~%string type~%~%# Target pose~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Order>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'order_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'kits) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Order>))
  "Converts a ROS message object to a list"
  (cl:list 'Order
    (cl:cons ':order_id (order_id msg))
    (cl:cons ':kits (kits msg))
))
