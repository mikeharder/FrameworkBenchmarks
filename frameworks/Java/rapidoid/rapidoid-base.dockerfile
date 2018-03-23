# FROM tfb/maven:latest
FROM maven:3.5.3-jdk-10
ADD ./ /rapidoid
WORKDIR /rapidoid
RUN mvn clean compile assembly:single
