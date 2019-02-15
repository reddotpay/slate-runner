# Base image:
FROM darylnwk/ruby-aws-nodejs:latest
LABEL maintainer="daryl.n.w.k@gmail.com"

RUN apt-get update

RUN npm install -g widdershins
RUN npm install -g mkdirp-promise

RUN ls -la

RUN git clone https://github.com/reddotpay/slate.git
RUN cd /slate && bundle install && cd /