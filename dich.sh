#!/usr/bin/env bash
text="$(xsel -o)"
translate="$(wget -U "Mozilla/5.0" -qO - "http://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=es&dt=t&q=$(echo $text | sed "s/[\"'<>]//g")" | sed "s/,,,0]],,.*//g" | awk -F'"' '{print $2, $6}')"
echo "$translate" | xclip -selection clipboard
notify-send --icon=info "$text" "$translate"
