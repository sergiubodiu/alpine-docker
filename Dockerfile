# Docker base image for OpenJRE 8.
FROM gliderlabs/alpine:3.3
MAINTAINER Sergiu Bodiu <sbodiu@pivotal.io>
RUN apk --no-cache add \
    openjdk8-jre  &&\
    rm -rf /tmp/*

# Start container
CMD ["java","-Djava.security.egd=file:/dev/urandom"]
