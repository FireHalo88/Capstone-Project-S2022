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

class cyton_move_all_jointsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.jointStates = null;
      this.acc = null;
      this.vel = null;
    }
    else {
      if (initObj.hasOwnProperty('jointStates')) {
        this.jointStates = initObj.jointStates
      }
      else {
        this.jointStates = [];
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = 0.0;
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cyton_move_all_jointsRequest
    // Serialize message field [jointStates]
    bufferOffset = _arraySerializer.float64(obj.jointStates, buffer, bufferOffset, null);
    // Serialize message field [acc]
    bufferOffset = _serializer.float32(obj.acc, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = _serializer.float32(obj.vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cyton_move_all_jointsRequest
    let len;
    let data = new cyton_move_all_jointsRequest(null);
    // Deserialize message field [jointStates]
    data.jointStates = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [acc]
    data.acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.jointStates.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotics_cyton/cyton_move_all_jointsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e70ab60f9bda1c235d95bce9fc54eb5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] jointStates
    float32 acc
    float32 vel
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cyton_move_all_jointsRequest(null);
    if (msg.jointStates !== undefined) {
      resolved.jointStates = msg.jointStates;
    }
    else {
      resolved.jointStates = []
    }

    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = 0.0
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = 0.0
    }

    return resolved;
    }
};

class cyton_move_all_jointsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cyton_move_all_jointsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cyton_move_all_jointsResponse
    let len;
    let data = new cyton_move_all_jointsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotics_cyton/cyton_move_all_jointsResponse';
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
    const resolved = new cyton_move_all_jointsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: cyton_move_all_jointsRequest,
  Response: cyton_move_all_jointsResponse,
  md5sum() { return '9e70ab60f9bda1c235d95bce9fc54eb5'; },
  datatype() { return 'robotics_cyton/cyton_move_all_joints'; }
};
