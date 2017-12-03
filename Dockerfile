FROM debian:stretch-slim

MAINTAINER Kaycon "kaycon1@web.de"

ENV VERSION 3.0.13.8
ENV QUERY_PW xxxxxxxxxx

RUN apt-get update
RUN apt-get install bzip2 -y
RUN apt-get clean

WORKDIR /home/teamspeak/

ADD http://dl.4players.de/ts/releases/$VERSION/teamspeak3-server_linux_amd64-$VERSION.tar.bz2 ./
RUN tar -xf teamspeak3-server_linux_amd64-$VERSION.tar.bz2
RUN mv teamspeak3-server_linux_amd64/* ./ && rm -r teamspeak3-server_linux_amd64
RUN mv redist/* ./

EXPOSE 9987/udp 30033 10011

RUN useradd teamspeak && chown -R teamspeak:teamspeak /home/teamspeak
COPY ts3server.ini ./
COPY ts3db_mariadb.ini ./

USER teamspeak
CMD ./ts3server_minimal_runscript.sh start inifile=ts3server.ini serveradmin_password=$QUERY_PW
