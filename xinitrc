# config 
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.fontconfig"

# X configuration 
xrdb -merge $HOME/.Xresources

# turn off the fucking bell
xset b 0

# wallpaper 
feh --bg-scale $HOME/piano.jpg

# set the cursor
xsetroot -cursor_name left_ptr

# screensaver
#xscreensaver -no-splash &

# infinality 
#. ~/script/infinality-settings.sh

# urxvt server 
urxvtd -q -f -o &

# i3wm 
exec i3 -c $HOME/.config/i3/config
