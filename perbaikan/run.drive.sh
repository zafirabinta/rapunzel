#!/bin/bash

FILENAME=$1
FPS=$2

echo "/home/user/set_fps $FPS"
echo "/home/user/run_webcam $FILENAME"
gcc /home/user/set_fps.c -o set_fps && /home/user/set_fps $FPS
gcc /home/user/run_webcam.c -o run_webcam && /home/user/run_webcam $FILENAME
