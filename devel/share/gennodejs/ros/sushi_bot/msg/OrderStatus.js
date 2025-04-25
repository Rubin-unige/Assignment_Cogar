// Auto-generated. Do not edit!

// (in-package sushi_bot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class OrderStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_id = null;
      this.dish_name = null;
      this.status = null;
      this.requires_staff_attention = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = '';
      }
      if (initObj.hasOwnProperty('dish_name')) {
        this.dish_name = initObj.dish_name
      }
      else {
        this.dish_name = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
      if (initObj.hasOwnProperty('requires_staff_attention')) {
        this.requires_staff_attention = initObj.requires_staff_attention
      }
      else {
        this.requires_staff_attention = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OrderStatus
    // Serialize message field [robot_id]
    bufferOffset = _serializer.string(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [dish_name]
    bufferOffset = _serializer.string(obj.dish_name, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [requires_staff_attention]
    bufferOffset = _serializer.bool(obj.requires_staff_attention, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OrderStatus
    let len;
    let data = new OrderStatus(null);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dish_name]
    data.dish_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [requires_staff_attention]
    data.requires_staff_attention = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.robot_id);
    length += _getByteLength(object.dish_name);
    length += _getByteLength(object.status);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sushi_bot/OrderStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '53d9d96d6078b16a5b79f0e97d7da161';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string robot_id
    string dish_name
    string status
    bool requires_staff_attention
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OrderStatus(null);
    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = ''
    }

    if (msg.dish_name !== undefined) {
      resolved.dish_name = msg.dish_name;
    }
    else {
      resolved.dish_name = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    if (msg.requires_staff_attention !== undefined) {
      resolved.requires_staff_attention = msg.requires_staff_attention;
    }
    else {
      resolved.requires_staff_attention = false
    }

    return resolved;
    }
};

module.exports = OrderStatus;
