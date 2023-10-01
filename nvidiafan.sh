#!/bin/env bash
# Change "j" for your sudo password
for(( ; ; ))
do
X=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader)
if ((0<=X && X<=35))
then
     xhost si:localuser:root  
     echo j | sudo -S /usr/bin/nvidia-settings -a *:1[gpu:0]/GPUFanControlState=1 -a *:    1[fan-0]/GPUTargetFanSpeed=40                   
     xhost -si:localuser:root
elif ((36<=X && X<=50))
then
     xhost si:localuser:root 
     echo j | sudo -S /usr/bin/nvidia-settings -a *:1[gpu:0]/GPUFanControlState=1 -a *:1[fan-0]/GPUTargetFanSpeed=50 
     xhost -si:localuser:root
elif ((51<=X && X<=65))
then
    xhost si:localuser:root 
    echo j | sudo -S /usr/bin/nvidia-settings -a *:1[gpu:0]/GPUFanControlState=1 -a *:1[fan-0]/GPUTargetFanSpeed=70 
    xhost -si:localuser:root
elif ((66<=X && X<=70))
then
    xhost si:localuser:root 
    echo j | sudo -S /usr/bin/nvidia-settings -a *:1[gpu:0]/GPUFanControlState=1 -a *:1[fan-0]/GPUTargetFanSpeed=80 
    xhost -si:localuser:root
elif ((71<=X && X<=100))
then
    xhost si:localuser:root 
    echo j | sudo -S /usr/bin/nvidia-settings -a *:1[gpu:0]/GPUFanControlState=1 -a *:1[fan-0]/GPUTargetFanSpeed=100 
    xhost -si:localuser:root
fi 

sleep 10

done
