FROM alpine:3.6

MAINTAINER Nicholas Wiersma <nick@wiersma.co.za>

RUN apk add --no-cache git python make g++ libffi-dev avahi-compat-libdns_sd avahi-dev avahi dbus nodejs nodejs-npm
RUN mkdir -p /homebridge

COPY entrypoint.sh /entrypoint.sh

ENV HOMEBRIDGE_VERSION=0.4.38
RUN npm install -g --unsafe-perm homebridge@${HOMEBRIDGE_VERSION} \
                                 homebridge-mqtt-switch-tasmota \
                                 homebridge-samsungtv2016 \
                                 homebridge-weather-station-extended

VOLUME /homebridge

EXPOSE 51826
EXPOSE 5353/udp

ENTRYPOINT ./entrypoint.sh
