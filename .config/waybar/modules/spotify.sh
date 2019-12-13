#!/bin/sh

class=$(playerctl metadata --player=spotify --format '{{lc(status)}}')

info=$(playerctl metadata --player=spotify --format '{{artist}} - {{title}}')
if [[ ${#info} > 40 ]]; then
  info=$(echo $info | cut -c1-40)"..."
fi

if [[ $class == "playing" ]]; then
  text=" "$info" "
 else
  text=" "$info" "
fi

echo -e "{\"text\":\""$text"\", \"class\":\""$class"\"}"

