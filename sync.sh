#!/bin/sh
cd /music
echo "Syncing..."
echo  "Syncing playlist " $SPOTIFY_PLAYLIST_URL
spotdl $SPOTIFY_PLAYLIST_URL --m3u spotdl