# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(WARNING "Invoking generate_messages() without having added any message or service file before.
You should either add add_message_files() and/or add_service_files() calls or remove the invocation of generate_messages().")
message(STATUS "simple_navigation_goals: 0 messages, 0 services")

set(MSG_I_FLAGS "-Imove_base_msgs:/opt/ros/lunar/share/move_base_msgs/cmake/../msg;-Inav_msgs:/opt/ros/lunar/share/nav_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/lunar/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/lunar/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/lunar/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(simple_navigation_goals_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_cpp(simple_navigation_goals
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simple_navigation_goals
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(simple_navigation_goals_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(simple_navigation_goals_generate_messages simple_navigation_goals_generate_messages_cpp)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(simple_navigation_goals_gencpp)
add_dependencies(simple_navigation_goals_gencpp simple_navigation_goals_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simple_navigation_goals_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_eus(simple_navigation_goals
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simple_navigation_goals
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(simple_navigation_goals_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(simple_navigation_goals_generate_messages simple_navigation_goals_generate_messages_eus)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(simple_navigation_goals_geneus)
add_dependencies(simple_navigation_goals_geneus simple_navigation_goals_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simple_navigation_goals_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_lisp(simple_navigation_goals
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simple_navigation_goals
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(simple_navigation_goals_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(simple_navigation_goals_generate_messages simple_navigation_goals_generate_messages_lisp)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(simple_navigation_goals_genlisp)
add_dependencies(simple_navigation_goals_genlisp simple_navigation_goals_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simple_navigation_goals_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_nodejs(simple_navigation_goals
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simple_navigation_goals
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(simple_navigation_goals_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(simple_navigation_goals_generate_messages simple_navigation_goals_generate_messages_nodejs)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(simple_navigation_goals_gennodejs)
add_dependencies(simple_navigation_goals_gennodejs simple_navigation_goals_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simple_navigation_goals_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_py(simple_navigation_goals
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simple_navigation_goals
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(simple_navigation_goals_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(simple_navigation_goals_generate_messages simple_navigation_goals_generate_messages_py)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(simple_navigation_goals_genpy)
add_dependencies(simple_navigation_goals_genpy simple_navigation_goals_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simple_navigation_goals_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simple_navigation_goals)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simple_navigation_goals
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET move_base_msgs_generate_messages_cpp)
  add_dependencies(simple_navigation_goals_generate_messages_cpp move_base_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(simple_navigation_goals_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(simple_navigation_goals_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simple_navigation_goals)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simple_navigation_goals
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET move_base_msgs_generate_messages_eus)
  add_dependencies(simple_navigation_goals_generate_messages_eus move_base_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(simple_navigation_goals_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(simple_navigation_goals_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simple_navigation_goals)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simple_navigation_goals
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET move_base_msgs_generate_messages_lisp)
  add_dependencies(simple_navigation_goals_generate_messages_lisp move_base_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(simple_navigation_goals_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(simple_navigation_goals_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simple_navigation_goals)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simple_navigation_goals
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET move_base_msgs_generate_messages_nodejs)
  add_dependencies(simple_navigation_goals_generate_messages_nodejs move_base_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(simple_navigation_goals_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(simple_navigation_goals_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simple_navigation_goals)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simple_navigation_goals\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simple_navigation_goals
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET move_base_msgs_generate_messages_py)
  add_dependencies(simple_navigation_goals_generate_messages_py move_base_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(simple_navigation_goals_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(simple_navigation_goals_generate_messages_py geometry_msgs_generate_messages_py)
endif()
