xrdb ~/.Xresources	
xset +fp /home/larry/.local/share/fonts
xset fp rehash
exec ck-launch-session dbus-launch --sh-syntax --exit-with-session bspwm
