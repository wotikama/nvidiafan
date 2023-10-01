#  Welcome

Im not an nvidia fan, by fan I mean -> https://i.imgur.com/REGlUue.gif. And if you dont want to idle at 60ºC and burn you house down you are in the right place.
Dependencies:
```
sudo pacman -S --needed nvidia-settings bash xhost
```
I use 
Archlinux

Hyprland

nvidia propietary drivers.

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
exec-once = bash /(PATH TO FILE)/nvidiafan.sh
```
# Configuration:
nivm ,nano, vim into nvidiafan.sh 
### change password="j" for your sudo password
### X means temperature 
Degrees are in ºC (Celsius) make sure thats the unit in which nvidia-smi outputs, else you will need to convert all the values.
you can add as many intervals as you like and set also the fan speed to create the most perfect, beatifully engineered curve to cool your gpu the cool way.

The script will check gpu temp every 10 seconds, to modify change
```
sleep seconds
```
