// Generated by gencpp from file osrf_gear/StorageUnit.msg
// DO NOT EDIT!


#ifndef OSRF_GEAR_MESSAGE_STORAGEUNIT_H
#define OSRF_GEAR_MESSAGE_STORAGEUNIT_H


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
struct StorageUnit_
{
  typedef StorageUnit_<ContainerAllocator> Type;

  StorageUnit_()
    : unit_id()  {
    }
  StorageUnit_(const ContainerAllocator& _alloc)
    : unit_id(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _unit_id_type;
  _unit_id_type unit_id;





  typedef boost::shared_ptr< ::osrf_gear::StorageUnit_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::osrf_gear::StorageUnit_<ContainerAllocator> const> ConstPtr;

}; // struct StorageUnit_

typedef ::osrf_gear::StorageUnit_<std::allocator<void> > StorageUnit;

typedef boost::shared_ptr< ::osrf_gear::StorageUnit > StorageUnitPtr;
typedef boost::shared_ptr< ::osrf_gear::StorageUnit const> StorageUnitConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::osrf_gear::StorageUnit_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::osrf_gear::StorageUnit_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::osrf_gear::StorageUnit_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::osrf_gear::StorageUnit_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::osrf_gear::StorageUnit_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::osrf_gear::StorageUnit_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::osrf_gear::StorageUnit_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::osrf_gear::StorageUnit_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::osrf_gear::StorageUnit_<ContainerAllocator> >
{
  static const char* value()
  {
    return "65485572bdec5ec0a1af089b1cfe78c7";
  }

  static const char* value(const ::osrf_gear::StorageUnit_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x65485572bdec5ec0ULL;
  static const uint64_t static_value2 = 0xa1af089b1cfe78c7ULL;
};

template<class ContainerAllocator>
struct DataType< ::osrf_gear::StorageUnit_<ContainerAllocator> >
{
  static const char* value()
  {
    return "osrf_gear/StorageUnit";
  }

  static const char* value(const ::osrf_gear::StorageUnit_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::osrf_gear::StorageUnit_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# StorageUnit message\n\
# This structure contains the high-level information of an abstract storage unit.\n\
\n\
# Storage unit ID\n\
string unit_id\n\
";
  }

  static const char* value(const ::osrf_gear::StorageUnit_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::osrf_gear::StorageUnit_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.unit_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StorageUnit_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::osrf_gear::StorageUnit_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::osrf_gear::StorageUnit_<ContainerAllocator>& v)
  {
    s << indent << "unit_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.unit_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OSRF_GEAR_MESSAGE_STORAGEUNIT_H
