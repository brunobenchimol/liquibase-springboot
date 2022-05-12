FROM openjdk:11-jdk-slim
RUN addgroup springboot && adduser --ingroup springboot springboot
USER springboot:springboot
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
