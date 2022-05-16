#!/bin/bash

status=$(playerctl status 2>/dev/null)
code=$?

if [ $code -eq 0 ]
then
	CURR=$status
else
	exit 1
fi


if [ "$CURR" = "Stopped" ]
then
	exit 1
else
	exit 0
fi
