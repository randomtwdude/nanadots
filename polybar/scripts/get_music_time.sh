#!/bin/bash

PLAYERCTL_STATUS=$(playerctl status 2>/dev/null)
EXIT_CODE=$?

if [ $EXIT_CODE -eq 0 ]
then
	STATUS=$PLAYERCTL_STATUS
else
	STATUS="Not running"
fi


if [ "$STATUS" = "Not running" ] || [ "$STATUS" = "Stopped" ]
then
	echo "   "
else
	echo $(playerctl metadata --format '{{ duration(position) }}/{{ duration(mpris:length) }}')
fi
