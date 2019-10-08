FROM openjdk:8-jre-alpine
RUN apk add --no-cache bash
WORKDIR /opt
COPY target/links-0.0.1-SNAPSHOT.jar .
ENV JAVA_OPTS="-Xms32m -Xmx128m"
EXPOSE 8080
ENTRYPOINT exec java $JAVA_OPTS -jar links-0.0.1-SNAPSHOT.jar
