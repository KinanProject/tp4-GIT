#!/bin/bash

for i in $(seq 0 100); do
    echo "$i"
    if [ "$i" -eq 10 ]; then
        case "$LANG" in
            fr*) echo "au revoir user $(whoami)" ;;
            es*) echo "adios user $(whoami)" ;;
            *)   echo "goodbye user $(whoami)" ;;
        esac
    fi
    sleep 0.5
done
