FROM java:8-jdk-alpine
USER 1000:1000
VOLUME /tmp
ADD demo_maven2-0.0.1-SNAPSHOT.jar /tmp
ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /tmp/demo_maven2-0.0.1-SNAPSHOT.jar
EXPOSE 8080
