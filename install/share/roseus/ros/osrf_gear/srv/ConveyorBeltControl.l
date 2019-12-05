;; Auto-generated. Do not edit!


(when (boundp 'osrf_gear::ConveyorBeltControl)
  (if (not (find-package "OSRF_GEAR"))
    (make-package "OSRF_GEAR"))
  (shadow 'ConveyorBeltControl (find-package "OSRF_GEAR")))
(unless (find-package "OSRF_GEAR::CONVEYORBELTCONTROL")
  (make-package "OSRF_GEAR::CONVEYORBELTCONTROL"))
(unless (find-package "OSRF_GEAR::CONVEYORBELTCONTROLREQUEST")
  (make-package "OSRF_GEAR::CONVEYORBELTCONTROLREQUEST"))
(unless (find-package "OSRF_GEAR::CONVEYORBELTCONTROLRESPONSE")
  (make-package "OSRF_GEAR::CONVEYORBELTCONTROLRESPONSE"))

(in-package "ROS")





(defclass osrf_gear::ConveyorBeltControlRequest
  :super ros::object
  :slots (_state ))

(defmethod osrf_gear::ConveyorBeltControlRequest
  (:init
   (&key
    ((:state __state) (instance osrf_gear::ConveyorBeltState :init))
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; osrf_gear/ConveyorBeltState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; osrf_gear/ConveyorBeltState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; osrf_gear/ConveyorBeltState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass osrf_gear::ConveyorBeltControlResponse
  :super ros::object
  :slots (_success ))

(defmethod osrf_gear::ConveyorBeltControlResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass osrf_gear::ConveyorBeltControl
  :super ros::object
  :slots ())

(setf (get osrf_gear::ConveyorBeltControl :md5sum-) "9530768849645096e15ae7f875771ab2")
(setf (get osrf_gear::ConveyorBeltControl :datatype-) "osrf_gear/ConveyorBeltControl")
(setf (get osrf_gear::ConveyorBeltControl :request) osrf_gear::ConveyorBeltControlRequest)
(setf (get osrf_gear::ConveyorBeltControl :response) osrf_gear::ConveyorBeltControlResponse)

(defmethod osrf_gear::ConveyorBeltControlRequest
  (:response () (instance osrf_gear::ConveyorBeltControlResponse :init)))

(setf (get osrf_gear::ConveyorBeltControlRequest :md5sum-) "9530768849645096e15ae7f875771ab2")
(setf (get osrf_gear::ConveyorBeltControlRequest :datatype-) "osrf_gear/ConveyorBeltControlRequest")
(setf (get osrf_gear::ConveyorBeltControlRequest :definition-)
      "


ConveyorBeltState state


================================================================================
MSG: osrf_gear/ConveyorBeltState
# Conveyor belt state message
float64 power    # power of the belt (percentage, in +Y direction of belt frame)
---
bool success

")

(setf (get osrf_gear::ConveyorBeltControlResponse :md5sum-) "9530768849645096e15ae7f875771ab2")
(setf (get osrf_gear::ConveyorBeltControlResponse :datatype-) "osrf_gear/ConveyorBeltControlResponse")
(setf (get osrf_gear::ConveyorBeltControlResponse :definition-)
      "


ConveyorBeltState state


================================================================================
MSG: osrf_gear/ConveyorBeltState
# Conveyor belt state message
float64 power    # power of the belt (percentage, in +Y direction of belt frame)
---
bool success

")



(provide :osrf_gear/ConveyorBeltControl "9530768849645096e15ae7f875771ab2")


