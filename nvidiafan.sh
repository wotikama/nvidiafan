#!/bin/bash -e

interval=5  # Time between each temperature check (in seconds)

fan_min=42  # Minimum fan speed
fan_max=60  # Maximum fan speed
temp_min=40 # Minimum temperature threshold
temp_max=90 # Maximum temperature threshold


setfan() {
  {
    xhost si:localuser:root
    # TODO: detect and handle multiple fans
    sudo /usr/bin/nvidia-settings -a "*:1[gpu:0]/GPUFanControlState=1" -a "*:1[fan-0]/GPUTargetFanSpeed=$1" -a "*:1[fan-1]/GPUTargetFanSpeed=$1"
    xhost -si:localuser:root
  } > /dev/null
}


for(( ; ; ))
do
  temp=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader)

  if (( $temp < $temp_min ))
  then
      fan_speed=$fan_min
  elif (( $temp > $temp_max ));
  then
      fan_speed=100
  else
      fan_speed=$(echo "$fan_min + (($temp - $temp_min) * ($fan_max - $fan_min)) / ($temp_max - $temp_min)" | bc)
  fi

  setfan $fan_speed

  sleep $interval
done
