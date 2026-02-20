# Actuator feedback from LLCS (measured actuator states)
# Units match setpoints:
#   angles: rad
#   pump_position_counts: counts
builtin_interfaces/Time stamp

float32 pitch_position_rad
float32 roll_position_rad
int32 pump_position_counts

# control/debug:
float32 pitch_velocity_rad_s
float32 roll_velocity_rad_s
int32 pump_velocity_counts_s