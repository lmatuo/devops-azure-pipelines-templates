# PHP DevOps Test Model
![PHP](https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)

This project serves as a template for testing DevOps practices using a PHP application. It includes all the necessary configurations to facilitate development, building, and deployment.

## Requirements

- PHP (v8.2.11 or higher)
- Docker (latest version)

## Docker Commands

To build and run the application using Docker, you can use the following commands:

1. **Build the Docker Image**:
   `docker build -t Dockerfile my-php-app .` ⚠️
2. **Run the Docker Container**:
    `docker run -d -p 8080:80 --name my-php-container my-php-app` ⚠️
3. **Stop the Docker Container**:
    `docker stop my-php-container` ⚠️
4. **Remove the Docker Container**:
    `docker rm my-php-container` ⚠️
5. **Remove the Docker Image**:
    `docker rmi my-php-app` ⚠️

## Project Structure

In addition to the project structure, this repository includes:

- A Dockerfile for containerization of the application.
- A .gitignore file to manage ignored files in the repository.
- A pipelines folder to define CI/CD pipelines for automated testing and deployment.

## Warning

> ⚠️ **Warning:** Values ​​in commands and pipeline folder marked with ⚠️ should be replaced according to your specific project requirements.