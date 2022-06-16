#build
FROM golang:1.16-alpine as build
EXPOSE 8080
ENV REQUEST_ORIGIN=http://localhost:5000

WORKDIR /usr/src/app
COPY . .

RUN go build

#main
FROM alpine:3.16 as main

COPY --from=build /usr/src/app/server /server

RUN rm -rf /var/lib/apt/lists/*

CMD ["/server"]
