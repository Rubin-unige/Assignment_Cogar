// Auto-generated. Do not edit!

// (in-package assignment_cogar.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AssignTaskRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.order_id = null;
      this.robot_id = null;
      this.dish_name = null;
      this.table_id = null;
    }
    else {
      if (initObj.hasOwnProperty('order_id')) {
        this.order_id = initObj.order_id
      }
      else {
        this.order_id = '';
      }
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
      if (initObj.hasOwnProperty('table_id')) {
        this.table_id = initObj.table_id
      }
      else {
        this.table_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AssignTaskRequest
    // Serialize message field [order_id]
    bufferOffset = _serializer.string(obj.order_id, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = _serializer.string(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [dish_name]
    bufferOffset = _serializer.string(obj.dish_name, buffer, bufferOffset);
    // Serialize message field [table_id]
    bufferOffset = _serializer.string(obj.table_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AssignTaskRequest
    let len;
    let data = new AssignTaskRequest(null);
    // Deserialize message field [order_id]
    data.order_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dish_name]
    data.dish_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [table_id]
    data.table_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.order_id);
    length += _getByteLength(object.robot_id);
    length += _getByteLength(object.dish_name);
    length += _getByteLength(object.table_id);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment_cogar/AssignTaskRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5debeed3ca11a92c1f4ac7da7fa0fecd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Request
    string order_id
    string robot_id
    string dish_name
    string table_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AssignTaskRequest(null);
    if (msg.order_id !== undefined) {
      resolved.order_id = msg.order_id;
    }
    else {
      resolved.order_id = ''
    }

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

    if (msg.table_id !== undefined) {
      resolved.table_id = msg.table_id;
    }
    else {
      resolved.table_id = ''
    }

    return resolved;
    }
};

class AssignTaskResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AssignTaskResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AssignTaskResponse
    let len;
    let data = new AssignTaskResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment_cogar/AssignTaskResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Response
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AssignTaskResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: AssignTaskRequest,
  Response: AssignTaskResponse,
  md5sum() { return 'f47a80f63d9e9eca8fb4a2735112c7ca'; },
  datatype() { return 'assignment_cogar/AssignTask'; }
};
