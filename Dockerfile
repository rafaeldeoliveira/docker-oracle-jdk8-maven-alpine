FROM frolvlad/alpine-java:jdk8-slim

ENV MAVEN_VERSION=3.6.0 MAVEN_HOME=/usr/lib/mvn

RUN apk add --update git subversion openssh && \
  wget http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz && \
  tar -zxvf apache-maven-$MAVEN_VERSION-bin.tar.gz && \
  rm apache-maven-$MAVEN_VERSION-bin.tar.gz && \
  mv apache-maven-$MAVEN_VERSION /usr/lib/mvn && \
  ln -s /usr/lib/mvn/bin/mvn /usr/bin/mvn && \
  mvn --version


