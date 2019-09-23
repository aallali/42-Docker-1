FROM ruby:2.3.8
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nodejs -y
RUN gem install rails
ONBUILD COPY app /opt/app
ONBUILD WORKDIR /opt/app
ONBUILD RUN bin/bundle install
ONBUILD EXPOSE 3000
#ONBUILD RUN bin/rake db:migrate
#ONBUILD RUN bin/rake db:seed
