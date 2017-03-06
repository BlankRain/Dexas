# This is a markshow dockerfile
FROM node:latest
MAINTAINER Blank Rain <http://github.com/blankrain>
RUN apt-get update
RUN apt-get install -y  curl net-tools netcat
RUN apt-get install -y git
RUN apt-get install -y git-core
RUN git clone https://github.com/blankrain/markshow
RUN git clone https://github.com/blankrain/markshowppts
WORKDIR markshow
RUN npm install --registry=https://registry.npm.taobao.org
RUN pwd
RUN git submodule update --init 
COPY  reportip.sh /reportip.sh
COPY  runapp.sh  /runapp.sh

RUN chmod +x /reportip.sh
CMD /reportip.sh
# EXPOSE 80
# docker build markshow .
# docker run -d -p 9527:9527 markshow
