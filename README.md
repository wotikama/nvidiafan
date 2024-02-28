#  Welcome
Bash script to set custom fan speeds depending on the temperature. I use arch btw

Dependencies:
```
# pacman -S --needed nvidia-settings bash xhost
```

# Installation:
clone repository
```
git clone https://github.com/wotikama/nvidiafan/
```
move nvidifan.sh to a safe place (I use ~/) and make it executable
```
chmod +x nvidiafan.sh
```

open hyprland.conf and add
```
exec-once = bash /PATH/TO/FILE/nvidiafan.sh
```
# Configuration:
nivm ,nano, vim into nvidiafan.sh 
### change password="j" for your sudo password
### X Means temperature in °C
--you can add as many intervals as you like and set also the fan speed.

The script will check gpu temp every ~10 seconds, to modify change
```
sleep seconds
```
