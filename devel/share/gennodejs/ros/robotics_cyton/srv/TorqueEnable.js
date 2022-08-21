// Auto-generated. Do not edit!

// (in-package robotics_cyton.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TorqueEnableRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.torque_enable = null;
    }
    else {
      if (initObj.hasOwnProperty('torque_enable')) {
        this.torque_enable = initObj.torque_enable
      }
      else {
        this.torque_enable = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TorqueEnableRequest
    // Serialize message field [torque_enable]
    bufferOffset = _serializer.byte(obj.torque_enable, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TorqueEnableRequest
    let len;
    let data = new TorqueEnableRequest(null);
    // Deserialize message field [torque_enable]
    data.torque_enable = _deserializer.byte(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotics_cyton/TorqueEnableRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bc940b9bf6a046947cb9f7274d752966';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    byte torque_enable
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TorqueEnableRequest(null);
    if (msg.torque_enable !== undefined) {
      resolved.torque_enable = msg.torque_enable;
    }
    else {
      resolved.torque_enable = 0
    }

    return resolved;
    }
};

class TorqueEnableResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TorqueEnableResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TorqueEnableResponse
    let len;
    let data = new TorqueEnableResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotics_cyton/TorqueEnableResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TorqueEnableResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: TorqueEnableRequest,
  Response: TorqueEnableResponse,
  md5sum() { return 'bc940b9bf6a046947cb9f7274d752966'; },
  datatype() { return 'robotics_cyton/TorqueEnable'; }
};
