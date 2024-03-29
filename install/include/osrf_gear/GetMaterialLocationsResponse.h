// Generated by gencpp from file osrf_gear/GetMaterialLocationsResponse.msg
// DO NOT EDIT!


#ifndef OSRF_GEAR_MESSAGE_GETMATERIALLOCATIONSRESPONSE_H
#define OSRF_GEAR_MESSAGE_GETMATERIALLOCATIONSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <osrf_gear/StorageUnit.h>

namespace osrf_gear
{
template <class ContainerAllocator>
struct GetMaterialLocationsResponse_
{
  typedef GetMaterialLocationsResponse_<ContainerAllocator> Type;

  GetMaterialLocationsResponse_()
    : storage_units()  {
    }
  GetMaterialLocationsResponse_(const ContainerAllocator& _alloc)
    : storage_units(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::osrf_gear::StorageUnit_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::osrf_gear::StorageUnit_<ContainerAllocator> >::other >  _storage_units_type;
  _storage_units_type storage_units;





  typedef boost::shared_ptr< ::osrf_gear::GetMaterialLocationsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::osrf_gear::GetMaterialLocationsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetMaterialLocationsResponse_

typedef ::osrf_gear::GetMaterialLocationsResponse_<std::allocator<void> > GetMaterialLocationsResponse;

typedef boost::shared_ptr< ::osrf_gear::GetMaterialLocationsResponse > GetMaterialLocationsResponsePtr;
typedef boost::shared_ptr< ::osrf_gear::GetMaterialLocationsResponse const> GetMaterialLocationsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::osrf_gear::GetMaterialLocationsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::osrf_gear::GetMaterialLocationsResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::osrf_gear::GetMaterialLocationsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::osrf_gear::GetMaterialLocationsResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::osrf_gear::GetMaterialLocationsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::osrf_gear::GetMaterialLocationsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::osrf_gear::GetMaterialLocationsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::osrf_gear::GetMaterialLocationsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::osrf_gear::GetMaterialLocationsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "51331790d22677d8b30363fdfeb6b55d";
  }

  static const char* value(const ::osrf_gear::GetMaterialLocationsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x51331790d22677d8ULL;
  static const uint64_t static_value2 = 0xb30363fdfeb6b55dULL;
};

template<class ContainerAllocator>
struct DataType< ::osrf_gear::GetMaterialLocationsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "osrf_gear/GetMaterialLocationsResponse";
  }

  static const char* value(const ::osrf_gear::GetMaterialLocationsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::osrf_gear::GetMaterialLocationsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "StorageUnit[] storage_units\n\
\n\
\n\
================================================================================\n\
MSG: osrf_gear/StorageUnit\n\
# StorageUnit message\n\
# This structure contains the high-level information of an abstract storage unit.\n\
\n\
# Storage unit ID\n\
string unit_id\n\
";
  }

  static const char* value(const ::osrf_gear::GetMaterialLocationsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::osrf_gear::GetMaterialLocationsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.storage_units);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetMaterialLocationsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::osrf_gear::GetMaterialLocationsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::osrf_gear::GetMaterialLocationsResponse_<ContainerAllocator>& v)
  {
    s << indent << "storage_units[]" << std::endl;
    for (size_t i = 0; i < v.storage_units.size(); ++i)
    {
      s << indent << "  storage_units[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::osrf_gear::StorageUnit_<ContainerAllocator> >::stream(s, indent + "    ", v.storage_units[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // OSRF_GEAR_MESSAGE_GETMATERIALLOCATIONSRESPONSE_H
