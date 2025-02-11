# Angular DevOps Test Model
![Angular](https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)

This project serves as a template for testing DevOps practices using a Angular application. It includes all the necessary configurations to facilitate development, building, and deployment.

## Requirements

- Node.js (v18 or higher)
- Angular (v17 or higher)
- npm (Node Package Manager)
- Docker (latest version)

## Angular Commands

To run the Angular application locally, use the following commands:

1. **Install Dependencies**:
   `npm install`
2. **Start the Development Server**:
    `npm serve`
3. **Build the Application**:
    `ng build`
4. **Run Unit Tests**:
    `ng test`
5. **Generate a New Component - Code Scaffolding**:
    `ng generate component component-name`

## Docker Commands

To build and run the application using Docker, you can use the following commands:

1. **Build the Docker Image**:
   `docker build -t Dockerfile my-angular-app .` ⚠️
2. **Run the Docker Container**:
    `docker run -d -p 4200:4200 --name my-angular-container my-angular-app` ⚠️
3. **Stop the Docker Container**:
    `docker stop my-angular-container` ⚠️
4. **Remove the Docker Container**:
    `docker rm my-angular-container` ⚠️
5. **Remove the Docker Image**:
    `docker rmi my-angular-app` ⚠️

## Project Structure

In addition to the project structure, this repository includes:

- A Dockerfile for containerization of the application.
- A .gitignore file to manage ignored files in the repository.
- A pipelines folder to define CI/CD pipelines for automated testing and deployment.

## Warning

> ⚠️ **Warning:** Values ​​in commands and pipeline folder marked with ⚠️ should be replaced according to your specific project requirements.