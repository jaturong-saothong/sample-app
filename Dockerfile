FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/*.jar
# ARG JAVA_OPTS="-Xmx3G -Xms2G"
COPY ${JAR_FILE} app.jar
WORKDIR /
RUN mkdir logs
ENTRYPOINT ["sh", "-c", "java -Xmx3G -Xms2G -jar /app.jar"]