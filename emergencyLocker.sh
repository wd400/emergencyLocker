#!/bin/bash
acpi_listen | while IFS= read -r line;
do
    if [ "$line" = "jack/headphone HEADPHONE plug" ]
    then
       notify-send "EmergencyLocker activated!"
    elif [ "$line" = "jack/headphone HEADPHONE unplug" ]
    then
       xdg-screensaver lock
    fi
done
