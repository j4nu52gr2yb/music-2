#!/bin/bash
PLAYLIST_URL="https://youtube.com/playlist?list=PLwdD2iJwn5yxTtxpXHrcd0t8K9fUdZFx6&si=RceYmLz1o59hhfCm"
mkdir -p assets &&
echo -n "[" > data.json &&
yt-dlp --flat-playlist --print "%(.{title,webpage_url})j," $PLAYLIST_URL | \
sed "$ s/},/}]/" >> data.json
mv data.json assets
