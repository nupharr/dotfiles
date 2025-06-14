#!/usr/bin/env bash

MAX_LENGTH=25

# Получаем метаданные
artist="$(playerctl metadata --format '{{ artist }}' 2>/dev/null || echo "Unknown Artist")"
title="$(playerctl metadata --format '{{ title }}' 2>/dev/null || echo "Unknown Track")"
status="$(playerctl status 2>/dev/null || echo "")"

full_title="$artist - $title"

if [[ ${#full_title} -gt $MAX_LENGTH ]]; then
  display_title="${full_title:0:$MAX_LENGTH}..."
else
  display_title="$full_title"
fi

notification="$full_title"

if [[ -z "$status" ]]; then
  echo ""
elif [[ "$status" == "Playing" ]]; then
  echo "%{A1:notify-send -t 3000 -i 🎵 '$notification' &:}󰎇 $display_title%{A} %{A1:playerctl previous:}󰒮%{A} %{A1:playerctl pause:}󰏤%{A} %{A1:playerctl next:}󰒭%{A}"
else
  echo "%{A1:notify-send -t 3000 -i 🎵 '$notification' &:}󰎇 $display_title%{A} %{A1:playerctl previous:}󰒮%{A} %{A1:playerctl play:}▶️%{A} %{A1:playerctl next:}󰒭%{A}"
fi
