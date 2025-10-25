#!/usr/bin/env bash
date=$(date +"%Y-%m-%dT%H:%M:%S")
filename="screenshot_$date"

# Screenshot of primary display
if screencapture "/Users/florian/Projects/aware/screenshots/data/screenshot.png"; then
  mean=$(/opt/homebrew/bin/magick identify -format "%[fx:mean]" "/Users/florian/Projects/aware/screenshots/data/screenshot.png")
  if (( $(echo "$mean > 0.26" | bc -l) )); then
    /opt/homebrew/bin/magick -quality 80% "/Users/florian/Projects/aware/screenshots/data/screenshot.png" "/Users/florian/Projects/aware/screenshots/data/$filename.jpg"
  fi
  rm "/Users/florian/Projects/aware/screenshots/data/screenshot.png"
fi

# Screenshot of secondary display
if screencapture -D 2 "/Users/florian/Projects/aware/screenshots/data/screenshot-2.png"; then
  mean=$(/opt/homebrew/bin/magick identify -format "%[fx:mean]" "/Users/florian/Projects/aware/screenshots/data/screenshot-2.png")
  if (( $(echo "$mean > 0.26" | bc -l) )); then
    /opt/homebrew/bin/magick -quality 80% "/Users/florian/Projects/aware/screenshots/data/screenshot-2.png" "/Users/florian/Projects/aware/screenshots/data/$filename-2.jpg"
  fi
  rm "/Users/florian/Projects/aware/screenshots/data/screenshot-2.png"
fi