FROM python:3

WORKDIR /code

ENV FLASK_APP=flaskr
ENV FLASK_RUN_HOST=0.0.0.0

ADD . /code

#install dependencies
RUN pip install -r requirements.txt
RUN pip install .
RUN flask init-db

ENTRYPOINT ["flask", "run"]