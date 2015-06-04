FROM ubuntu:trusty-20150528
MAINTAINER aaron.lea@gmail.com

COPY assets/sources.list /etc/apt/sources.list

RUN echo 'APT::Install-Recommends 0;' >> /etc/apt/apt.conf.d/01norecommends \
 && echo 'APT::Install-Suggests 0;' >> /etc/apt/apt.conf.d/01norecommends \
 && apt-get update \
 && apt-get install -y vim.tiny wget sudo net-tools ca-certificates unzip \
 && wget https://github.com/tianon/gosu/releases/download/1.4/gosu-amd64 -O /usr/local/bin/gosu \
 && chmod +x /usr/local/bin/gosu \
 && rm -rf /var/lib/apt/lists/* # 20150604
