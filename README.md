![Logo](http://svg.wiersma.co.za/github/project?lang=docker&title=homebridge)

A lightweight Homebridge container.

## Ports

Ports 5353/udp and 51826 are exposed and should be mounted to the host ports

## Example

```
    docker run --detach
               -v /etc/homebridge:/homebridge \
               -v /etc/avahi/services:/etc/avahi/services \
               -p 51826:51826 \
               -p 5353:5353/udp \
               nrwiersma/homebridge:latest
```