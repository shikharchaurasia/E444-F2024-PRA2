# Description: Dockerfile for PRA2
# Source: Referred to https://blog.logrocket.com/build-deploy-flask-app-using-docker/ in order to help build this image.

FROM python:3.10-slim

# PRA2 will be the working directory in the container
WORKDIR /PRA2

COPY ./requirements.txt /PRA2/requirements.txt

RUN pip install -r requirements.txt

COPY . /PRA2

EXPOSE 5000

ENV FLASK_APP=hello.py

ENV FLASK_RUN_HOST=0.0.0.0

# Run the flask app when the container launches
CMD ["flask", "run", "--host=0.0.0.0"]
