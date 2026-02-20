# LLCS (STM32) health report + safety status (control plane), received via micro-ROS
# llcs_mode enum (LLCS internal mode, NOT HLCS FSM):
#   0 = BOOT
#   1 = STANDBY
#   2 = ACTIVE
#   3 = SAFE
#   4 = EMERGENCY
#
# error_flags bit layout (uint32):
#   bit 0  = LEAK_DETECTED
#   bit 1  = OVER_DEPTH
#   bit 2  = OVER_PITCH
#   bit 3  = OVER_ROLL
#   bit 4  = ACTUATOR_PITCH_FAULT
#   bit 5  = ACTUATOR_ROLL_FAULT
#   bit 6  = ACTUATOR_PUMP_FAULT
#   bit 7  = ENCODER_PITCH_FAULT
#   bit 8  = ENCODER_ROLL_FAULT
#   bit 9  = ENCODER_PUMP_FAULT
#   bit 10 = UART_TRANSPORT_FAULT
#   bit 11 = MICROROS_SESSION_FAULT
#   bit 12 = COMMAND_TIMEOUT
#   bit 13 = BROWNOUT_RESET_DETECTED
#   bit 14 = WATCHDOG_RESET_DETECTED
#   bits 15-31 reserved
builtin_interfaces/Time stamp

# LLCS safety-critical
uint32 last_setpoint_age_ms

# LLCS status
uint8 llcs_mode             # FSM state enum
uint8 error_flags           # bit-packed error flags

# Power monitoring
float32 rail_24v
float32 rail_11v

# board temp sensor
float32 llcs_temp_c 