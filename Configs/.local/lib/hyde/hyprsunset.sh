#! /bin/env bash

max_temp=20000
min_temp=1000
multiplier=$(((max_temp - min_temp) / 100))

HYDE_RUNTIME_DIR=${HYDE_RUNTIME_DIR:-/tmp}
temp_file="$HYDE_RUNTIME_DIR/hyprsunset_temperature"

action=$1
step=${2:-5}

if [[ ! -f $temp_file ]]; then
    echo 6000 >"$temp_file"
fi

current_temp=$(cat "$temp_file")
case $action in
i)
    new_temp=$((current_temp + step * multiplier))
    if [[ $new_temp -gt $max_temp ]]; then
        new_temp=$max_temp
    fi
    ;;
d)
    new_temp=$((current_temp - step * multiplier))
    if [[ $new_temp -lt $min_temp ]]; then
        new_temp=$min_temp
    fi
    ;;
*)
    echo "Invalid action. Use 'i' to increase or 'd' to decrease."
    exit 1
    ;;
esac

echo $new_temp >"$temp_file"
if [[ -n $(pgrep hyprsunset) ]]; then
    pkill hyprsunset
fi
hyprsunset --temperature "$new_temp" &
disown
