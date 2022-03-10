FROM openjdk:19-jdk-alpine3.15
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
	apk update && apk add git maven docker