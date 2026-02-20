# LLCS (STM32) health report, received via micro-ROS
builtin_interfaces/Time stamp

# Encoder readings
float32 pitch_encoder       # deg
float32 roll_encoder        # deg
float32 pump_encoder        # mm or counts

# GPS (from GPS module connected to STM32)
int32   gps_latitude        # degrees × 1e7
int32   gps_longitude       # degrees × 1e7

# LLCS status
uint8   llcs_state          # FSM state enum
uint8   error_flags         # bit-packed error flags
