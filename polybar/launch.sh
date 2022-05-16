#!/usr/bin/env bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

sleep 1;

polybar -q workspaceA >>/tmp/polybarA.log 2>&1 &
polybar -q monitorB >>/tmp/polybarB.log 2>&1 &
polybar -q music >>/tmp/polybarC.log 2>&1 &
polybar -q internet1F >>/tmp/polybarD.log 2>&1 &
polybar -q internet2G >>/tmp/polybarE.log 2>&1 &
polybar -q audioH >>/tmp/polybarF.log 2>&1 &
polybar -q datetimeI >>/tmp/polybarG.log 2>&1 &
