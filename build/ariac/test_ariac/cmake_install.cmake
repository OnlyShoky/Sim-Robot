# Install script for directory: /home/shoky/ariac_ws/src/ariac/test_ariac

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/shoky/ariac_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/shoky/ariac_ws/build/ariac/test_ariac/catkin_generated/installspace/test_ariac.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/test_ariac/cmake" TYPE FILE FILES
    "/home/shoky/ariac_ws/build/ariac/test_ariac/catkin_generated/installspace/test_ariacConfig.cmake"
    "/home/shoky/ariac_ws/build/ariac/test_ariac/catkin_generated/installspace/test_ariacConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/test_ariac" TYPE FILE FILES "/home/shoky/ariac_ws/src/ariac/test_ariac/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/test_ariac/test" TYPE FILE FILES
    "/home/shoky/ariac_ws/src/ariac/test_ariac/ariac_rosapi.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/ariac_example.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/ariac_tf_frames.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/ariac_qual2a.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/ariac_qual2b.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/ariac_qual2a_scoring_after_waiting.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/ariac_qual2b_scoring_after_waiting.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/ariac_qual2a_scoring_immediate.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/ariac_qual2b_scoring_immediate.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/gripper.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/gripper_unthrottled.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/ariac_scoring_perfect_kit.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/ariac_scoring_perfect_kit_flipped.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/ariac_scoring_correct_parts_incorrect_poses.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/ariac_scoring_correct_parts_plus_unwanted.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/ariac_scoring_correct_parts_plus_faulty.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/ariac_scoring_correct_parts_not_flipped.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/ariac_scoring_low_priority_order.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/ariac_scoring_missing_parts.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/ariac_scoring_interrupted.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/ariac_scoring_not_interrupted.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/ariac_scoring_faulty_parts.test"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/ariac_rosapi.yaml"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/fill_demo_tray.yaml"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/qual2a_testing.yaml"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/qual2b_testing.yaml"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/minimal_sample_unthrottled.yaml"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/scoring_base_order.yaml"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/scoring_base_order_flipped.yaml"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/scoring_base_order_interrupted.yaml"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/scoring_partial_kit_both_trays.yaml"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/scoring_perfect_kit.yaml"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/scoring_perfect_kit_both_trays.yaml"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/scoring_perfect_kit_flipped.yaml"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/scoring_correct_parts_incorrect_poses.yaml"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/scoring_correct_parts_plus_unwanted.yaml"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/scoring_correct_parts_plus_faulty.yaml"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/scoring_correct_parts_not_flipped.yaml"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/scoring_missing_parts.yaml"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/scoring_faulty_parts.yaml"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring/scoring_perfect_kit_both_trays.yaml"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/test_ariac/test" TYPE PROGRAM FILES
    "/home/shoky/ariac_ws/src/ariac/test_ariac/ros_api_checker"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_example_node.py"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_gripper.py"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_gripper_unthrottled.py"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring_after_waiting.py"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring_after_waiting.py"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring_immediate.py"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_scoring_against_expected_score.py"
    "/home/shoky/ariac_ws/src/ariac/test_ariac/test_tf_frames.py"
    )
endif()

