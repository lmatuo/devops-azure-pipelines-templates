# Keycloak 23.0.4 Test Model
![Keycloak](https://img.shields.io/badge/Keycloak-000000?style=for-the-badge&logo=keycloak&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)

This project serves as a template for testing DevOps practices using a Keycloak application. It includes all the necessary configurations to facilitate development, building, and deployment.

## Requirements

- Docker (latest version)

## Docker Commands

To build and run the application using Docker, you can use the following commands:

1. **Build the Docker Image**:
   `docker build -t Dockerfile keycloak-image .` ⚠️
2. **Run the Docker Container**:
    `docker run -d -p 8080:8080 --name keycloak-container keycloak-image` ⚠️
3. **Stop the Docker Container**:
    `docker stop keycloak-container` ⚠️
4. **Remove the Docker Container**:
    `docker rm keycloak-container` ⚠️
5. **Remove the Docker Image**:
    `docker rmi keycloak-image` ⚠️

## Project Structure

In addition to the project structure, this repository includes:

- A Dockerfile for containerization of the application.
- A .gitignore file to manage ignored files in the repository.
- A pipelines folder to define CI/CD pipelines for automated testing and deployment.

## Warning

> ⚠️ **Warning:** Values ​​in commands and pipeline folder marked with ⚠️ should be replaced according to your specific project requirements.