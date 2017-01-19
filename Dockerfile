FROM ubuntu:16.04

COPY ./install_dependencies.sh /opt
RUN /opt/install_dependencies.sh

ENV LANG=C.UTF-8 \
    JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

ENTRYPOINT ["bash"]

