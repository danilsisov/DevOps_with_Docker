FROM ubuntu:20.04
WORKDIR /usr/app/src

COPY . .

RUN apt-get update -y && apt-get install sudo -y
RUN apt-get install git -y && apt-get install docker.io -y

RUN chmod +x script

ENTRYPOINT ["sh", "./script"]
