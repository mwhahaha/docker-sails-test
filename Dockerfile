FROM fedora:20
MAINTAINER Alex Schultz <aschultz@next-development.com>

RUN /usr/bin/yum install -q -y npm
RUN npm -g install sails
RUN /usr/bin/mkdir /sails
ADD run.sh /sails/run.sh
WORKDIR /sails
RUN sails new test
EXPOSE 1337
CMD ["/sails/run.sh"]
