# From import java image
FROM openjdk:8-jdk-alpine

# Set the Working app directory
WORKDIR /app

# Copy the current application files into Container /app
COPY . /app

# Port Exposes
EXPOSE 8089

# Run the command to start the spring boot applicaltion
CMD ["java", "-jar", "thymeleaf-file-upload-0.0.1-SNAPSHOT.jar"]