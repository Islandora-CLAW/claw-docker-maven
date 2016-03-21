FROM islandora-claw/open-jdk
MAINTAINER Nigel Banks <nigel.g.banks@gmail.com>

LABEL "License"="GPLv3" \
      "Version"="0.0.1"

ARG MAVEN_VERSION="3.3.9"

ENV M2_HOME=/opt/maven \
    PATH=${PATH}:/opt/maven/bin

RUN curl -L http://ftp.ps.pl/pub/apache/maven/maven-${MAVEN_VERSION%%.*}/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz | \
    tar -xzf - -C /opt && \
    mv /opt/apache-maven-${MAVEN_VERSION} ${M2_HOME}

COPY rootfs /
