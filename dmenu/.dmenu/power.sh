declare -a options=("shutdown
restart
suspend
quit")
. "${HOME}/.cache/wal/colors.sh"
choice=$(echo -e "${options[@]}" | dmenu  -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" -fn "Iosevka:12" -i -p  'Whatcha want to do ?')

	if [ "$choice" == ' quit ' ]; then
		echo "Program terminated."
	fi
	if [ "$choice" == 'shutdown' ]; then
	loginctl poweroff
	fi
	if [ "$choice" == 'restart' ]; then
	loginctl reboot
	fi
	if [ "$choice" == 'suspend' ]; then
	echo "XHC" >/proc/acpi/wakeup
	loginctl suspend
	fi


