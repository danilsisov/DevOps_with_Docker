FROM golang:1.16-alpine
EXPOSE 8080
ENV REQUEST_ORIGIN=http://localhost:5000

WORKDIR /usr/src/app
COPY . .

RUN go build && \
        adduser -S frontuser && \
        rm -rf /var/lib/apt/lists/*

USER frontuser

CMD ./server
