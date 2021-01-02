#!/bin/bash
### BEGIN INIT INFO
# Provides: projecttest 
# Required-Start: $all 
# Required-Stop: 
# Default-Start: 2 3 4 5 
# Default-Stop: 
# Short-Description: test script to initializes on booting for final project
### END INIT INFO
# Run
output_name="myvideo.avi"
function action() {
        echo "==========================="
        echo "        MAIN MENU "
        echo "==========================="
        echo "1. Run"
	echo "2. Change Output Video Name"
	echo "3. Change Frame Rate"
        echo "4. Exit"
        read -p "choose 1-4: " choice
	if [ "$choice" -eq "$choice" 2>/dev/null ]; then
		if [ "$choice" -eq "1" ]; then
			echo "Running webcam....";
			sleep 1;
			echo "Press ctrl+c to stop recording";
			sleep 3;
			gcc ./run_webcam.c -o run_webcam && ./run_webcam $output_name
			action
		elif [ "$choice" -eq "2" ]; then
			read -p "Insert video output name + .avi format: "  output_name_input
			output_name=$output_name_input
			echo $output_name
			action
		elif [ "$choice" -eq "3" ]; then
			read -p "Insert video frame: " fps
			echo $fps
			gcc ./set_fps.c -o set_fps && ./set_fps $fps
			action
		elif [ "$choice" -eq "4" ]; then
			finish
		else
			echo "Please insert a number 1-3."
			action
		fi
	else
		echo "Insert a number!"
		action
	fi
}


function finish() {
        echo "Ending...."
        exit 0
}

case "$1" in
	start)
		echo "Initializes boot for v4l2"
		echo "Boot done. Starting...."
		action
		;;
	stop)
		finish
		;; esac
