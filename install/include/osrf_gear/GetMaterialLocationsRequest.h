// Generated by gencpp from file osrf_gear/GetMaterialLocationsRequest.msg
// DO NOT EDIT!


#ifndef OSRF_GEAR_MESSAGE_GETMATERIALLOCATIONSREQUEST_H
#define OSRF_GEAR_MESSAGE_GETMATERIALLOCATIONSREQUEST_H


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
struct GetMaterialLocationsRequest_
{
  typedef GetMaterialLocationsRequest_<ContainerAllocator> Type;

  GetMaterialLocationsRequest_()
    : material_type()  {
    }
  GetMaterialLocationsRequest_(const ContainerAllocator& _alloc)
    : material_type(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _material_type_type;
  _material_type_type material_type;





  typedef boost::shared_ptr< ::osrf_gear::GetMaterialLocationsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::osrf_gear::GetMaterialLocationsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetMaterialLocationsRequest_

typedef ::osrf_gear::GetMaterialLocationsRequest_<std::allocator<void> > GetMaterialLocationsRequest;

typedef boost::shared_ptr< ::osrf_gear::GetMaterialLocationsRequest > GetMaterialLocationsRequestPtr;
typedef boost::shared_ptr< ::osrf_gear::GetMaterialLocationsRequest const> GetMaterialLocationsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::osrf_gear::GetMaterialLocationsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::osrf_gear::GetMaterialLocationsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace osrf_gear

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'osrf_gear': ['/home/shoky/ariac_ws/src/ariac/osrf_gear/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::osrf_gear::GetMaterialLocationsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::osrf_gear::GetMaterialLocationsRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::osrf_gear::GetMaterialLocationsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::osrf_gear::GetMaterialLocationsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::osrf_gear::GetMaterialLocationsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::osrf_gear::GetMaterialLocationsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::osrf_gear::GetMaterialLocationsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f0792282be4b01a1cf5b25de45b5326c";
  }

  static const char* value(const ::osrf_gear::GetMaterialLocationsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf0792282be4b01a1ULL;
  static const uint64_t static_value2 = 0xcf5b25de45b5326cULL;
};

template<class ContainerAllocator>
struct DataType< ::osrf_gear::GetMaterialLocationsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "osrf_gear/GetMaterialLocationsRequest";
  }

  static const char* value(const ::osrf_gear::GetMaterialLocationsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::osrf_gear::GetMaterialLocationsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
string material_type\n\
\n\
";
  }

  static const char* value(const ::osrf_gear::GetMaterialLocationsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::osrf_gear::GetMaterialLocationsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.material_type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetMaterialLocationsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::osrf_gear::GetMaterialLocationsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::osrf_gear::GetMaterialLocationsRequest_<ContainerAllocator>& v)
  {
    s << indent << "material_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.material_type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OSRF_GEAR_MESSAGE_GETMATERIALLOCATIONSREQUEST_H