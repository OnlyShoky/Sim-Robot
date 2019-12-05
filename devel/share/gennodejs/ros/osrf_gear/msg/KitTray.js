// Auto-generated. Do not edit!

// (in-package osrf_gear.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Kit = require('./Kit.js');

//-----------------------------------------------------------

class KitTray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tray = null;
      this.kit = null;
    }
    else {
      if (initObj.hasOwnProperty('tray')) {
        this.tray = initObj.tray
      }
      else {
        this.tray = '';
      }
      if (initObj.hasOwnProperty('kit')) {
        this.kit = initObj.kit
      }
      else {
        this.kit = new Kit();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KitTray
    // Serialize message field [tray]
    bufferOffset = _serializer.string(obj.tray, buffer, bufferOffset);
    // Serialize message field [kit]
    bufferOffset = Kit.serialize(obj.kit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KitTray
    let len;
    let data = new KitTray(null);
    // Deserialize message field [tray]
    data.tray = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [kit]
    data.kit = Kit.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.tray.length;
    length += Kit.getMessageSize(object.kit);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'osrf_gear/KitTray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ef21954ac24ef4de6988a89e02e42ba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # KitTray message
    # This structure contains the information of a kit tray.
    
    # The ID of the tray
    string tray
    
    # The kit on the tray
    Kit kit
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KitTray(null);
    if (msg.tray !== undefined) {
      resolved.tray = msg.tray;
    }
    else {
      resolved.tray = ''
    }

    if (msg.kit !== undefined) {
      resolved.kit = Kit.Resolve(msg.kit)
    }
    else {
      resolved.kit = new Kit()
    }

    return resolved;
    }
};

module.exports = KitTray;
