#chosen=$(echo -e "[Cancel]\nLogout\nShutdown\nReboot\nSuspend\nHibernate\nHybrid-sleep\nSuspend-then-hibernate" | rofi -dmenu -i)
chosen=$(echo -e "lock\nlogout\nshutdown\nreboot\n[cancel]" | rofi -dmenu -location 3 -xoffset -25 -yoffset 91 -lines 7 -width 11 -p "poweroff" -i)
# Info about some states are available here:
# https://www.freedesktop.org/software/systemd/man/systemd-sleep.conf.html#Description

if [[ $chosen = "lock" ]]; then
	betterlockscreen -l dimblur
elif [[ $chosen = "logout" ]]; then
	openbox --exit | bspc quit | i3-msg exit
elif [[ $chosen = "shutdown" ]]; then
	 exec dbus-send --system --print-reply --dest="org.freedesktop.ConsoleKit" /org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Manager.Stop
elif [[ $chosen = "reboot" ]]; then
	 exec dbus-send --system --print-reply --dest="org.freedesktop.ConsoleKit" /org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Manager.Restart
fi
