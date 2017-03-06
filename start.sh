sudo service docker restart
sudo service redis-server restart
docker run -dit --env app=felix --env redisHost=172.17.0.1 --hostname nicejob dexas:demo
docker run -dit --env app=felicia --env redisHost=172.17.0.1 --hostname goodboy dexas:demo


PATH=/usr/local/openresty/nginx/sbin:$PATH
export PATH

nginx -p `pwd`/ -c conf/nginx.conf
