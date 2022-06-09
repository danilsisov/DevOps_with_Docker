FROM golang:1.16
EXPOSE 8080

WORKDIR /usr/src/app
COPY . .

RUN apt-get update
RUN go build

CMD ./server
