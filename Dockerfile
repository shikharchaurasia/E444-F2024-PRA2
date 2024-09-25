# Description: Dockerfile for PRA2
# Source: Referred to https://blog.logrocket.com/build-deploy-flask-app-using-docker/ and StackOverflow in order to help build this image.

# Use an official Python runtime as a parent image
FROM python:3.10-slim

# PRA2 will be the working directory in the container
WORKDIR /PRA2

# Copy the current directory contents into the container at /PRA2
COPY . /PRA2

# Install the necessary dependencies from requirements.txt
RUN pip install --no-cache-dir -r /PRA2/requirements.txt

# Expose the port that the app will run on
EXPOSE 5000

# Set environment variables to allow Flask to run properly
ENV FLASK_APP=hello.py
ENV FLASK_RUN_HOST=0.0.0.0

# Set the environment to development for debug messages
ENV FLASK_ENV=development

# Run the flask app when the container launches
CMD ["flask", "run"]
