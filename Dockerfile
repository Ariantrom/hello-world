FROM openjdk:8-jdk-alpine

RUN mkdir /code

WORKDIR /code

COPY ./target/example.smallest-0.0.1-SNAPSHOT.war /code

CMD ["/usr/bin/java", "-jar", "example.smallest-0.0.1-SNAPSHOT.war"]