FROM python:3.7-alpine

RUN apk add gcc g++ musl-dev libffi-dev libressl-dev unixodbc unixodbc-dev psqlodbc

ADD ./src /code

RUN cat /code/odbcinst.ini > /etc/odbcinst.ini

WORKDIR /code

RUN pip install -r dependences.txt 

CMD ["python", "WebService.py"]

