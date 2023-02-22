#!/bin/bash

CACHEFILE=.epscache
if [ -f "$CACHEFILE" ]; then
    thisEpisode=$(cat $CACHEFILE)
    ls -v | grep -A1 "$thisEpisode" | tail -1 > $CACHEFILE
else
    touch $CACHEFILE
    ls -v | head -1 > $CACHEFILE
fi

nextEpisode=$(cat $CACHEFILE)
vlc "$nextEpisode"
