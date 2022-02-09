Boxfuse Sample Hello World Java application packaged as a war file in docker

Running

    git clone https://github.com/eugenerest/devops-homework.git
    cd devops-homework/6/
    docker build -t boxfuse .
    docker run -d --rm --name boxfuse -p 8080:8080 boxfuse

Done!

Check result http://public_ipv4:8080/hello-1.0/