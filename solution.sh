#!/usr/bin/env bash

read -r word
z_count=0
o_count=0

for ((i = 0; i < ${#word}; i++)); do
    character=${word:i:1}
    if [[ "$character" == "z" ]]; then
        ((z_count++))
    elif [[ "$character" == "o" ]]; then
        ((o_count++))
    fi
done

if (( o_count == 2 * z_count )); then
    printf 'Yes\n'
else
    printf 'No\n'
fi
