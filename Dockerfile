FROM land007/docker_debian:latest

MAINTAINER Jia Yiqiu <yiqiujia@hotmail.com>

RUN apt-get update && apt-get install -y git
RUN cd /opt && git clone https://github.com/docker/docker-ce
RUN cd /opt/docker-ce && git checkout -b v18.06.3-ce
RUN cd /opt && git clone https://github.com/docker/docker-ce-packaging.git

#docker build -t land007/docker-ce:latest .
#docker run -it --name docker-ce land007/docker-ce:latest bash
