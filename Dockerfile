# Base image:
FROM starefossen/ruby-node:latest
LABEL maintainer="daryl.n.w.k@gmail.com"

RUN apt-get update
RUN apt-get install -y git
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN npm install -g widdershins
RUN npm install -g mkdirp-promise

RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py --user
RUN ~/.local/bin/pip --version
RUN ~/.local/bin/pip install awscli --upgrade --user
RUN ~/.local/bin/aws --version

ENV PATH $PATH:~/.local/bin