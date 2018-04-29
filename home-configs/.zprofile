# .zprofile

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
    exec startx /home/dobbie/.xinitrc openbox
elif [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 2 ]; then
    exec startx /home/dobbie/.xinitrc i3
elif [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 3 ]; then
 	exec startx /home/dobbie/.xinitrc bspwm
 	elif [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 4 ]; then
 	exec startx /home/dobbie/.xinitrc dwm
elif [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 5 ]; then
exec startx /home/dobbie/.xinitrc fvwm
fi
