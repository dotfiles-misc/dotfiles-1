#umask
umask 077

#path
export PATH="$PATH:/home/adam/Scripts"

#bashrc
if [ -f ~/.bashrc ];then
	. ~/.bashrc
fi

#mpd
if [ -z "$DISPLAY" ] && [ $(tty) == /dev/tty1 ]; then
	mpd &
fi

#startx
if [ -z "$DISPLAY" ] && [ $(tty) == /dev/tty1 ]; then
	startx
fi
