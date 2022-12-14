// Generated by gencpp from file robotics_cyton/cyton_enable_robotResponse.msg
// DO NOT EDIT!


#ifndef ROBOTICS_CYTON_MESSAGE_CYTON_ENABLE_ROBOTRESPONSE_H
#define ROBOTICS_CYTON_MESSAGE_CYTON_ENABLE_ROBOTRESPONSE_H


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
struct cyton_enable_robotResponse_
{
  typedef cyton_enable_robotResponse_<ContainerAllocator> Type;

  cyton_enable_robotResponse_()
    {
    }
  cyton_enable_robotResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::robotics_cyton::cyton_enable_robotResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotics_cyton::cyton_enable_robotResponse_<ContainerAllocator> const> ConstPtr;

}; // struct cyton_enable_robotResponse_

typedef ::robotics_cyton::cyton_enable_robotResponse_<std::allocator<void> > cyton_enable_robotResponse;

typedef boost::shared_ptr< ::robotics_cyton::cyton_enable_robotResponse > cyton_enable_robotResponsePtr;
typedef boost::shared_ptr< ::robotics_cyton::cyton_enable_robotResponse const> cyton_enable_robotResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotics_cyton::cyton_enable_robotResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotics_cyton::cyton_enable_robotResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace robotics_cyton

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robotics_cyton::cyton_enable_robotResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotics_cyton::cyton_enable_robotResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotics_cyton::cyton_enable_robotResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotics_cyton::cyton_enable_robotResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotics_cyton::cyton_enable_robotResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotics_cyton::cyton_enable_robotResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotics_cyton::cyton_enable_robotResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::robotics_cyton::cyton_enable_robotResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::robotics_cyton::cyton_enable_robotResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotics_cyton/cyton_enable_robotResponse";
  }

  static const char* value(const ::robotics_cyton::cyton_enable_robotResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotics_cyton::cyton_enable_robotResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::robotics_cyton::cyton_enable_robotResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotics_cyton::cyton_enable_robotResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct cyton_enable_robotResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotics_cyton::cyton_enable_robotResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::robotics_cyton::cyton_enable_robotResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTICS_CYTON_MESSAGE_CYTON_ENABLE_ROBOTRESPONSE_H
