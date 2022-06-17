FROM alpine:3.16
WORKDIR /usr/src/app

COPY file.sh .

RUN chmod a+x file.sh && \
    apk add --no-cache curl && \
    adduser -D userr

USER userr

CMD ./file.sh
