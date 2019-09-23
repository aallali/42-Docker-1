docker build -t gogs .
docker run -it -p 80:80 -p 443:443 -p 2022:22 gogs
