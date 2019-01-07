#!/usr/bin/env sh

while true; do
  BATTERY=$(acpi --battery | cut -d: -f2 | cut -d',' -f2 | tr --delete ' ' | tr '\n' ' ')
  TIME=$(date +'%F %T')
  echo "$BATTERY$TIME"
  sleep 1;
done
