FROM ubuntu:20.04
WORKDIR /usr/src/app
COPY file.sh .
RUN chmod +x file.sh
RUN apt-get update && apt install curl -y
CMD ./file.sh
