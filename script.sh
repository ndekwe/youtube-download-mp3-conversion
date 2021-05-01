#!/bin/bash
URL=$1

# function: guide
guide () {
  echo "Youtube URL is required."
}

# function: download audio and convert to mp3
download_and_convert() {
  youtube-dl -f bestaudio $URL --extract-audio --audio-format mp3
}

for URL in $(cat links.txt); do
    download_and_convert
done

