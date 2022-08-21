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

class cyton_move_single_jointRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_number = null;
      this.position = null;
      this.vel = null;
      this.acc = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_number')) {
        this.joint_number = initObj.joint_number
      }
      else {
        this.joint_number = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0.0;
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = 0.0;
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cyton_move_single_jointRequest
    // Serialize message field [joint_number]
    bufferOffset = _serializer.int32(obj.joint_number, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.float64(obj.position, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = _serializer.float64(obj.vel, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = _serializer.float64(obj.acc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cyton_move_single_jointRequest
    let len;
    let data = new cyton_move_single_jointRequest(null);
    // Deserialize message field [joint_number]
    data.joint_number = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotics_cyton/cyton_move_single_jointRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '264be7c2e3d365d44f401d374e5f5f40';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    int32 joint_number
    float64 position
    float64 vel
    float64 acc
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cyton_move_single_jointRequest(null);
    if (msg.joint_number !== undefined) {
      resolved.joint_number = msg.joint_number;
    }
    else {
      resolved.joint_number = 0
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0.0
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = 0.0
    }

    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = 0.0
    }

    return resolved;
    }
};

class cyton_move_single_jointResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.outcome = null;
    }
    else {
      if (initObj.hasOwnProperty('outcome')) {
        this.outcome = initObj.outcome
      }
      else {
        this.outcome = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cyton_move_single_jointResponse
    // Serialize message field [outcome]
    bufferOffset = _serializer.bool(obj.outcome, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cyton_move_single_jointResponse
    let len;
    let data = new cyton_move_single_jointResponse(null);
    // Deserialize message field [outcome]
    data.outcome = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotics_cyton/cyton_move_single_jointResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae2c330a9f424f14e6045b1c9d0a0d15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response
    bool outcome
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cyton_move_single_jointResponse(null);
    if (msg.outcome !== undefined) {
      resolved.outcome = msg.outcome;
    }
    else {
      resolved.outcome = false
    }

    return resolved;
    }
};

module.exports = {
  Request: cyton_move_single_jointRequest,
  Response: cyton_move_single_jointResponse,
  md5sum() { return '72d8e1515109568f522880436505bc21'; },
  datatype() { return 'robotics_cyton/cyton_move_single_joint'; }
};
