FROM eclipse-temurin:23-jdk-alpine
WORKDIR /app

COPY QuantomSoft-0.0.1-SNAPSHOT_4.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/app.jar"]

CMD [
  "--spring.datasource.url=jdbc:mysql://mysql-service:3306/quantumsoft",
  "--spring.datasource.username=root",
  "--spring.datasource.password=root"
]
