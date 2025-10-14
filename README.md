# link-kortex-controller
Prototype movement scripts for the Kinova Link6 using the Kortex3 API over Python

Use cases include: 
- Interfacing directly with a robotic arm via ethernet / web-app
- Sending joint-space or end-effector commands
- Running inverse kinematics (IK) and trajectory planning
- Operating pre-build robot controller commands

---

## 🔑 Key Features

- **Prebuilt Scripts**: Example scripts of to control the Link6.
- **Protobuf Serialization**: Uses protobuf for condensed serialization.

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