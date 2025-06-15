#!/usr/bin/env bash

MAX_LENGTH=25

title="$(playerctl metadata --all-players --format '{{ artist }} - {{ title }}' 2>/dev/null || echo "")"

if [[ ${#title} -gt $MAX_LENGTH ]]; then
  title="${title:0:$MAX_LENGTH}..."
fi

playerctlstatus=$(playerctl status 2>/dev/null)

if [[ $playerctlstatus == "" ]]; then
  echo ""
elif [[ $playerctlstatus =~ "Playing" ]]; then
  echo "󰎇 $title %{A1:playerctl previous:}󰒮%{A} %{A1:playerctl pause:}󰏤%{A} %{A1:playerctl next:}󰒭%{A}"
else
  echo "󰎇 $title %{A1:playerctl previous:}󰒮%{A} %{A1:playerctl play:}▶️%{A} %{A1:playerctl next:}󰒭%{A}"
fi
