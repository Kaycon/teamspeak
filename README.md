# Docker Teamspeak
This container allows you to run a Teamspeak3 Server.

`docker run --name teamspeak -d -p 10011:10011 -p 30033:30033 -p 9987:9987/udp -e VERSION=3.0.13.8 -e QUERY_PW="your_query_pw" --restart unless-stopped kaycon/teamspeak`

## Parameters
**VERSION**
Teamspeak version.

**QUERY_PW**
Password for serveradmin query login.

## Ports

The following ports are required:

* 9987 UDP
* 30033 TCP
* 10011 TCP
