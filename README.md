# link-kortex-controller
Prototype movement scripts and virtualized containers for the Kinova Link6 using the Kortex3 API over Python

Use cases include: 
- Interfacing directly with a robotic arm via ethernet / web-app / ros2
- Sending joint-space or end-effector commands
- Running inverse kinematics (IK) and trajectory planning
- Operating pre-build robot controller commands

---

## 🔑 Key Features

- **Automated Docker Containers**: Use the ROS2 api to control the Link6 quickly using Dockerized environments
- **Prebuilt Scripts**: Example scripts of to control the Link6.
- **Protobuf Serialization**: Uses protobuf for condensed serialization.o

---

## ROS2 Docker: Quick Start

To use and prototype with the **ros2** API quickly, this repository provides a quickly bootable Docker container to use.

System Prerequisites:
- `amd64` architecture system
- `Docker` Engine installed
- `git-lfs`

### 1. Clone the repository

The repository includes `LFS` files and recursive repos that need to be cloned. 

```bash
git clone --recurse-submodules https://github.com/Alb33rt/link-kortex-controller.git 
```

### 2. Pull Large File Storage Files

There are `git-lfs` files located in the submodule `ros2_kortex3`. Pull them using the following commands.

```bash
cd link-kortex-controller/ros2_ws/src/ros2_kortex3
git lfs pull
```

### 3. Build the Docker Container with Tag

```bash
cd /link_kortex_controller
docker build -t ros2_kortex:latest -f Docker/ros-drivers/Dockerfile.amd64 .
```

You're ready to go and use the container!

Example startup:
```bash
docker run -it ros2_kortex:latest --network host 

# The container starts bash as entrypoint automatically

> root@a2fa3cfa9756:/workspace/ros2_ws#
```

---

## 📁 Important Scripts

### 1. `basic_connection.py` 
This script serves as a basis to set up connection with the Link6. 
Copy and paste whenever using the Link6.

### 2. `basic_end_manipulator.py`
Opens and closes the end manipulator using basic Protobuf, and send them over the `RouterClient`.
This script is essential for trajectory generation and motion planning.

### 3. `basic_waypoint_control.py`
Controls the Link6 to move specific joints using the onboard controls scheme.
This script is essential for trajectory generation and motion planning.

### 4. `main.py`
Entry point for running the robotic arm control system.  
You can choose between which script to execute specifically via command-line arguments, e.g.: