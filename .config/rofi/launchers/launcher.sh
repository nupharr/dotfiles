#!/usr/bin/env bash

dir="$HOME/.config/rofi/launchers"
theme='main'

## Run
rofi \
  -show drun \
  -theme ${dir}/${theme}.rasi
