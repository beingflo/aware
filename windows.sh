#!/usr/bin/env bash
application=$(osascript -e 'tell application "System Events" to tell (first process whose frontmost is true) to return {name, name of window 1}')
date=$(date +"%Y-%m-%dT%H:%M:%S")

echo "$date,$application" >> /Users/florian/Projects/aware/windows.csv
