// Auto-generated. Do not edit!

// (in-package sushi_bot.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TaskAssignmentRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_id = null;
      this.dish_name = null;
      this.table_number = null;
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
      if (initObj.hasOwnProperty('table_number')) {
        this.table_number = initObj.table_number
      }
      else {
        this.table_number = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskAssignmentRequest
    // Serialize message field [robot_id]
    bufferOffset = _serializer.string(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [dish_name]
    bufferOffset = _serializer.string(obj.dish_name, buffer, bufferOffset);
    // Serialize message field [table_number]
    bufferOffset = _serializer.string(obj.table_number, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskAssignmentRequest
    let len;
    let data = new TaskAssignmentRequest(null);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dish_name]
    data.dish_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [table_number]
    data.table_number = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.robot_id);
    length += _getByteLength(object.dish_name);
    length += _getByteLength(object.table_number);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sushi_bot/TaskAssignmentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1a6bd7d0985557e6d9ab90fdb43c6e4b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string robot_id
    string dish_name
    string table_number
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskAssignmentRequest(null);
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

    if (msg.table_number !== undefined) {
      resolved.table_number = msg.table_number;
    }
    else {
      resolved.table_number = ''
    }

    return resolved;
    }
};

class TaskAssignmentResponse {
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
    // Serializes a message object of type TaskAssignmentResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskAssignmentResponse
    let len;
    let data = new TaskAssignmentResponse(null);
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
    return 'sushi_bot/TaskAssignmentResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskAssignmentResponse(null);
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
  Request: TaskAssignmentRequest,
  Response: TaskAssignmentResponse,
  md5sum() { return 'ba41c7c5d4e8b7cf1a6d4085ce149d1f'; },
  datatype() { return 'sushi_bot/TaskAssignment'; }
};
