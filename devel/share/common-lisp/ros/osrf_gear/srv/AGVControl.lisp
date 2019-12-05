; Auto-generated. Do not edit!


(cl:in-package osrf_gear-srv)


;//! \htmlinclude AGVControl-request.msg.html

(cl:defclass <AGVControl-request> (roslisp-msg-protocol:ros-message)
  ((kit_type
    :reader kit_type
    :initarg :kit_type
    :type cl:string
    :initform ""))
)

(cl:defclass AGVControl-request (<AGVControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AGVControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AGVControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name osrf_gear-srv:<AGVControl-request> is deprecated: use osrf_gear-srv:AGVControl-request instead.")))

(cl:ensure-generic-function 'kit_type-val :lambda-list '(m))
(cl:defmethod kit_type-val ((m <AGVControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osrf_gear-srv:kit_type-val is deprecated.  Use osrf_gear-srv:kit_type instead.")
  (kit_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AGVControl-request>) ostream)
  "Serializes a message object of type '<AGVControl-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'kit_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'kit_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AGVControl-request>) istream)
  "Deserializes a message object of type '<AGVControl-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kit_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'kit_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AGVControl-request>)))
  "Returns string type for a service object of type '<AGVControl-request>"
  "osrf_gear/AGVControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AGVControl-request)))
  "Returns string type for a service object of type 'AGVControl-request"
  "osrf_gear/AGVControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AGVControl-request>)))
  "Returns md5sum for a message object of type '<AGVControl-request>"
  "deaeee526929d0b28e9533c57234f4ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AGVControl-request)))
  "Returns md5sum for a message object of type 'AGVControl-request"
  "deaeee526929d0b28e9533c57234f4ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AGVControl-request>)))
  "Returns full string definition for message of type '<AGVControl-request>"
  (cl:format cl:nil "~%~%string kit_type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AGVControl-request)))
  "Returns full string definition for message of type 'AGVControl-request"
  (cl:format cl:nil "~%~%string kit_type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AGVControl-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'kit_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AGVControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AGVControl-request
    (cl:cons ':kit_type (kit_type msg))
))
;//! \htmlinclude AGVControl-response.msg.html

(cl:defclass <AGVControl-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AGVControl-response (<AGVControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AGVControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AGVControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name osrf_gear-srv:<AGVControl-response> is deprecated: use osrf_gear-srv:AGVControl-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AGVControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osrf_gear-srv:success-val is deprecated.  Use osrf_gear-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AGVControl-response>) ostream)
  "Serializes a message object of type '<AGVControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AGVControl-response>) istream)
  "Deserializes a message object of type '<AGVControl-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AGVControl-response>)))
  "Returns string type for a service object of type '<AGVControl-response>"
  "osrf_gear/AGVControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AGVControl-response)))
  "Returns string type for a service object of type 'AGVControl-response"
  "osrf_gear/AGVControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AGVControl-response>)))
  "Returns md5sum for a message object of type '<AGVControl-response>"
  "deaeee526929d0b28e9533c57234f4ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AGVControl-response)))
  "Returns md5sum for a message object of type 'AGVControl-response"
  "deaeee526929d0b28e9533c57234f4ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AGVControl-response>)))
  "Returns full string definition for message of type '<AGVControl-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AGVControl-response)))
  "Returns full string definition for message of type 'AGVControl-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AGVControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AGVControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AGVControl-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AGVControl)))
  'AGVControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AGVControl)))
  'AGVControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AGVControl)))
  "Returns string type for a service object of type '<AGVControl>"
  "osrf_gear/AGVControl")