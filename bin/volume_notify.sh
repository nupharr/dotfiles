#!/bin/bash

# Получение уровня громкости (только числовое значение)
VOL=$(amixer get Master | grep -oP '\d+?(?=%)' | head -1)

# Проверка на mute
MUTED=$(amixer get Master | grep -o '\[off\]' | head -1)

if [ "$MUTED" = "[off]" ]; then
  dunstify -i "" -a "Volume" -u low -r 9993 -i "12311" "🔇 Muted" -h string:x-dunst-stack-tag:volume
else
  dunstify -a "Volume" -u low -r 9993 -i "12311" "🔊 Volume: $VOL%" -h int:value:"$VOL" -h string:x-dunst-stack-tag:volume
fi
