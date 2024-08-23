# Use the official Azul Zulu OpenJDK 17 image as the base image
FROM azul/zulu-openjdk:17-latest

# Set the working directory inside the container
WORKDIR /app

# Copy the generated JAR file from the build/libs directory into the container
COPY build/libs/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that the application will run on (optional, based on your app configuration)
EXPOSE 8080

# Define the command to run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
