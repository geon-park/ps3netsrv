FROM alpine:latest
MAINTAINER psychoria

# install alpine-sdk
RUN apk add --no-cache alpine-sdk bash

# create data directory
RUN mkdir -p /data
WORKDIR /data

# copy files and run script.sh
ADD . /data
RUN chmod -R 755 *
RUN ./script.sh

# create games directory
RUN mkdir /games
VOLUME ["/games"]

EXPOSE 38008

CMD ["/data/entrypoint.sh"]
