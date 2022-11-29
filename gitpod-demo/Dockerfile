# FROM maven:3.6.0-jdk-11-slim AS build
# ENV HOME=/home/app
# RUN mkdir -p $HOME
# ADD pom.xml /home/app/
# WORKDIR $HOME
# # RUN cd springboot-demo
# RUN mvn clean install -DskipTests
# COPY target/*.jar app.jar
# EXPOSE 8080
# ENTRYPOINT ["java","-jar","app.jar"]


FROM openjdk:11
# RUN mvn clean install -DskipTests
COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]
