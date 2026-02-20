import bluerobotics_navigator as navigator
from .. import sensordepth
from uveec_interfaces.msg import SensorReport


class SensorManager:
  def __init__(self):

    self.initialize()
    navigator.init()

  def initialize(self):
    self.depthsensor = sensordepth.ms5837.MS5837_30BA(bus=6)
    if not self.depthsensor.init():
      print("Depth sensor not initialized")
      # exit(1)

  def getSensorReadingsMsg(self) -> SensorReport:
     # TODO: Add actual sensor reading instead of static values
    msg = SensorReport()
    msg.barometer = 1013.25
    msg.gyroscope_x = 0.1
    msg.gyroscope_y = -0.2
    msg.gyroscope_z = 0.05
    msg.leak_detected = False
    msg.temperature = 21.5
    msg.accelerometer_x = 0.01
    msg.accelerometer_y = 0.98
    msg.accelerometer_z = -0.05
    msg.magnetometer_x = 0.3
    msg.magnetometer_y = -0.1
    msg.magnetometer_z = 0.5
    msg.depth = self.depthsensor.depth()
    return msg
