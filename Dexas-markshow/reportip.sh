#!/bin/bash

echo -en "SET $(hostname) $(ifconfig eth0 | grep 'inet addr' | awk '{print $2}' | awk -F: '{print $2}') \r\n" |nc $redisHost 6379 &
echo "Run App"

node /markshow/bin/markshow start -p 80 -d /markshowppts -H 0.0.0.0
