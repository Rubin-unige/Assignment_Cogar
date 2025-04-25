// Auto-generated. Do not edit!

// (in-package sushi_bot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RobotStatus = require('./RobotStatus.js');

//-----------------------------------------------------------

class RobotStatusArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robots = null;
    }
    else {
      if (initObj.hasOwnProperty('robots')) {
        this.robots = initObj.robots
      }
      else {
        this.robots = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotStatusArray
    // Serialize message field [robots]
    // Serialize the length for message field [robots]
    bufferOffset = _serializer.uint32(obj.robots.length, buffer, bufferOffset);
    obj.robots.forEach((val) => {
      bufferOffset = RobotStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotStatusArray
    let len;
    let data = new RobotStatusArray(null);
    // Deserialize message field [robots]
    // Deserialize array length for message field [robots]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.robots = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.robots[i] = RobotStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.robots.forEach((val) => {
      length += RobotStatus.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sushi_bot/RobotStatusArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51965e5e3df189789150d9c35cd148f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    RobotStatus[] robots
    ================================================================================
    MSG: sushi_bot/RobotStatus
    string robot_id
    string status
    string current_task
    string current_table
    bool is_available
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotStatusArray(null);
    if (msg.robots !== undefined) {
      resolved.robots = new Array(msg.robots.length);
      for (let i = 0; i < resolved.robots.length; ++i) {
        resolved.robots[i] = RobotStatus.Resolve(msg.robots[i]);
      }
    }
    else {
      resolved.robots = []
    }

    return resolved;
    }
};

module.exports = RobotStatusArray;
