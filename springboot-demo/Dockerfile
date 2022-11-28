# Build stage
FROM maven:3.6.0-jdk-11-slim AS development
ENV HOME=/home/app
RUN mkdir -p $HOME
# COPY ./springboot-demo $HOME
WORKDIR $HOME
# RUN cd springboot-demo
# RUN mvn clean install -DskipTests
COPY ./springboot-demo/target/demo-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
