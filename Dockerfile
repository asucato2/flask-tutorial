FROM python:3

ADD . /code

WORKDIR /code

#install dependencies
RUN pip install -r requirements.txt