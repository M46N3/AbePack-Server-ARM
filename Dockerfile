FROM alpine:3.12 AS base
RUN apk add curl
COPY start.sh /
RUN mkdir server \
    && chmod +x start.sh
WORKDIR /server
RUN /start.sh

FROM openjdk:8-jre-slim
COPY run-server.sh /
COPY --from=base /server /server/
RUN adduser --system --group forge && \
    chmod +x run-server.sh && \
    mkdir -p /server/server-data && \
    chown -R forge:forge /server
USER forge
USER forge
WORKDIR /server
EXPOSE 25565
ENTRYPOINT /run-server.sh
