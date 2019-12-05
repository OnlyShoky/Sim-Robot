// Auto-generated. Do not edit!

// (in-package osrf_gear.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DetectedObject = require('./DetectedObject.js');

//-----------------------------------------------------------

class TrayContents {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tray = null;
      this.objects = null;
    }
    else {
      if (initObj.hasOwnProperty('tray')) {
        this.tray = initObj.tray
      }
      else {
        this.tray = '';
      }
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrayContents
    // Serialize message field [tray]
    bufferOffset = _serializer.string(obj.tray, buffer, bufferOffset);
    // Serialize message field [objects]
    // Serialize the length for message field [objects]
    bufferOffset = _serializer.uint32(obj.objects.length, buffer, bufferOffset);
    obj.objects.forEach((val) => {
      bufferOffset = DetectedObject.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrayContents
    let len;
    let data = new TrayContents(null);
    // Deserialize message field [tray]
    data.tray = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [objects]
    // Deserialize array length for message field [objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects[i] = DetectedObject.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.tray.length;
    object.objects.forEach((val) => {
      length += DetectedObject.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'osrf_gear/TrayContents';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b61a478a5b617eeaaa8cf0fa99e60cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Tray contents message
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrayContents(null);
    if (msg.tray !== undefined) {
      resolved.tray = msg.tray;
    }
    else {
      resolved.tray = ''
    }

    if (msg.objects !== undefined) {
      resolved.objects = new Array(msg.objects.length);
      for (let i = 0; i < resolved.objects.length; ++i) {
        resolved.objects[i] = DetectedObject.Resolve(msg.objects[i]);
      }
    }
    else {
      resolved.objects = []
    }

    return resolved;
    }
};

module.exports = TrayContents;
