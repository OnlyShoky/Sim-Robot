; Auto-generated. Do not edit!


(cl:in-package osrf_gear-msg)


;//! \htmlinclude TrayContents.msg.html

(cl:defclass <TrayContents> (roslisp-msg-protocol:ros-message)
  ((tray
    :reader tray
    :initarg :tray
    :type cl:string
    :initform "")
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector osrf_gear-msg:DetectedObject)
   :initform (cl:make-array 0 :element-type 'osrf_gear-msg:DetectedObject :initial-element (cl:make-instance 'osrf_gear-msg:DetectedObject))))
)

(cl:defclass TrayContents (<TrayContents>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrayContents>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrayContents)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name osrf_gear-msg:<TrayContents> is deprecated: use osrf_gear-msg:TrayContents instead.")))

(cl:ensure-generic-function 'tray-val :lambda-list '(m))
(cl:defmethod tray-val ((m <TrayContents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osrf_gear-msg:tray-val is deprecated.  Use osrf_gear-msg:tray instead.")
  (tray m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <TrayContents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osrf_gear-msg:objects-val is deprecated.  Use osrf_gear-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrayContents>) ostream)
  "Serializes a message object of type '<TrayContents>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tray))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tray))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrayContents>) istream)
  "Deserializes a message object of type '<TrayContents>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tray) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tray) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'osrf_gear-msg:DetectedObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrayContents>)))
  "Returns string type for a message object of type '<TrayContents>"
  "osrf_gear/TrayContents")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrayContents)))
  "Returns string type for a message object of type 'TrayContents"
  "osrf_gear/TrayContents")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrayContents>)))
  "Returns md5sum for a message object of type '<TrayContents>"
  "8b61a478a5b617eeaaa8cf0fa99e60cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrayContents)))
  "Returns md5sum for a message object of type 'TrayContents"
  "8b61a478a5b617eeaaa8cf0fa99e60cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrayContents>)))
  "Returns full string definition for message of type '<TrayContents>"
  (cl:format cl:nil "# Tray contents message~%# This structure contains the information of the current contents of a tray.~%~%# The ID of the tray~%string tray~%~%# Collection of objects~%DetectedObject[] objects~%~%================================================================================~%MSG: osrf_gear/DetectedObject~%# DetectedObject message~%# This structure contains the information of a detected object.~%~%# Object type~%string type~%~%# Whether or not the object is faulty~%bool is_faulty~%~%# Target pose~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrayContents)))
  "Returns full string definition for message of type 'TrayContents"
  (cl:format cl:nil "# Tray contents message~%# This structure contains the information of the current contents of a tray.~%~%# The ID of the tray~%string tray~%~%# Collection of objects~%DetectedObject[] objects~%~%================================================================================~%MSG: osrf_gear/DetectedObject~%# DetectedObject message~%# This structure contains the information of a detected object.~%~%# Object type~%string type~%~%# Whether or not the object is faulty~%bool is_faulty~%~%# Target pose~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrayContents>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tray))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrayContents>))
  "Converts a ROS message object to a list"
  (cl:list 'TrayContents
    (cl:cons ':tray (tray msg))
    (cl:cons ':objects (objects msg))
))
