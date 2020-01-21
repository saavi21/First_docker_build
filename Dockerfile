### Dockerfile ###
FROM ubuntu
RUN apt-get update
RUN apt-get -y install apache2
ADD . /var/www/html
CMD apachectl -D FOREGROUND  #run apache, the moment container starts only if no arguments specified in the docker run command.
ENTRYPOINT apachectl -D FOREGROUND  #run apache, the moment container starts even if arguments specified in the docker run command.
ENV name Onkar
