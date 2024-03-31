#!/bin/bash
cat ./list.txt |  while read output
do
    ping -c 1 -W 1 "$output" > /dev/null
    if [ $? -eq 0 ]; then
    echo "Host $output is up"
    else
    echo "Host $output is down"
    fi
done
