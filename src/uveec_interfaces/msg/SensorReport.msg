# Aggregated RPi sensor readings used by the estimator, published by hlcs_sensor_node
# Frame: define IMU axis convention here (body frame X forward, Y right, Z down)
builtin_interfaces/Time stamp

# IMU
float32 gyroscope_x        # rad/s
float32 gyroscope_y
float32 gyroscope_z
float32 accelerometer_x    # m/s²
float32 accelerometer_y
float32 accelerometer_z
float32 magnetometer_x     # µT
float32 magnetometer_y
float32 magnetometer_z

# Environment
float32 barometer           # hPa
float32 temperature         # °C
float32 depth               # m (from MS5837)
bool leak_detected

# GPS
sensor_msgs/NavSatFix gps