# Current mission target, published by hlcs_mission_node
# mission_phase enum:
#   0 = IDLE
#   1 = DIVE
#   2 = GLIDE
#   3 = SURFACE
#   4 = ABORT
builtin_interfaces/Time stamp

float32  target_depth_m       # m
float32 target_heading_rad    # rad
uint8   mission_phase       # enum: IDLE=0, DIVE=1, GLIDE=2, SURFACE=3, ABORT=4
uint32  goal_id             # unique identifier for this goal
