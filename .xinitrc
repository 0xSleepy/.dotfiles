nvidia-settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=35"
xrdb ~/.Xresources
exec dbus-launch i3
