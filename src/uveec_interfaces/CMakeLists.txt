cmake_minimum_required(VERSION 3.8)
project(uveec_interfaces)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(sensor_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/SensorReport.msg"
  "msg/LlcsActuatorFeedback.msg"
  "msg/LlcsHealth.msg"
  "msg/ActuatorSetpoints.msg"
  "msg/Heartbeat.msg"
  "msg/StateEstimate.msg"
  "msg/MissionGoal.msg"
  DEPENDENCIES builtin_interfaces sensor_msgs
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  set(ament_cmake_copyright_FOUND TRUE)
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
