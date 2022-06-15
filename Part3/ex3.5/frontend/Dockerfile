FROM node:16-alpine
EXPOSE 5000
ENV REACT_APP_BACKEND_URL=http://localhost:8080

WORKDIR /usr/src/app
COPY . .

RUN npm install && \
        npm run build && \
        npm install -g serve && \
        rm -rf /var/lib/apt/lists/* && \
        adduser -S appuser

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
