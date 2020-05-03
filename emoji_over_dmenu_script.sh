#!/bin/sh 
EMOJI_PATH=$HOME/.local/share/applications/emoji_over_dmenu/
CHOICE=$(awk '{print $1}' < $EMOJI_PATH/emoji_file | dmenu -l 10 ) 
awk -v choice="$CHOICE" '$1==choice{printf $2}' < $EMOJI_PATH/emoji_file | xclip -sel clip
