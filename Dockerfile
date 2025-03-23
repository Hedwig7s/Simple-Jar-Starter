FROM ghcr.io/graalvm/jdk-community:21

EXPOSE 25565/tcp
EXPOSE 8100/tcp
EXPOSE 8080/tcp

ENV MC_VERSION 1.20.1
ENV MC_EULA true
ENV MC_RAM_XMS 1536M
ENV MC_RAM_XMX 2048M
ENV JAR server.jar

VOLUME /home/server

USER root
WORKDIR /home/server

COPY src/main.sh /main.sh

RUN microdnf install -y epel-release &&\
    microdnf install -y unar &&\
    microdnf install -y findutils

RUN chmod +x /main.sh

RUN useradd user
USER user

CMD ["/main.sh"]
