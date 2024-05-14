#  Welcome
Nvidia fan control for wayland. I use arch btw. 

edit: using now dwl with no problems

Dependencies:
```
# pacman -S --needed nvidia-settings bash xorg-xhost
```

# Allow sudo nopasswd (WON'T WORK OTHERWISE!)
As suggested -to not store sudo passwordd in plain text-  add the following at the end of sudoers:
```
user ALL=(ALL) NOPASSWD: /usr/bin/nvidia-settings *
```
# Installation:
clone repository
```
$ git clone https://github.com/wotikama/nvidiafan/
```
move nvidifan.sh to a safe place (I use ~/) and make it executable
```
$ chmod +x nvidiafan.sh
```
-launch on startup. Example:
open hyprland.conf and add
```
exec-once = bash /PATH/TO/FILE/nvidiafan.sh
```
# Configuration:
nivm ,nano, vim into nvidiafan.sh 
### X Means temperature in °C
--you can add as many intervals as you like and set also the fan speed.

The script will check gpu temp every ~10 seconds, to modify change
```
sleep seconds
```
