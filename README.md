# rapunzel

# How to install our program (Camera Web Management on Linux OS):

1. clone this repository from inside VirtualBox
2. cd into cloned repository (in this case, "cd rapunzel"!)

# How to configure application to start on reboot

1. mv helloservice /etc/init.d/
2. systemctl start hello.service
3. systemctl daemon-reload
4. systemctl enable hello.service
5. reboot VirtualBox by running "shutdown -r 0"
6. reenter into VirtualBox and go back into the initial folder where your cloned repositories belong
7. systemctl status hello.service

# How to run our main program

1. turn on Oracle VM VirtualBox, click "Devices" on navigation bar, then hover over "Webcam" and make sure that Integrated Camera is turned on
2. install v4l2loopback-utils using `sudo apt install v4l2loopback-utils`
3. install Mencoder using `sudo apt-get install mencoder`
4. Make sure you're in the main folder where all the files belong (inside rapunzel folder!)
5. ./run.test.drive2.sh start

# How to run low-tier-b folder and device driver

1. From current folder (rapunzel), "cd low-tier-b"
2. compile file using `make`
3. insert custom module into kernel using `insmod zbf_devdr.ko`
4. run the device driver using `./test`
