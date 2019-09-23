FROM ubuntu
RUN apt-get update && apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y apache2 vim git php
ENTRYPOINT (service apache2 restart) && (bash)
