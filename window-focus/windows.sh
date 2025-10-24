#!/usr/bin/env bash
application=$(osascript -e 'tell application "System Events" to tell (first process whose frontmost is true) to return {name}')
title=$(osascript -e 'tell application "System Events" to tell (first process whose frontmost is true) to return {name of window 1}')
date=$(date +"%Y-%m-%dT%H:%M:%S")

if [ -n "$title" ]; then
  echo "$date,$application,$title" >> /Users/florian/Projects/aware/window-focus/windows.csv
fi
