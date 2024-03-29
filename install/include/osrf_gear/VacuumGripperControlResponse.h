// Generated by gencpp from file osrf_gear/VacuumGripperControlResponse.msg
// DO NOT EDIT!


#ifndef OSRF_GEAR_MESSAGE_VACUUMGRIPPERCONTROLRESPONSE_H
#define OSRF_GEAR_MESSAGE_VACUUMGRIPPERCONTROLRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace osrf_gear
{
template <class ContainerAllocator>
struct VacuumGripperControlResponse_
{
  typedef VacuumGripperControlResponse_<ContainerAllocator> Type;

  VacuumGripperControlResponse_()
    : success(false)  {
    }
  VacuumGripperControlResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::osrf_gear::VacuumGripperControlResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::osrf_gear::VacuumGripperControlResponse_<ContainerAllocator> const> ConstPtr;

}; // struct VacuumGripperControlResponse_

typedef ::osrf_gear::VacuumGripperControlResponse_<std::allocator<void> > VacuumGripperControlResponse;

typedef boost::shared_ptr< ::osrf_gear::VacuumGripperControlResponse > VacuumGripperControlResponsePtr;
typedef boost::shared_ptr< ::osrf_gear::VacuumGripperControlResponse const> VacuumGripperControlResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::osrf_gear::VacuumGripperControlResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::osrf_gear::VacuumGripperControlResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace osrf_gear

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'osrf_gear': ['/home/shoky/ariac_ws/src/ariac/osrf_gear/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::osrf_gear::VacuumGripperControlResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::osrf_gear::VacuumGripperControlResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::osrf_gear::VacuumGripperControlResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::osrf_gear::VacuumGripperControlResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::osrf_gear::VacuumGripperControlResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::osrf_gear::VacuumGripperControlResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::osrf_gear::VacuumGripperControlResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::osrf_gear::VacuumGripperControlResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::osrf_gear::VacuumGripperControlResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "osrf_gear/VacuumGripperControlResponse";
  }

  static const char* value(const ::osrf_gear::VacuumGripperControlResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::osrf_gear::VacuumGripperControlResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n\
\n\
";
  }

  static const char* value(const ::osrf_gear::VacuumGripperControlResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::osrf_gear::VacuumGripperControlResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VacuumGripperControlResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::osrf_gear::VacuumGripperControlResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::osrf_gear::VacuumGripperControlResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OSRF_GEAR_MESSAGE_VACUUMGRIPPERCONTROLRESPONSE_H
