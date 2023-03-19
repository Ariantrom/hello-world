FROM openjdk:8-jdk-alpine

RUN mkdir /code

WORKDIR /code

COPY ./target/*.war /code/hello-world.war

CMD ["/usr/bin/java", "-jar", "hello-world.war"]