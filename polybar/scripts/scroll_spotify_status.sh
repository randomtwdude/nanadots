#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l 35 \
        --delay 0.2 \
        --scroll-padding "  " \
        --match-command "`dirname $0`/get_spotify_status.sh --status" \
        --update-check true "`dirname $0`/get_spotify_status.sh" &

wait

