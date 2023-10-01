
### IMPORTANT: THIS IS FOR SYSTEMD

Im not an nvidia fan, it means https://i.imgur.com/REGlUue.gif. This works [tested only] on wayland with Hyprland. And if you dont want to idle at 60ºC and burn you house down you are in the right place.
Dependancies:
```
sudo pacman -S nvidia-settings
bash
xhost
```
Please use nvidia propietary drivers.

# Installation:
clone repository
```
git clone https://github.com/wotikama/nvidiafan/
```
move nvidiafan.service to /etc/systemd/system/
give and it privilages
```
# chmod 644 /etc/systemd/system/nvidiafan.service
$ systemctl enable nvidiafan.service]]]
```

nvim,nano, vim or whatever into nvidiafan.service
and set path under [Service]. Do not change shell as it may not work
```
[Unit]
Description=Nvidia fan control systemd service.

[Service]
Type=simple
ExecStart=/bin/bash /home/wotikama/nvidiafan.sh

[Install]
WantedBy=multi-user.target
```

# Configuration:
open nvidiafan.sh 
X means temperature, you can add as many intervals as you like and set also the speed to create the most perfect, beatifully engineered curve to cool your gpu in a cool way.

The script will check gpu temp every 10 seconds, to modify change
```
sleep 10
```
