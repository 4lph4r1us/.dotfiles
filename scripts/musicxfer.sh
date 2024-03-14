#!/bin/bash

# Source directory where your music files are stored in your MPD library
source_dir="~/music"

# Destination directory on your phone
destination_dir="~/cell/Music/"

# Name of your MPD playlist
playlist_name="list"

# Get a list of all songs in the playlist
mpc playlist "$playlist_name" | while IFS= read -r song; do
  song_path="${source_dir}${song}"
  if [ -e "$song_path" ]; then
    destination="$destination_dir$(basename "$song")"
    cp "$song_path" "$destination"
    echo "Copied: $song"
  else
    echo "File not found: $song"
  fi
done
