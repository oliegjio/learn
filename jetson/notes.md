This repository is for Jetson TX2.

### Installing System Environment:

Your host system must run Ubuntu 16 to use JetPack!

1. Connect host PC and Jetson with USB cable.
2. Power down Jetson by detaching power cable. Then power it on. Set Jetson in the Recovery mode: press "POWER" button on Jetson then hold "REC" button and while holding it make a short press on the "RST" button, whait for 2 serconds then release "REC" button.
1. Download JetPack from: [NVIDIA](https://developer.nvidia.com/embedded/jetpack).
2. Make downloaded file executable and run it.
3. Keep selecting appropriate options until Component Manager appears.
4. In the Component Manager choose to install everything except all "Install on Target" subcomponents.
5. Click "Next" and wait until installation finished.
10. Power down Jetson and detach (if attached) HDMI cable. Power it on, wait for around 5 seconds and then connect HDMI cable.
7. Connect to Wi-Fi and start SSH server.
8. Open the Component Manager and select install options to everything in "Install on Target" component.
9. Click "Next" and wait until installation finished.

### Building Jetson Inference:

1. Clone the repository from [GitHub](https://github.com/dusty-nv/jetson-inference).
1. Install CMake: `sudo apt-get install cmake`.
2. Enter the cloned directory and `cd` to `build` folder.
3. Execute: `cmake ../` and then execute `make -j4`.
