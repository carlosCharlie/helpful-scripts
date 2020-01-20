#!/bin/bash
# Ask the user for login details
xrandr
read -p 'Output Name. Default:HDMI1: ' monitor
read -p 'Scale (bigger screen, smaller scale). Default: 0.7: ' escala
echo "$monitor"
if [ "$monitor" = "" ] ;
then
	monitor="HDMI1"
fi;

if [ "$escala" = "" ] ; 
then
	escala="0.7"
fi;

echo "Duplicate display = $monitor with scale =  $escala x $escala" 
xrandr --output "$monitor" --mode 1920x1080 --scale "$escala"x"$escala" --same-as DP1

#Ejemplo
#xrandr --output HDMI1 --mode 1920x1080 --scale 0.7x0.7 --same-as DP1
