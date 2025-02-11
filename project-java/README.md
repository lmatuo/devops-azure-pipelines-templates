# Java DevOps Test Model
![Spring Boot](https://img.shields.io/badge/Spring_Boot-6DB33F?style=for-the-badge&logo=spring-boot&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)

This project serves as a template for testing DevOps practices using a Java application. It includes all the necessary configurations to facilitate development, building, and deployment.

## Requirements

- Maven (v3.8.4 or higher)
- Java (v17 or higher)
- Docker (latest version)

## Java Commands

To run the Java application locally, use the following commands:

1. **Install Dependencies**:
   `mvn clean install`
2. **Start the Development Server**:
    `mvn spring-boot:run`
3. **Package the Application**:
    `mvn clean package`

## Docker Commands

To build and run the application using Docker, you can use the following commands:

1. **Build the Docker Image**:
   `docker build -t Dockerfile my-java-app .` ⚠️
2. **Run the Docker Container**:
    `docker run -d -p 8080:8080 --name my-java-container my-java-app` ⚠️
3. **Stop the Docker Container**:
    `docker stop my-java-container` ⚠️
4. **Remove the Docker Container**:
    `docker rm my-java-container` ⚠️
5. **Remove the Docker Image**:
    `docker rmi my-java-app` ⚠️

## Project Structure

In addition to the project structure, this repository includes:

- A Dockerfile for containerization of the application.
- A .gitignore file to manage ignored files in the repository.
- A pipelines folder to define CI/CD pipelines for automated testing and deployment.

## Warning

> ⚠️ **Warning:** Values ​​in commands and pipeline folder marked with ⚠️ should be replaced according to your specific project requirements.