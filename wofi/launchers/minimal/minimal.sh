#/usr/bin/env bash

dir="$HOME/.config/wofi/launchers/minimal"
theme='style-1'

# Run
wofi --show drun --allow-images=true --prompt "" --no-actions --hide-scroll --style ${dir}/${theme}.css

