FROM maven:3.6.1-jdk-8-alpine
RUN apk add git
WORKDIR /tmp/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /tmp/boxfuse-sample-java-war-hello
RUN mvn package