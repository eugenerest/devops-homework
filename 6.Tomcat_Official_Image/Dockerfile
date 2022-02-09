FROM tomcat
RUN apt-get update
RUN apt-get install -y git && \
    apt-get install -y maven;
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN cd boxfuse-sample-java-war-hello && \
    mvn package;
RUN cp boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps/