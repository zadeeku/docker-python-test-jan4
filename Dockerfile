FROM ubuntu:latest
#RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
  python \
  python-dev \
  python-pip \
  python-virtualenv && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR home/

# Start the tcp server.
#CMD python app.py
