# Current mission target, published by hlcs_mission_node
builtin_interfaces/Time stamp

float32 target_depth        # m
float32 target_heading      # deg
uint8   mission_phase       # enum: IDLE=0, DIVE=1, GLIDE=2, SURFACE=3, ABORT=4
