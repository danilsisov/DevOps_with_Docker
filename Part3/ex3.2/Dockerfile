FROM ubuntu:20.04
WORKDIR /usr/app/src

COPY . .

RUN apt-get update -y
RUN apt-get install git -y && apt-get install docker.io -y

RUN chmod +x script.sh

ENTRYPOINT /usr/src/app/script.sh; /bin/bash
