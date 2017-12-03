# Docker Teamspeak
This container allows you to run a Teamspeak3 Server.

`docker run -d -e VERSION=3.0.13.8 kaycon/teamspeak`

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
