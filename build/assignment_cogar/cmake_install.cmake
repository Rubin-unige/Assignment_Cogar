# Install script for directory: /home/rubin/Assignment_Cogar/src/assignment_cogar

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/rubin/Assignment_Cogar/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/assignment_cogar/msg" TYPE FILE FILES
    "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/Order.msg"
    "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/RobotStatus.msg"
    "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/OrderStatus.msg"
    "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/TableStatus.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/assignment_cogar/srv" TYPE FILE FILES
    "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/AssignTask.srv"
    "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/VerifyOrder.srv"
    "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/Microphone.srv"
    "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/TriggerAnalysis.srv"
    "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/FoodPlacer.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/assignment_cogar/cmake" TYPE FILE FILES "/home/rubin/Assignment_Cogar/build/assignment_cogar/catkin_generated/installspace/assignment_cogar-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/rubin/Assignment_Cogar/devel/include/assignment_cogar")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/rubin/Assignment_Cogar/devel/share/roseus/ros/assignment_cogar")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/rubin/Assignment_Cogar/devel/share/common-lisp/ros/assignment_cogar")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/rubin/Assignment_Cogar/devel/share/gennodejs/ros/assignment_cogar")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/rubin/Assignment_Cogar/devel/lib/python3/dist-packages/assignment_cogar")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/rubin/Assignment_Cogar/devel/lib/python3/dist-packages/assignment_cogar")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/rubin/Assignment_Cogar/build/assignment_cogar/catkin_generated/installspace/assignment_cogar.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/assignment_cogar/cmake" TYPE FILE FILES "/home/rubin/Assignment_Cogar/build/assignment_cogar/catkin_generated/installspace/assignment_cogar-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/assignment_cogar/cmake" TYPE FILE FILES
    "/home/rubin/Assignment_Cogar/build/assignment_cogar/catkin_generated/installspace/assignment_cogarConfig.cmake"
    "/home/rubin/Assignment_Cogar/build/assignment_cogar/catkin_generated/installspace/assignment_cogarConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/assignment_cogar" TYPE FILE FILES "/home/rubin/Assignment_Cogar/src/assignment_cogar/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/assignment_cogar" TYPE PROGRAM FILES "/home/rubin/Assignment_Cogar/build/assignment_cogar/catkin_generated/installspace/simulate_order.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/assignment_cogar" TYPE PROGRAM FILES "/home/rubin/Assignment_Cogar/build/assignment_cogar/catkin_generated/installspace/food_placer.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/assignment_cogar" TYPE PROGRAM FILES "/home/rubin/Assignment_Cogar/build/assignment_cogar/catkin_generated/installspace/orchestrator_system.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/assignment_cogar" TYPE PROGRAM FILES "/home/rubin/Assignment_Cogar/build/assignment_cogar/catkin_generated/installspace/order_verification_system.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/assignment_cogar" TYPE PROGRAM FILES "/home/rubin/Assignment_Cogar/build/assignment_cogar/catkin_generated/installspace/microphone_service.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/assignment_cogar" TYPE PROGRAM FILES "/home/rubin/Assignment_Cogar/build/assignment_cogar/catkin_generated/installspace/robot_manager.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/assignment_cogar" TYPE PROGRAM FILES "/home/rubin/Assignment_Cogar/build/assignment_cogar/catkin_generated/installspace/visual_perception_node.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/assignment_cogar" TYPE PROGRAM FILES "/home/rubin/Assignment_Cogar/build/assignment_cogar/catkin_generated/installspace/test_food_placement.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/assignment_cogar" TYPE PROGRAM FILES "/home/rubin/Assignment_Cogar/build/assignment_cogar/catkin_generated/installspace/test_order_verification.py")
endif()

