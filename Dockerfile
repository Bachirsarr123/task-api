FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

COPY target/task-api-1.0.0.jar app.jar

EXPOSE 8085

ENTRYPOINT ["java", "-jar", "app.jar"]