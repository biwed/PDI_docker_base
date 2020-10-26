FROM  openjdk:8-jre-slim-buster
LABEL Pentaho='Pentaho Data Integration Base'
LABEL maintainer="biwed.ru@gmail.com"

ENV PDI_VERSION=8.3 \
    PDI_BUILD=8.3.0.0-371 \
    JAVA_HOME=/usr/local/openjdk-8 \
    JRE_HOME=${JAVA_HOME} \
    PENTAHO_JAVA_HOME=${JAVA_HOME} \
    PENTAHO_HOME=/opt/pentaho \
    USER_KETTLE_HOME=/opt/pentaho/data-integration \
    USER_KETTLE_REPOSITORY=/opt/pentaho/data-integration/repo

# Install utils for download and unpack zip arch
RUN apt-get update \
    && apt-get install -y --no-install-recommends  unzip  wget \
    && apt-get autoremove -y && apt-get clean all

#Install Pentaho Data Integration
RUN wget -O /tmp/pdi-ce.zip https://sourceforge.net/projects/pentaho/files/Pentaho%20${PDI_VERSION}/client-tools/pdi-ce-${PDI_BUILD}.zip \
    && unzip  /tmp/pdi-ce.zip -d ${PENTAHO_HOME}  \
    && rm -f /tmp/pdi-ce.zip