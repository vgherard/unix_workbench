#!/usr/bin/env bash
# File: guessinggame.sh

correct=$(ls -1q | wc -l) # Correct number of files in current directory
echo "How many files are there in the current directory?"
echo ""

function is_number {
    return $([[ $1 =~ [^0-9] ]])
}

while :; do
    echo "Enter your guess:"
    read -p "> " guess 
    if $(is_number $guess); then 
        echo -e "Enter a positive number!\n"
        continue
    elif [[ $guess -eq $correct ]]; then 
        break 
    elif [[ $guess -lt $correct ]]; then
        echo -e "Too few...\n"
    else 
        echo -e "Too much!\n"
    fi
done
    
echo -e "That's correct, BRAVO!\n"
