#BUILD
FROM node:16-alpine as build

WORKDIR /usr/src/app
COPY . .

RUN npm install && \
        npm run build


#MAIN
FROM node:16-alpine as main
EXPOSE 5000
ENV REACT_APP_BACKEND_URL=http://localhost:8080

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/build /
RUN npm install -g serve && \
        adduser -D userr && \
        rm -rf /var/lib/apt/lists/*

USER userr

CMD ["serve", "-s", "-l", "5000", "build"]

