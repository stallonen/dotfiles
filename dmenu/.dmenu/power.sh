declare -a options=("shutdown
restart
quit")
. "${HOME}/.cache/wal/colors.sh"
choice=$(echo -e "${options[@]}" | dmenu  -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" -fn "Iosevka:12" -i -p  'Whatcha want to do ?')

	if [ "$choice" == ' quit ' ]; then
		echo "Program terminated."
	fi
	if [ "$choice" == 'shutdown' ]; then
	exec dbus-send --system --print-reply --dest="org.freedesktop.ConsoleKit" /org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Manager.Stop
	fi
	if [ "$choice" == 'restart' ]; then
        exec dbus-send --system --print-reply --dest="org.freedesktop.ConsoleKit" /org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Manager.Restart
	fi

