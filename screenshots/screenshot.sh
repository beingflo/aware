#!/usr/bin/env bash
date=$(date +"%Y-%m-%dT%H:%M:%S")
filename="screenshot_$date"

screencapture "/Users/florian/Projects/aware/screenshots/data/screenshot.png"

mean=$(magick identify -format "%[fx:mean]" "/Users/florian/Projects/aware/screenshots/data/screenshot.png")
if (( $(echo "$mean > 0.01" | bc -l) )); then
  /opt/homebrew/bin/magick -quality 80% "/Users/florian/Projects/aware/screenshots/data/screenshot.png" "/Users/florian/Projects/aware/screenshots/data/$filename.jpg"
fi

rm "/Users/florian/Projects/aware/screenshots/data/screenshot.png"