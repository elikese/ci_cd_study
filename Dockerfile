FROM amazoncorretto:11-alpine-jdk
ARG JAR_FILE=target/deploy-0.0.1.jar
ARG PROFILES
ARG ENV
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=${PROFILES}", "-Dserver.env=${ENV}", "-jar", "app.jar"]