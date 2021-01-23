FROM python:3.7-alpine

RUN apk update && apk add build-base

RUN mkdir /project
WORKDIR /project
COPY . .

RUN pip3 install -r requirements.txt


CMD ["python3", "main.py"]

