FROM tensorflow/tensorflow:1.15.0

RUN apt-get update -qy \
      && apt-get install -qy python3-pip && apt-get clean

RUN mkdir /project
WORKDIR /project
COPY . .

RUN pip3 install -r requirements.txt

ENV TF_CPP_MIN_LOG_LEVEL=3

ENV write_debug="true"


CMD ["python3", "main.py"]