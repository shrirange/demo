FROM  maven:3.5-jdk-8-alpine 
WORKDIR /app
COPY pom.xml ./
RUN mvn dependency:go-offline
COPY /src ./src
RUN mvn install
CMD ["java -jar demo-0.0.1-SNAPSHOT.jar"]
