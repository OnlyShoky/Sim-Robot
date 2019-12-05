execute_process(COMMAND "/home/shoky/ariac_ws/build/ariac/ariac_example/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/shoky/ariac_ws/build/ariac/ariac_example/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
