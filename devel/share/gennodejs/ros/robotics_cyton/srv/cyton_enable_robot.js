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

class cyton_enable_robotRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enable_robot = null;
    }
    else {
      if (initObj.hasOwnProperty('enable_robot')) {
        this.enable_robot = initObj.enable_robot
      }
      else {
        this.enable_robot = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cyton_enable_robotRequest
    // Serialize message field [enable_robot]
    bufferOffset = _serializer.int32(obj.enable_robot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cyton_enable_robotRequest
    let len;
    let data = new cyton_enable_robotRequest(null);
    // Deserialize message field [enable_robot]
    data.enable_robot = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotics_cyton/cyton_enable_robotRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbdd2e9cd62c12dcd05983de0c95bf07';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 enable_robot
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cyton_enable_robotRequest(null);
    if (msg.enable_robot !== undefined) {
      resolved.enable_robot = msg.enable_robot;
    }
    else {
      resolved.enable_robot = 0
    }

    return resolved;
    }
};

class cyton_enable_robotResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cyton_enable_robotResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cyton_enable_robotResponse
    let len;
    let data = new cyton_enable_robotResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotics_cyton/cyton_enable_robotResponse';
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
    const resolved = new cyton_enable_robotResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: cyton_enable_robotRequest,
  Response: cyton_enable_robotResponse,
  md5sum() { return 'cbdd2e9cd62c12dcd05983de0c95bf07'; },
  datatype() { return 'robotics_cyton/cyton_enable_robot'; }
};
