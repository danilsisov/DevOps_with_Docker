FROM golang:1.16
EXPOSE 8080
ENV REQUEST_ORIGIN=http://localhost:5000

WORKDIR /usr/src/app
COPY . .

RUN apt-get update
RUN go build

RUN useradd -m frontuser
USER frontuser

CMD ./server
