#!/bin/env bash

# Function
setfan() {
  xhost si:localuser:root
  sudo /usr/bin/nvidia-settings -a "*:1[gpu:0]/GPUFanControlState=1" -a "*:1[fan-0]/GPUTargetFanSpeed=$1" -a "*:1[fan-1]/GPUTargetFanSpeed=$1"
  xhost -si:localuser:root
}

# Change 'setfan' parameter for speed % and 'X' intervals for temperature boundaries
for(( ; ; ))
do
X=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader)
if ((0<=X && X<=35))
then
  setfan 40
elif ((36<=X && X<=50))
then
  setfan 55
elif ((51<=X && X<=63))
then
  setfan 70
elif ((64<=X && X<=70))
then
  setfan 85
elif ((71<=X && X<=100))
then
  setfan 100
fi

sleep 10
done
