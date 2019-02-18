#
# Alpine linux docker image with OpenSSH client
#
# A minimal base image based on Alpine Linux with OpenSSH client
#

FROM alpine:3.7
LABEL vendor="vank3f3" \
      release-date="2019-02-18" \
      version="0.0.1"

# Set environment variables.
ENV TERM=xterm-color

# Install packages.
RUN apk --update add bash openssh-client iproute2 curl drill mtr iftop && \
    rm -rf /var/cache/apk/*

# Set the default command.
WORKDIR /root
USER root
CMD ["ping","localhost"]