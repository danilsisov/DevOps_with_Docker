FROM ubuntu:20.04

WORKDIR /usr/src/app
COPY calculator.py / calculator.py ./

RUN apt-get update && apt-get update -y
RUN apt-get install -y python

CMD ["python", "calculator.py"]

