 FROM maven:3.5-jdk-8-alpine
 
 COPY src /usr/src/demo/src
 COPY pom.xml /usr/src/demo
 RUN mvn -f /usr/src/demo/pom.xml clean package
 
 EXPOSE 8181
 ENTRYPOINT ["java", "-jar", "/usr/src/demo/target/demo-0.0.1-SNAPSHOT.jar"]
