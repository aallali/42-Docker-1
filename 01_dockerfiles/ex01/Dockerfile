FROM debian
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install wget -y
RUN apt-get install bzip2 -y

EXPOSE 9987/udp
EXPOSE 10011
EXPOSE 30033
RUN wget https://files.teamspeak-services.com/releases/server/3.8.0/teamspeak3-server_linux_amd64-3.8.0.tar.bz2
RUN tar -xvf teamspeak3-server_linux_amd64-3.8.0.tar.bz2
RUN touch ./teamspeak3-server_linux_amd64/.ts3server_license_accepted
ENTRYPOINT ["sh", "./teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh"]

#docker run -it --rm --name teamspeak --env TS3SERVER_LICENSE=accept -p 9987:9987/udp -p 10011:10011 -p 30033:30033 teamspeak
