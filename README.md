# SeaPuppyHLCS0.0
[<img width="845" alt="image" src="https://github.com/user-attachments/assets/c133ec6d-4192-4996-b165-c93da4e6e061" />](https://drive.google.com/file/d/17A4xHmxJECbzF3QnbNP8-fiaN2Lrw1Iy/view?usp=drive_link)

## Description
This is a High Level Control System for UVEEC.

# Requirements for deployment
* Raspberry Pi 4 model B
* STM32 with micro-ROS running

# Requirements for programming
* Raspberry Pi 4 model B
* STM32 with micro-ROS running
* Windows laptop (optionally with RJ45 ethernet port)
* Ethernet cable (optional)
* Internet (non-university wifi)

# Instructions to deploy
1. Flash the code (Follow the instruction here to flash the code) to STM32 from Cube IDE.
2. Turn on the Raspberry Pi.
3. Connect the STM32 to Raspberry Pi using USB-C data cable (warning: some USB-C cables do not transfer data).

# Instruction to program
1. Flash the code (Follow the instruction here to flash the code) to STM32 from Cube IDE. Do NOT connect STM32 yet.
2. Turn on the Raspberry Pi.
3. Connect Raspberry Pi to your computer using ethernet cable. If your computer does not have a RJ45 (ethernet) port on your computer or the Raspberry Pi and STM32 are already in the glider, follow step 4 - .
4. (wifi instruction. If you've done step 3, go to step 9) Connect display and keyboard to the Raspberry Pi. We need to connect Raspberry Pi and your computer to be on the same wifi network (University wifi does not work due to firewall).
5. `nmcli d wifi list` to show the list of wifi on Raspberry Pi.
6. `nmcli device wifi connect (your wifi name) password (your wifi password)` to connect to the wifi you are going to use. (University wifi does not work).
7. `nmcli d wifi list` to check if the Raspberry Pi has been connected to the wifi. If there is a dot next to the wifi, you are good to go.
8. On your computer, open your preferred browser.
9. If you've followed wifi instruction, `http://blueos-wifi.local/` to connect to BlueOS web interface. If you skipped step 5 - 8, `http://blueos.local/` to connect to BlueOS web interface.
<img width="1265" alt="image" src="https://github.com/user-attachments/assets/e3e8ef93-24d9-40e0-a43c-1e5612de612d" /> <br>
10. At this point, this is the screen you should see. Otherwise, something went wrong. <br>
<img width="1265" alt="image" src="https://github.com/user-attachments/assets/aa2362d0-e53d-4705-8870-a42e33e313cf" /> <br>
11. Open ROS2 extension on the left. <br>
12. `source /opt/ros/humble/setup.bash` <br>
13. `sudo apt update && rosdep update` Update dependencies using rosdep <br>
14. `rosdep install --from-paths src --ignore-src -y` <br>
15. `sudo apt-get install python3-pip` <br>
16. `colcon build` If there is an error that says "The current CMakeCache.txt directory ... is different than th directory ... where CMakeCache.txt was created. This may result in binaries being created in the wrong place...", remove the build directory by `rm -rf build` and build again. <br>
17. `source install/local_setup.bash` <br>
18. `dmesg -w` to check the name of the port on Raspberry Pi for STM32. <br>
19. Connect STM32 to Raspberry Pi using USB-C data cable. <br>
<img width="394" alt="image" src="https://github.com/user-attachments/assets/8045d319-c8a4-451f-9b04-6e47c2763a02" /> <br>
20. Name of the port should appear. In this case, `ttyACM0`. <br>
<img width="629" alt="image" src="https://github.com/user-attachments/assets/39d58619-f855-4bec-b4ec-c49ddb18ab29" /> <br>
21. `ros2 run micro_ros_agent micro_ros_agent serial --dev (location of your port)` In this case it is `ros2 run micro_ros_agent micro_ros_agent serial --dev /dev/ttyACM0` <br>
22. `ros2 topic list` to list topics <br>
23. `ros2 topic echo (topic publisher name)` to echo to the published topic. In this case `ros2 topic echo cubemx_publisher`. You should be able to see the data being published. <br>
