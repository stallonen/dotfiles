#!/bin/bash
#  ____ _____ 
# |  _ \_   _|  Derek Taylor (DistroTube)
# | | | || |    http://www.youtube.com/c/DistroTube
# | |_| || |    http://www.gitlab.com/dwt1/ 
# |____/ |_| 
#
# Dmenu script for editing some of my more frequently edited config files.

#this should work
declare -a options=("shutdown
restart
quit ")

choice=$(echo -e "${options[@]}" | dmen -i -p 'Edit a config file: ')

	if [ "$choice" == ' quit ' ]; then
		echo "Program terminated."
	fi
	if [ "$choice" == 'shutdown' ]; then
        exec st -e shutdown now
	fi
	if [ "$choice" == 'restart' ]; then
        exec st -e shutdown -r now
	fi
	
