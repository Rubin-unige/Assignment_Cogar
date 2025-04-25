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

class Order {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.order_id = null;
      this.table_id = null;
      this.dish_name = null;
    }
    else {
      if (initObj.hasOwnProperty('order_id')) {
        this.order_id = initObj.order_id
      }
      else {
        this.order_id = '';
      }
      if (initObj.hasOwnProperty('table_id')) {
        this.table_id = initObj.table_id
      }
      else {
        this.table_id = '';
      }
      if (initObj.hasOwnProperty('dish_name')) {
        this.dish_name = initObj.dish_name
      }
      else {
        this.dish_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Order
    // Serialize message field [order_id]
    bufferOffset = _serializer.string(obj.order_id, buffer, bufferOffset);
    // Serialize message field [table_id]
    bufferOffset = _serializer.string(obj.table_id, buffer, bufferOffset);
    // Serialize message field [dish_name]
    bufferOffset = _serializer.string(obj.dish_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Order
    let len;
    let data = new Order(null);
    // Deserialize message field [order_id]
    data.order_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [table_id]
    data.table_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dish_name]
    data.dish_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.order_id);
    length += _getByteLength(object.table_id);
    length += _getByteLength(object.dish_name);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'assignment_cogar/Order';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbb635957c0ba7c2418791d5a6ac2702';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string order_id
    string table_id
    string dish_name
    
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

    if (msg.table_id !== undefined) {
      resolved.table_id = msg.table_id;
    }
    else {
      resolved.table_id = ''
    }

    if (msg.dish_name !== undefined) {
      resolved.dish_name = msg.dish_name;
    }
    else {
      resolved.dish_name = ''
    }

    return resolved;
    }
};

module.exports = Order;
