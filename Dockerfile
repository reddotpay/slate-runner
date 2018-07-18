# Base image:
FROM darylnwk/docker-ruby-aws-nodejs:latest
LABEL maintainer="daryl.n.w.k@gmail.com"

RUN apt-get update

RUN npm install -g widdershins
RUN npm install -g mkdirp-promise