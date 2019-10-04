#!/bin/bash
#  ____ _____ 
# |  _ \_   _|  Derek Taylor (DistroTube)
# | | | || |    http://www.youtube.com/c/DistroTube
# | |_| || |    http://www.gitlab.com/dwt1/ 
# |____/ |_| 
#
# Dmenu script for editing some of my more frequently edited config files.


declare -a options=("bspwm
xinit
bash
polybar
sxhkd
zsh
zathura
quit ")

choice=$(echo -e "${options[@]}" | dmenu -i -p 'Edit a config file: ')

	if [ "$choice" == ' quit ' ]; then
		echo "Program terminated."
	fi
	if [ "$choice" == 'bash' ]; then
        exec st -e vim $HOME/.bashrc
	fi
	if [ "$choice" == 'xinit' ]; then
        exec st -e vim $HOME/.xinitrc
	fi
	if [ "$choice" == 'bspwm' ]; then
        exec st -e vim /home/neel/.config/bspwm/bspwmrc
	fi
	if [ "$choice" == 'zathura' ]; then
        exec st -e vim $HOME/.config/zathura/zathurarc
	fi
	if [ "$choice" == 'polybar' ]; then
        exec st -e vim $HOME/.config/polybar/config
	fi
	if [ "$choice" == 'sxhkd' ]; then
        exec st -e vim $HOME/.config/sxhkd/sxhkdrc
	fi
	if [ "$choice" == 'zsh' ]; then
        exec st -e vim $HOME/.zshrc
	fi
