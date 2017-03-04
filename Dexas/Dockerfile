FROM busybox

MAINTAINER blankrain
COPY  runapp.sh   /runapp.sh
COPY  reportip.sh /reportip.sh
RUN  chmod +x /reportip.sh /runapp.sh
CMD  sh /reportip.sh && sh /runapp.sh  && sh

