grim -g "$(slurp)" - | wl-copy && wl-paste > ~/Pictures/Screenshots/Screenshot-$(date +%F_%T).png | notify-send "Screenshot of the region taken" -t 1000 # screenshot of the whole screen

play ~/.config/hypr/assets/sounds/camera-shutter.ogg
