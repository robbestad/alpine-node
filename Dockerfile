FROM docker.nrk.no/linuxadmin/baseimage:71

MAINTAINER Torstein Bjørnstad

# Add nodejs 4.x repo
RUN curl -sL https://deb.nodesource.com/setup_4.x | /bin/bash -
RUN echo deb https://deb.nodesource.com/node_4.x trusty main > /etc/apt/sources.list.d/nodesource.list
RUN echo deb-src https://deb.nodesource.com/node_4.x trusty main >> /etc/apt/sources.list.d/nodesource.list
RUN echo deb http://no.archive.ubuntu.com/ubuntu trusty main >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y python git nodejs
RUN npm install -g npm@latest-2
RUN echo Installed NodeJS `node -v` with NPM v `npm -v`
