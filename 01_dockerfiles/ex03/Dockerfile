FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y curl openssh-server ca-certificates git tzdata

EXPOSE 443 80 22

RUN curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash
RUN apt-get -y install gitlab-ce

RUN mkdir /etc/gitlab/ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-subj "/C=MA/ST=0/L=Khourigba/O=rs1/OU=rs1/CN=10.12.10.12/emailAddress=aallali1337@gmail.com" \
-keyout /etc/gitlab/ssl/gitlab.key -out /etc/gitlab/ssl/gitlab.crt

RUN git clone https://github.com/aallali/dockerRun.git /gitlab-files

RUN cp /gitlab-files/gitlab.rb /etc/gitlab/gitlab.rb

RUN export GIT_SSL_NO_VERIFY=1
WORKDIR gitlab-files
RUN ls
RUN pwd
ENTRYPOINT ["sh", "script.sh"]
