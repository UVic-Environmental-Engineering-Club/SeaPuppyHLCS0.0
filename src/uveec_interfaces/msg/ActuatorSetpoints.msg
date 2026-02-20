# Actuator setpoints sent from HLCS to LLCS (outer-loop outputs)
# Units:
#   pitch/roll: rad
#   pump_position_counts: encoder/native counts (positive direction defined in LLCS docs)
# pump: encoder/native counts (BRT27 draw-wire)
builtin_interfaces/Time stamp

float32 pitch_setpoint_rad # rad
float32 roll_setpoint_rad # rad
int32 pump_position_setpoint_counts # counts
