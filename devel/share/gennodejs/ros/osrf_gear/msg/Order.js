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

class Order {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.order_id = null;
      this.kits = null;
    }
    else {
      if (initObj.hasOwnProperty('order_id')) {
        this.order_id = initObj.order_id
      }
      else {
        this.order_id = '';
      }
      if (initObj.hasOwnProperty('kits')) {
        this.kits = initObj.kits
      }
      else {
        this.kits = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Order
    // Serialize message field [order_id]
    bufferOffset = _serializer.string(obj.order_id, buffer, bufferOffset);
    // Serialize message field [kits]
    // Serialize the length for message field [kits]
    bufferOffset = _serializer.uint32(obj.kits.length, buffer, bufferOffset);
    obj.kits.forEach((val) => {
      bufferOffset = Kit.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Order
    let len;
    let data = new Order(null);
    // Deserialize message field [order_id]
    data.order_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [kits]
    // Deserialize array length for message field [kits]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.kits = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.kits[i] = Kit.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.order_id.length;
    object.kits.forEach((val) => {
      length += Kit.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'osrf_gear/Order';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7fadfe9b7f871f7a5285e3dfb4eb98ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Order message
    # This structure contains the information of an order.
    
    # ID of the order
    string order_id
    
    # Collection of kits
    Kit[] kits
    
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
    const resolved = new Order(null);
    if (msg.order_id !== undefined) {
      resolved.order_id = msg.order_id;
    }
    else {
      resolved.order_id = ''
    }

    if (msg.kits !== undefined) {
      resolved.kits = new Array(msg.kits.length);
      for (let i = 0; i < resolved.kits.length; ++i) {
        resolved.kits[i] = Kit.Resolve(msg.kits[i]);
      }
    }
    else {
      resolved.kits = []
    }

    return resolved;
    }
};

module.exports = Order;
