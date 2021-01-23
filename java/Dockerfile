FROM maven:3-openjdk-11 AS build

RUN mkdir /project

COPY . /project
WORKDIR /project
RUN mvn package

FROM openjdk:11-jre-slim

COPY --from=build /project/target/demo-function.jar /function.jar

CMD [ "java","-jar","/function.jar" ]