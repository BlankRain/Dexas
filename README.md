# Dexas
Use Docker to build  SAAS.. ~德克萨斯~
With JS~~!

docker build 
`
docker build Dexas  -t dexas:demo
`

In docker host server.
`apt install -y redis-server `

The change /etc/redis/redis.conf 

add listen host ip which the docker0 blinded.

Now ,

docker run
`
docker run -dit --env app=felicia --env redisHost=172.17.0.1 --hostname nicejob dexas:demo
`

the 172.17.0.1 is my docker0's IP

then you can get the container's ip by
`
redis-cli get nicejob
`

the nicejob is the container's hostname ~
