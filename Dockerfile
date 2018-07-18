# Base image:
FROM chybie/node-aws-cli:latest
LABEL maintainer="daryl.n.w.k@gmail.com"

RUN apt-get update
RUN apt-get install -y git ruby-full
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN npm install -g widdershins
RUN npm install -g mkdirp-promise