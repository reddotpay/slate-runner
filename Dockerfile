# Base image:
FROM ruby:latest
LABEL maintainer="daryl.n.w.k@gmail.com"

RUN apt-get update

RUN wget https://nodejs.org/dist/v8.11.3/node-v8.11.3-linux-x64.tar.xz
RUN tar -xvf node-v8.11.3-linux-x64.tar.xz

RUN export PATH=/node-v8.11.3-linux-x64/bin:$PATH

RUN /node-v8.11.3-linux-x64/bin/npm install -g widdershins
RUN /node-v8.11.3-linux-x64/bin/npm install -g mkdirp-promise

RUN apt-get install -y python-pip libpython-dev
RUN \
 curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" &&\
 unzip awscli-bundle.zip &&\
 ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws &&\
 rm -rfv awscli-bundle awscli-bundle.zip