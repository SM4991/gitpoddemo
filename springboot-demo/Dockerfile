# Build stage
FROM maven:3.6.0-jdk-11-slim AS build
ENV HOME=/home/app
RUN mkdir -p $HOME
WORKDIR $HOME
RUN mvn clean install -DskipTests
COPY target/XML-DSign-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
