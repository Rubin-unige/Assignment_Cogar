// Generated by gencpp from file assignments/SpeakerResponse.msg
// DO NOT EDIT!


#ifndef ASSIGNMENTS_MESSAGE_SPEAKERRESPONSE_H
#define ASSIGNMENTS_MESSAGE_SPEAKERRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace assignments
{
template <class ContainerAllocator>
struct SpeakerResponse_
{
  typedef SpeakerResponse_<ContainerAllocator> Type;

  SpeakerResponse_()
    : success(false)  {
    }
  SpeakerResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::assignments::SpeakerResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::assignments::SpeakerResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SpeakerResponse_

typedef ::assignments::SpeakerResponse_<std::allocator<void> > SpeakerResponse;

typedef boost::shared_ptr< ::assignments::SpeakerResponse > SpeakerResponsePtr;
typedef boost::shared_ptr< ::assignments::SpeakerResponse const> SpeakerResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::assignments::SpeakerResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::assignments::SpeakerResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::assignments::SpeakerResponse_<ContainerAllocator1> & lhs, const ::assignments::SpeakerResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::assignments::SpeakerResponse_<ContainerAllocator1> & lhs, const ::assignments::SpeakerResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace assignments

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::assignments::SpeakerResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::assignments::SpeakerResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignments::SpeakerResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignments::SpeakerResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignments::SpeakerResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignments::SpeakerResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::assignments::SpeakerResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::assignments::SpeakerResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::assignments::SpeakerResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "assignments/SpeakerResponse";
  }

  static const char* value(const ::assignments::SpeakerResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::assignments::SpeakerResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
;
  }

  static const char* value(const ::assignments::SpeakerResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::assignments::SpeakerResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SpeakerResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::assignments::SpeakerResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::assignments::SpeakerResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ASSIGNMENTS_MESSAGE_SPEAKERRESPONSE_H
