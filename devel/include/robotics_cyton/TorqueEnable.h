// Generated by gencpp from file robotics_cyton/TorqueEnable.msg
// DO NOT EDIT!


#ifndef ROBOTICS_CYTON_MESSAGE_TORQUEENABLE_H
#define ROBOTICS_CYTON_MESSAGE_TORQUEENABLE_H

#include <ros/service_traits.h>


#include <robotics_cyton/TorqueEnableRequest.h>
#include <robotics_cyton/TorqueEnableResponse.h>


namespace robotics_cyton
{

struct TorqueEnable
{

typedef TorqueEnableRequest Request;
typedef TorqueEnableResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct TorqueEnable
} // namespace robotics_cyton


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robotics_cyton::TorqueEnable > {
  static const char* value()
  {
    return "bc940b9bf6a046947cb9f7274d752966";
  }

  static const char* value(const ::robotics_cyton::TorqueEnable&) { return value(); }
};

template<>
struct DataType< ::robotics_cyton::TorqueEnable > {
  static const char* value()
  {
    return "robotics_cyton/TorqueEnable";
  }

  static const char* value(const ::robotics_cyton::TorqueEnable&) { return value(); }
};


// service_traits::MD5Sum< ::robotics_cyton::TorqueEnableRequest> should match
// service_traits::MD5Sum< ::robotics_cyton::TorqueEnable >
template<>
struct MD5Sum< ::robotics_cyton::TorqueEnableRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robotics_cyton::TorqueEnable >::value();
  }
  static const char* value(const ::robotics_cyton::TorqueEnableRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robotics_cyton::TorqueEnableRequest> should match
// service_traits::DataType< ::robotics_cyton::TorqueEnable >
template<>
struct DataType< ::robotics_cyton::TorqueEnableRequest>
{
  static const char* value()
  {
    return DataType< ::robotics_cyton::TorqueEnable >::value();
  }
  static const char* value(const ::robotics_cyton::TorqueEnableRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robotics_cyton::TorqueEnableResponse> should match
// service_traits::MD5Sum< ::robotics_cyton::TorqueEnable >
template<>
struct MD5Sum< ::robotics_cyton::TorqueEnableResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robotics_cyton::TorqueEnable >::value();
  }
  static const char* value(const ::robotics_cyton::TorqueEnableResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robotics_cyton::TorqueEnableResponse> should match
// service_traits::DataType< ::robotics_cyton::TorqueEnable >
template<>
struct DataType< ::robotics_cyton::TorqueEnableResponse>
{
  static const char* value()
  {
    return DataType< ::robotics_cyton::TorqueEnable >::value();
  }
  static const char* value(const ::robotics_cyton::TorqueEnableResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOTICS_CYTON_MESSAGE_TORQUEENABLE_H
