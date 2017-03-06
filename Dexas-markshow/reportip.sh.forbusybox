echo -en "SET $(hostname) $(ifconfig eth0 | grep 'inet addr' | awk '{print $2}' | awk -F: '{print $2}') \r\n" |nc $redisHost 6379
