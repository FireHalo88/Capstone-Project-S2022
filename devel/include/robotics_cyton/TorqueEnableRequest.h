// Generated by gencpp from file robotics_cyton/TorqueEnableRequest.msg
// DO NOT EDIT!


#ifndef ROBOTICS_CYTON_MESSAGE_TORQUEENABLEREQUEST_H
#define ROBOTICS_CYTON_MESSAGE_TORQUEENABLEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robotics_cyton
{
template <class ContainerAllocator>
struct TorqueEnableRequest_
{
  typedef TorqueEnableRequest_<ContainerAllocator> Type;

  TorqueEnableRequest_()
    : torque_enable(0)  {
    }
  TorqueEnableRequest_(const ContainerAllocator& _alloc)
    : torque_enable(0)  {
  (void)_alloc;
    }



   typedef int8_t _torque_enable_type;
  _torque_enable_type torque_enable;





  typedef boost::shared_ptr< ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TorqueEnableRequest_

typedef ::robotics_cyton::TorqueEnableRequest_<std::allocator<void> > TorqueEnableRequest;

typedef boost::shared_ptr< ::robotics_cyton::TorqueEnableRequest > TorqueEnableRequestPtr;
typedef boost::shared_ptr< ::robotics_cyton::TorqueEnableRequest const> TorqueEnableRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator1> & lhs, const ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator2> & rhs)
{
  return lhs.torque_enable == rhs.torque_enable;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator1> & lhs, const ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robotics_cyton

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bc940b9bf6a046947cb9f7274d752966";
  }

  static const char* value(const ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbc940b9bf6a04694ULL;
  static const uint64_t static_value2 = 0x7cb9f7274d752966ULL;
};

template<class ContainerAllocator>
struct DataType< ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotics_cyton/TorqueEnableRequest";
  }

  static const char* value(const ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "byte torque_enable\n"
;
  }

  static const char* value(const ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.torque_enable);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TorqueEnableRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotics_cyton::TorqueEnableRequest_<ContainerAllocator>& v)
  {
    s << indent << "torque_enable: ";
    Printer<int8_t>::stream(s, indent + "  ", v.torque_enable);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTICS_CYTON_MESSAGE_TORQUEENABLEREQUEST_H
