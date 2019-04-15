FROM jfloff/alpine-python:2.7-slim
MAINTAINER bamischijf

WORKDIR /opt/autosub-master/
RUN apk update 
RUN apk update && apk add gcc python-dev musl-dev && wget https://github.com/BenjV/autosub/archive/master.zip && unzip master.zip -d /opt && rm master.zip && easy_install Cheetah && apk del gcc python-dev musl-dev


CMD ["python", "AutoSub.py"]
EXPOSE 9960