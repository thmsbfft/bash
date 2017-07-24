#!/bin/sh
read -p "Interval (in seconds): " interval
read -p "Name: " name

mkdir "$HOME/Downloads/$name"
CAPTURE_PATH="$HOME/Downloads/$name/"

index=0
echo "Recording in "$CAPTURE_PATH
echo "Press CTRL+C to stop."

while sleep $interval
do    
  printf "."
  printf -v filename "%06d" $index
  screencapture -m "$CAPTURE_PATH$filename.png"
  ((index++))
done