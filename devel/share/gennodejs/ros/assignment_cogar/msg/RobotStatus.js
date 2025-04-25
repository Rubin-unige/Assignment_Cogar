// Auto-generated. Do not edit!

// (in-package assignment_cogar.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RobotStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_id = null;
      this.location = null;
      this.status = null;
      this.order_status = null;
      this.order_id = null;
      this.is_available = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = '';
      }
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
      if (initObj.hasOwnProperty('order_status')) {
        this.order_status = initObj.order_status
      }
      else {
        this.order_status = '';
      }
      if (initObj.hasOwnProperty('order_id')) {
        this.order_id = initObj.order_id
      }
      else {
        this.order_id = '';
      }
      if (initObj.hasOwnProperty('is_available')) {
        this.is_available = initObj.is_available
      }
      else {
        this.is_available = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotStatus
    // Serialize message field [robot_id]
    bufferOffset = _serializer.string(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [location]
    bufferOffset = _serializer.string(obj.location, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [order_status]
    bufferOffset = _serializer.string(obj.order_status, buffer, bufferOffset);
    // Serialize message field [order_id]
    bufferOffset = _serializer.string(obj.order_id, buffer, bufferOffset);
    // Serialize message field [is_available]
    bufferOffset = _serializer.bool(obj.is_available, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotStatus
    let len;
    let data = new RobotStatus(null);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [location]
    data.location = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [order_status]
    data.order_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [order_id]
    data.order_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [is_available]
    data.is_available = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.robot_id);
    length += _getByteLength(object.location);
    length += _getByteLength(object.status);
    length += _getByteLength(object.order_status);
    length += _getByteLength(object.order_id);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'assignment_cogar/RobotStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e29185a01811c1afe86cbc3bbc80a5fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string robot_id
    string location
    string status
    string order_status
    string order_id
    bool is_available
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotStatus(null);
    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = ''
    }

    if (msg.location !== undefined) {
      resolved.location = msg.location;
    }
    else {
      resolved.location = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    if (msg.order_status !== undefined) {
      resolved.order_status = msg.order_status;
    }
    else {
      resolved.order_status = ''
    }

    if (msg.order_id !== undefined) {
      resolved.order_id = msg.order_id;
    }
    else {
      resolved.order_id = ''
    }

    if (msg.is_available !== undefined) {
      resolved.is_available = msg.is_available;
    }
    else {
      resolved.is_available = false
    }

    return resolved;
    }
};

module.exports = RobotStatus;
