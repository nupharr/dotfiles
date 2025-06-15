#!/bin/bash

# Получаем текущий уровень яркости в процентах
BRIGHTNESS=$(brightnessctl get)
MAX_BRIGHTNESS=$(brightnessctl max)
PERCENT=$((BRIGHTNESS * 100 / MAX_BRIGHTNESS))

# Отправляем уведомление с прогресс-баром
dunstify -a "Brightness" -u low -r 9994 -i "12311" "🌞 Brightness: $PERCENT%" \
  -h int:value:"$PERCENT" \
  -h string:x-dunst-stack-tag:brightness
