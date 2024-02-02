# Use a base image with OpenJDK 8
FROM openjdk:8-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/br-simple-lender-backend-new-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port that the application will run on
EXPOSE 8082

# Command to run the application
CMD ["java", "-jar", "app.jar"]