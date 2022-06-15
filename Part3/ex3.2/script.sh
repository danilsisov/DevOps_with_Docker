#!/bin/bash

git clone https://github.com/docker-hy/docker-hy.github.io

docker build . --tag ex3.2

docker login
docker tag ex3.2 danilsh/ex3.2
docker push danilsh/ex3.2








