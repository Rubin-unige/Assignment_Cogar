# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sushi_bot: 4 messages, 2 services")

set(MSG_I_FLAGS "-Isushi_bot:/home/rubin/Assignment_Cogar/src/assignment_cogar/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sushi_bot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/Order.msg" NAME_WE)
add_custom_target(_sushi_bot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sushi_bot" "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/Order.msg" ""
)

get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/RobotStatus.msg" NAME_WE)
add_custom_target(_sushi_bot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sushi_bot" "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/RobotStatus.msg" ""
)

get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/OrderStatus.msg" NAME_WE)
add_custom_target(_sushi_bot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sushi_bot" "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/OrderStatus.msg" ""
)

get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/TableStatus.msg" NAME_WE)
add_custom_target(_sushi_bot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sushi_bot" "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/TableStatus.msg" ""
)

get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/VerifyOrder.srv" NAME_WE)
add_custom_target(_sushi_bot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sushi_bot" "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/VerifyOrder.srv" ""
)

get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/Microphone.srv" NAME_WE)
add_custom_target(_sushi_bot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sushi_bot" "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/Microphone.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/Order.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sushi_bot
)
_generate_msg_cpp(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sushi_bot
)
_generate_msg_cpp(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/OrderStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sushi_bot
)
_generate_msg_cpp(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/TableStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sushi_bot
)

### Generating Services
_generate_srv_cpp(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/VerifyOrder.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sushi_bot
)
_generate_srv_cpp(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/Microphone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sushi_bot
)

