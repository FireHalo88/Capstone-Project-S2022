// Generated by gencpp from file ur_dashboard_msgs/GetLoadedProgramResponse.msg
// DO NOT EDIT!


#ifndef UR_DASHBOARD_MSGS_MESSAGE_GETLOADEDPROGRAMRESPONSE_H
#define UR_DASHBOARD_MSGS_MESSAGE_GETLOADEDPROGRAMRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ur_dashboard_msgs
{
template <class ContainerAllocator>
struct GetLoadedProgramResponse_
{
  typedef GetLoadedProgramResponse_<ContainerAllocator> Type;

  GetLoadedProgramResponse_()
    : answer()
    , program_name()
    , success(false)  {
    }
  GetLoadedProgramResponse_(const ContainerAllocator& _alloc)
    : answer(_alloc)
    , program_name(_alloc)
    , success(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _answer_type;
  _answer_type answer;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _program_name_type;
  _program_name_type program_name;

   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetLoadedProgramResponse_

typedef ::ur_dashboard_msgs::GetLoadedProgramResponse_<std::allocator<void> > GetLoadedProgramResponse;

typedef boost::shared_ptr< ::ur_dashboard_msgs::GetLoadedProgramResponse > GetLoadedProgramResponsePtr;
typedef boost::shared_ptr< ::ur_dashboard_msgs::GetLoadedProgramResponse const> GetLoadedProgramResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator1> & lhs, const ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator2> & rhs)
{
  return lhs.answer == rhs.answer &&
    lhs.program_name == rhs.program_name &&
    lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator1> & lhs, const ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ur_dashboard_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0193dad3cdb834b9f37e420a88468ebe";
  }

  static const char* value(const ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0193dad3cdb834b9ULL;
  static const uint64_t static_value2 = 0xf37e420a88468ebeULL;
};

template<class ContainerAllocator>
struct DataType< ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ur_dashboard_msgs/GetLoadedProgramResponse";
  }

  static const char* value(const ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string answer\n"
"string program_name\n"
"bool success\n"
"\n"
;
  }

  static const char* value(const ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.answer);
      stream.next(m.program_name);
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetLoadedProgramResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ur_dashboard_msgs::GetLoadedProgramResponse_<ContainerAllocator>& v)
  {
    s << indent << "answer: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.answer);
    s << indent << "program_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.program_name);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UR_DASHBOARD_MSGS_MESSAGE_GETLOADEDPROGRAMRESPONSE_H
