FROM alpine:3.12 AS base
RUN apk add curl
COPY run.sh /
RUN mkdir server \
    && chmod +x run.sh
WORKDIR /server
RUN /run.sh
