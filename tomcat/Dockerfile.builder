ARG MAVEN_CONTAINER_VERSION=3.6.3-jdk-8-openj9 
FROM maven:$MAVEN_CONTAINER_VERSION
ARG COMPONENT="test"
ENV COMPONENT=$COMPONENT
COPY . /usr/src/$COMPONENT-build
WORKDIR /usr/src/$COMPONENT-build
