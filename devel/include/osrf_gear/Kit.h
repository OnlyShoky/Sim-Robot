// Generated by gencpp from file osrf_gear/Kit.msg
// DO NOT EDIT!


#ifndef OSRF_GEAR_MESSAGE_KIT_H
#define OSRF_GEAR_MESSAGE_KIT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <osrf_gear/KitObject.h>

namespace osrf_gear
{
template <class ContainerAllocator>
struct Kit_
{
  typedef Kit_<ContainerAllocator> Type;

  Kit_()
    : kit_type()
    , objects()  {
    }
  Kit_(const ContainerAllocator& _alloc)
    : kit_type(_alloc)
    , objects(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _kit_type_type;
  _kit_type_type kit_type;

   typedef std::vector< ::osrf_gear::KitObject_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::osrf_gear::KitObject_<ContainerAllocator> >::other >  _objects_type;
  _objects_type objects;





  typedef boost::shared_ptr< ::osrf_gear::Kit_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::osrf_gear::Kit_<ContainerAllocator> const> ConstPtr;

}; // struct Kit_

typedef ::osrf_gear::Kit_<std::allocator<void> > Kit;

typedef boost::shared_ptr< ::osrf_gear::Kit > KitPtr;
typedef boost::shared_ptr< ::osrf_gear::Kit const> KitConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::osrf_gear::Kit_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::osrf_gear::Kit_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::osrf_gear::Kit_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::osrf_gear::Kit_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::osrf_gear::Kit_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::osrf_gear::Kit_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::osrf_gear::Kit_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::osrf_gear::Kit_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::osrf_gear::Kit_<ContainerAllocator> >
{
  static const char* value()
  {
    return "54031a8e0ed56804a773bb7df501e16f";
  }

  static const char* value(const ::osrf_gear::Kit_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x54031a8e0ed56804ULL;
  static const uint64_t static_value2 = 0xa773bb7df501e16fULL;
};

template<class ContainerAllocator>
struct DataType< ::osrf_gear::Kit_<ContainerAllocator> >
{
  static const char* value()
  {
    return "osrf_gear/Kit";
  }

  static const char* value(const ::osrf_gear::Kit_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::osrf_gear::Kit_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Kit message\n\
# This structure contains the information of kit.\n\
\n\
# The type of kit\n\
string kit_type\n\
\n\
# Collection of objects\n\
KitObject[] objects\n\
\n\
================================================================================\n\
MSG: osrf_gear/KitObject\n\
# KitObject message\n\
# This structure contains the information of an object contained in a kit.\n\
\n\
# Object type\n\
string type\n\
\n\
# Target pose\n\
geometry_msgs/Pose pose\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::osrf_gear::Kit_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::osrf_gear::Kit_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.kit_type);
      stream.next(m.objects);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Kit_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::osrf_gear::Kit_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::osrf_gear::Kit_<ContainerAllocator>& v)
  {
    s << indent << "kit_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.kit_type);
    s << indent << "objects[]" << std::endl;
    for (size_t i = 0; i < v.objects.size(); ++i)
    {
      s << indent << "  objects[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::osrf_gear::KitObject_<ContainerAllocator> >::stream(s, indent + "    ", v.objects[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // OSRF_GEAR_MESSAGE_KIT_H
