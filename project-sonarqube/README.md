# SonarQube DevOps Test Model
![SonarQube](https://img.shields.io/badge/Sonarqube-5190cf?style=for-the-badge&logo=sonarqube&logoColor=white)  
![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)

This project provides a template for testing DevOps practices by setting up SonarQube in a Docker container. It includes configurations to facilitate the building and deployment of a SonarQube instance via Docker.

## Requirements

- Docker (latest version)

## Docker Commands

To build and run the SonarQube Docker image, you can use the following commands:

1. **Build the Docker Image**:
    `docker build -t Dockerfile my-sonarqube-image .` ⚠️
   
2. **Run the Docker Container**:
    `docker run -d -p 9000:9000 --name my-sonarqube-container my-sonarqube-image` ⚠️

3. **Stop the Docker Container**:
    `docker stop my-sonarqube-container` ⚠️

4. **Remove the Docker Container**:
    `docker rm my-sonarqube-container` ⚠️

5. **Remove the Docker Image**:
    `docker rmi my-sonarqube-image` ⚠️

## Project Structure

This repository contains:

- A Dockerfile for containerizing the SonarQube image.
- A .gitignore file to exclude unnecessary files from version control.
- A pipelines folder to define CI/CD pipelines for automated testing and deployment.

## Warning

> ⚠️ **Warning:** Values ​​in commands and pipeline folder marked with ⚠️ should be replaced according to your specific project requirements.