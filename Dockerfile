FROM land007/docker-compose:latest

MAINTAINER Jia Yiqiu <yiqiujia@hotmail.com>

RUN apt-get update && apt-get install -y git
RUN cd /opt && git clone https://github.com/docker/docker-ce
RUN cd /opt/docker-ce && git checkout -b v18.06.3-ce
RUN cd /opt && git clone https://github.com/docker/docker-ce-packaging.git

CMD service docker start; bash

#cd components/packaging/deb && make  VERSION=18.01.0-ce-dev ENGINE_DIR=/home/latelee/docker/dev/docker-ce/components/engine CLI_DIR=/home/latelee/docker/dev/docker-ce/components/cli ubuntu-xenial

#docker build -t land007/docker-ce:latest .
#docker rm -f docker-ce; docker run -it --privileged --name docker-ce land007/docker-ce:latest bash
