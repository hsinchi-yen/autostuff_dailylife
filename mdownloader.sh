#!/bin/bash

# $1 url

youtube-dl -x --audio-format mp3 "${1}" -o "%(title)s.%(ext)s"

filestate=$?

if [[ $filestate -eq 0 ]]; then
  echo "File Download completed !!"
  sleep 1
  ls -lh --sort=time | head -2
  
else
  echo "File download failed !!"
fi
