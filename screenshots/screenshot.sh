#!/usr/bin/env bash
date=$(date +"%Y-%m-%dT%H:%M:%S")
filename="screenshot_$date.png"

screencapture "/Users/florian/Projects/aware/screenshots/data/screenshot.png"
magick -quality 80% "/Users/florian/Projects/aware/screenshots/data/screenshot.png" "/Users/florian/Projects/aware/screenshots/data/$filename.jpg"
rm "/Users/florian/Projects/aware/screenshots/data/screenshot.png"