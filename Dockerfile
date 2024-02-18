# From import java images
FROM openjdk:8-jdk-alpine

# Set the Working app directory
WORKDIR /app

# Copy the current application files into Container /app
COPY . /app

# Copy the jarfile from target to container
COPY target/thymeleaf-0.0.1-SNAPSHOT.jar /app/thymeleaf.jar

# Port Exposes
EXPOSE 8023

# Run the command to start the spring boot applicaltion
ENTRYPOINT ["java", "-jar", "thymeleaf.jar"]