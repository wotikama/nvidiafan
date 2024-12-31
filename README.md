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
edit nvidiafan.sh 
