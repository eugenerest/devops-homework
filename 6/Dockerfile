FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y default-jdk
RUN apt-get install -y maven
RUN apt-get install -y git
RUN apt-get install -y wget
RUN mkdir /usr/local/tomcat
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58.tar.gz -O /tmp/tomcat.tar.gz
WORKDIR /tmp
RUN tar xvfz tomcat.tar.gz 
RUN cp -Rv /tmp/apache-tomcat-9.0.58/* /usr/local/tomcat
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /tmp/boxfuse-sample-java-war-hello
RUN mvn package
WORKDIR /tmp/boxfuse-sample-java-war-hello/target/
RUN cp hello-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run