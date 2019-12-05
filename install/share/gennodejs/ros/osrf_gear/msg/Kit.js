// Auto-generated. Do not edit!

// (in-package osrf_gear.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let KitObject = require('./KitObject.js');

//-----------------------------------------------------------

class Kit {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.kit_type = null;
      this.objects = null;
    }
    else {
      if (initObj.hasOwnProperty('kit_type')) {
        this.kit_type = initObj.kit_type
      }
      else {
        this.kit_type = '';
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
    // Serializes a message object of type Kit
    // Serialize message field [kit_type]
    bufferOffset = _serializer.string(obj.kit_type, buffer, bufferOffset);
    // Serialize message field [objects]
    // Serialize the length for message field [objects]
    bufferOffset = _serializer.uint32(obj.objects.length, buffer, bufferOffset);
    obj.objects.forEach((val) => {
      bufferOffset = KitObject.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Kit
    let len;
    let data = new Kit(null);
    // Deserialize message field [kit_type]
    data.kit_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [objects]
    // Deserialize array length for message field [objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects[i] = KitObject.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.kit_type.length;
    object.objects.forEach((val) => {
      length += KitObject.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'osrf_gear/Kit';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '54031a8e0ed56804a773bb7df501e16f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Kit(null);
    if (msg.kit_type !== undefined) {
      resolved.kit_type = msg.kit_type;
    }
    else {
      resolved.kit_type = ''
    }

    if (msg.objects !== undefined) {
      resolved.objects = new Array(msg.objects.length);
      for (let i = 0; i < resolved.objects.length; ++i) {
        resolved.objects[i] = KitObject.Resolve(msg.objects[i]);
      }
    }
    else {
      resolved.objects = []
    }

    return resolved;
    }
};

module.exports = Kit;
