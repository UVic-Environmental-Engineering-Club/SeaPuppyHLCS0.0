# State estimator output, published by hlcs_estimator_node to controllers/FSM
# depth: meters, positive down from surface
# angles: radians
builtin_interfaces/Time stamp

float32 depth_m               # meters, positive down from surface
float32 pitch_rad             # radians
float32 roll_rad              # radians
float32 heading_rad           # radians

float32 vel_x_m_s             # m/s (body frame)
float32 vel_z_m_s             # m/s (body frame)

# For waypoint nav (dead reckoning):
float32 position_x_m          # local frame (define ENU or NED)
float32 position_y_m          # local frame (define ENU or NED)