### Generating Module File
_generate_module_cpp(sushi_bot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sushi_bot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sushi_bot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sushi_bot_generate_messages sushi_bot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/Order.msg" NAME_WE)
add_dependencies(sushi_bot_generate_messages_cpp _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/RobotStatus.msg" NAME_WE)
add_dependencies(sushi_bot_generate_messages_cpp _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/OrderStatus.msg" NAME_WE)
add_dependencies(sushi_bot_generate_messages_cpp _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/TableStatus.msg" NAME_WE)
add_dependencies(sushi_bot_generate_messages_cpp _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/VerifyOrder.srv" NAME_WE)
add_dependencies(sushi_bot_generate_messages_cpp _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/Microphone.srv" NAME_WE)
add_dependencies(sushi_bot_generate_messages_cpp _sushi_bot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sushi_bot_gencpp)
add_dependencies(sushi_bot_gencpp sushi_bot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sushi_bot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/Order.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sushi_bot
)
_generate_msg_eus(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sushi_bot
)
_generate_msg_eus(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/OrderStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sushi_bot
)
_generate_msg_eus(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/TableStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sushi_bot
)

### Generating Services
_generate_srv_eus(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/VerifyOrder.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sushi_bot
)
_generate_srv_eus(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/Microphone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sushi_bot
)

### Generating Module File
_generate_module_eus(sushi_bot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sushi_bot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sushi_bot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sushi_bot_generate_messages sushi_bot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/Order.msg" NAME_WE)
add_dependencies(sushi_bot_generate_messages_eus _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/RobotStatus.msg" NAME_WE)
add_dependencies(sushi_bot_generate_messages_eus _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/OrderStatus.msg" NAME_WE)
add_dependencies(sushi_bot_generate_messages_eus _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/TableStatus.msg" NAME_WE)
add_dependencies(sushi_bot_generate_messages_eus _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/VerifyOrder.srv" NAME_WE)
add_dependencies(sushi_bot_generate_messages_eus _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/Microphone.srv" NAME_WE)
add_dependencies(sushi_bot_generate_messages_eus _sushi_bot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sushi_bot_geneus)
add_dependencies(sushi_bot_geneus sushi_bot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sushi_bot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/Order.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sushi_bot
)
_generate_msg_lisp(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sushi_bot
)
_generate_msg_lisp(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/OrderStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sushi_bot
)
_generate_msg_lisp(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/TableStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sushi_bot
)

### Generating Services
_generate_srv_lisp(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/VerifyOrder.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sushi_bot
)
_generate_srv_lisp(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/Microphone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sushi_bot
)

### Generating Module File
_generate_module_lisp(sushi_bot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sushi_bot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sushi_bot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sushi_bot_generate_messages sushi_bot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/Order.msg" NAME_WE)
add_dependencies(sushi_bot_generate_messages_lisp _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/RobotStatus.msg" NAME_WE)
add_dependencies(sushi_bot_generate_messages_lisp _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/OrderStatus.msg" NAME_WE)
add_dependencies(sushi_bot_generate_messages_lisp _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/TableStatus.msg" NAME_WE)
add_dependencies(sushi_bot_generate_messages_lisp _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/VerifyOrder.srv" NAME_WE)
add_dependencies(sushi_bot_generate_messages_lisp _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/Microphone.srv" NAME_WE)
add_dependencies(sushi_bot_generate_messages_lisp _sushi_bot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sushi_bot_genlisp)
add_dependencies(sushi_bot_genlisp sushi_bot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sushi_bot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/Order.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sushi_bot
)
_generate_msg_nodejs(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sushi_bot
)
_generate_msg_nodejs(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/OrderStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sushi_bot
)
_generate_msg_nodejs(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/TableStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sushi_bot
)

### Generating Services
_generate_srv_nodejs(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/VerifyOrder.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sushi_bot
)
_generate_srv_nodejs(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/Microphone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sushi_bot
)

### Generating Module File
_generate_module_nodejs(sushi_bot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sushi_bot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sushi_bot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sushi_bot_generate_messages sushi_bot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/Order.msg" NAME_WE)
add_dependencies(sushi_bot_generate_messages_nodejs _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/RobotStatus.msg" NAME_WE)
add_dependencies(sushi_bot_generate_messages_nodejs _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/OrderStatus.msg" NAME_WE)
add_dependencies(sushi_bot_generate_messages_nodejs _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/TableStatus.msg" NAME_WE)
add_dependencies(sushi_bot_generate_messages_nodejs _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/VerifyOrder.srv" NAME_WE)
add_dependencies(sushi_bot_generate_messages_nodejs _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/Microphone.srv" NAME_WE)
add_dependencies(sushi_bot_generate_messages_nodejs _sushi_bot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sushi_bot_gennodejs)
add_dependencies(sushi_bot_gennodejs sushi_bot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sushi_bot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/Order.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sushi_bot
)
_generate_msg_py(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sushi_bot
)
_generate_msg_py(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/OrderStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sushi_bot
)
_generate_msg_py(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/TableStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sushi_bot
)

### Generating Services
_generate_srv_py(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/VerifyOrder.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sushi_bot
)
_generate_srv_py(sushi_bot
  "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/Microphone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sushi_bot
)

### Generating Module File
_generate_module_py(sushi_bot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sushi_bot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sushi_bot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sushi_bot_generate_messages sushi_bot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/Order.msg" NAME_WE)
add_dependencies(sushi_bot_generate_messages_py _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/RobotStatus.msg" NAME_WE)
add_dependencies(sushi_bot_generate_messages_py _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/OrderStatus.msg" NAME_WE)
add_dependencies(sushi_bot_generate_messages_py _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/msg/TableStatus.msg" NAME_WE)
add_dependencies(sushi_bot_generate_messages_py _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/VerifyOrder.srv" NAME_WE)
add_dependencies(sushi_bot_generate_messages_py _sushi_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rubin/Assignment_Cogar/src/assignment_cogar/srv/Microphone.srv" NAME_WE)
add_dependencies(sushi_bot_generate_messages_py _sushi_bot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sushi_bot_genpy)
add_dependencies(sushi_bot_genpy sushi_bot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sushi_bot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sushi_bot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sushi_bot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sushi_bot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sushi_bot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sushi_bot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sushi_bot_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sushi_bot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sushi_bot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sushi_bot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sushi_bot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sushi_bot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sushi_bot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sushi_bot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sushi_bot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sushi_bot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sushi_bot_generate_messages_py std_msgs_generate_messages_py)
endif()
