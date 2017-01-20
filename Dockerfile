FROM java:8
VOLUME /tmp
ADD build/libs/EurekaServer-1.0.1-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Duser.timezone=GMT", "-jar","/app.jar"]