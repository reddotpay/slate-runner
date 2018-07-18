# Base image:
FROM ruby:2.3.1-onbuild
LABEL maintainer="daryl.n.w.k@gmail.com"

RUN apt-get update && apt-get install -y nodejs git && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN mkdir ~/slate && cd ~/slate
RUN git clone https://github.com/reddotpay/slate.git .

RUN npm install -g widdershins