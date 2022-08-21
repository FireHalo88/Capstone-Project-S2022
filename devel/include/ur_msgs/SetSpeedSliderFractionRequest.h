// Generated by gencpp from file ur_msgs/SetSpeedSliderFractionRequest.msg
// DO NOT EDIT!


#ifndef UR_MSGS_MESSAGE_SETSPEEDSLIDERFRACTIONREQUEST_H
#define UR_MSGS_MESSAGE_SETSPEEDSLIDERFRACTIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ur_msgs
{
template <class ContainerAllocator>
struct SetSpeedSliderFractionRequest_
{
  typedef SetSpeedSliderFractionRequest_<ContainerAllocator> Type;

  SetSpeedSliderFractionRequest_()
    : speed_slider_fraction(0.0)  {
    }
  SetSpeedSliderFractionRequest_(const ContainerAllocator& _alloc)
    : speed_slider_fraction(0.0)  {
  (void)_alloc;
    }



   typedef double _speed_slider_fraction_type;
  _speed_slider_fraction_type speed_slider_fraction;





  typedef boost::shared_ptr< ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetSpeedSliderFractionRequest_

typedef ::ur_msgs::SetSpeedSliderFractionRequest_<std::allocator<void> > SetSpeedSliderFractionRequest;

typedef boost::shared_ptr< ::ur_msgs::SetSpeedSliderFractionRequest > SetSpeedSliderFractionRequestPtr;
typedef boost::shared_ptr< ::ur_msgs::SetSpeedSliderFractionRequest const> SetSpeedSliderFractionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator1> & lhs, const ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.speed_slider_fraction == rhs.speed_slider_fraction;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator1> & lhs, const ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ur_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "64134244ab4dfc72a3406fe06d580274";
  }

  static const char* value(const ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x64134244ab4dfc72ULL;
  static const uint64_t static_value2 = 0xa3406fe06d580274ULL;
};

template<class ContainerAllocator>
struct DataType< ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ur_msgs/SetSpeedSliderFractionRequest";
  }

  static const char* value(const ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Set the speed slider on the teach pendant to the specified value.\n"
"#\n"
"# Values for 'speed_slider_fraction' must be from [0; 1.0]; values outside this\n"
"# valid range will result in an error being returned to the caller.\n"
"\n"
"float64 speed_slider_fraction\n"
;
  }

  static const char* value(const ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.speed_slider_fraction);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetSpeedSliderFractionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ur_msgs::SetSpeedSliderFractionRequest_<ContainerAllocator>& v)
  {
    s << indent << "speed_slider_fraction: ";
    Printer<double>::stream(s, indent + "  ", v.speed_slider_fraction);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UR_MSGS_MESSAGE_SETSPEEDSLIDERFRACTIONREQUEST_H
