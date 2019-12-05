// Generated by gencpp from file osrf_gear/PopulationControl.msg
// DO NOT EDIT!


#ifndef OSRF_GEAR_MESSAGE_POPULATIONCONTROL_H
#define OSRF_GEAR_MESSAGE_POPULATIONCONTROL_H

#include <ros/service_traits.h>


#include <osrf_gear/PopulationControlRequest.h>
#include <osrf_gear/PopulationControlResponse.h>


namespace osrf_gear
{

struct PopulationControl
{

typedef PopulationControlRequest Request;
typedef PopulationControlResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PopulationControl
} // namespace osrf_gear


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::osrf_gear::PopulationControl > {
  static const char* value()
  {
    return "02058b7d55716526fae62eb68abd6f31";
  }

  static const char* value(const ::osrf_gear::PopulationControl&) { return value(); }
};

template<>
struct DataType< ::osrf_gear::PopulationControl > {
  static const char* value()
  {
    return "osrf_gear/PopulationControl";
  }

  static const char* value(const ::osrf_gear::PopulationControl&) { return value(); }
};


// service_traits::MD5Sum< ::osrf_gear::PopulationControlRequest> should match 
// service_traits::MD5Sum< ::osrf_gear::PopulationControl > 
template<>
struct MD5Sum< ::osrf_gear::PopulationControlRequest>
{
  static const char* value()
  {
    return MD5Sum< ::osrf_gear::PopulationControl >::value();
  }
  static const char* value(const ::osrf_gear::PopulationControlRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::osrf_gear::PopulationControlRequest> should match 
// service_traits::DataType< ::osrf_gear::PopulationControl > 
template<>
struct DataType< ::osrf_gear::PopulationControlRequest>
{
  static const char* value()
  {
    return DataType< ::osrf_gear::PopulationControl >::value();
  }
  static const char* value(const ::osrf_gear::PopulationControlRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::osrf_gear::PopulationControlResponse> should match 
// service_traits::MD5Sum< ::osrf_gear::PopulationControl > 
template<>
struct MD5Sum< ::osrf_gear::PopulationControlResponse>
{
  static const char* value()
  {
    return MD5Sum< ::osrf_gear::PopulationControl >::value();
  }
  static const char* value(const ::osrf_gear::PopulationControlResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::osrf_gear::PopulationControlResponse> should match 
// service_traits::DataType< ::osrf_gear::PopulationControl > 
template<>
struct DataType< ::osrf_gear::PopulationControlResponse>
{
  static const char* value()
  {
    return DataType< ::osrf_gear::PopulationControl >::value();
  }
  static const char* value(const ::osrf_gear::PopulationControlResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // OSRF_GEAR_MESSAGE_POPULATIONCONTROL_H