# Flutter DevOps Test Model
![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Node JS](https://img.shields.io/badge/Node%20js-339933?style=for-the-badge&logo=nodedotjs&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)

This project serves as a template for testing DevOps practices using a Flutter application. It includes all the necessary configurations to facilitate development, building, and deployment.

## Requirements

- Node.js (v16 or higher)
- npm (Node Package Manager)
- Flutter (latest stable version)
- Dart (comes with Flutter)
- Docker (latest version)

## Flutter Commands

To run the Flutter application locally, use the following commands:

1. **Install Dependencies**:
   `npm install`
2. **Set Debug Mode**:
    `SET DEBUG=frontend:*`
3. **Start the Development Server**:
    `npm start`

## Docker Commands

To build and run the application using Docker, you can use the following commands:

1. **Build the Docker Image**:
   `docker build -t my-flutter-app .` ⚠️
2. **Run the Docker Container**:
    `docker run -d -p 3000:3000 --name my-flutter-container my-flutter-app` ⚠️
3. **Stop the Docker Container**:
    `docker stop my-flutter-container` ⚠️
4. **Remove the Docker Container**:
    `docker rm my-flutter-container` ⚠️
5. **Remove the Docker Image**:
    `docker rmi my-flutter-app` ⚠️

## Project Structure

In addition to the project structure, this repository includes:

- A Dockerfile for containerization of the application.
- A .gitignore file to manage ignored files in the repository.
- A pipelines folder to define CI/CD pipelines for automated testing and deployment.

## Warning

> ⚠️ **Warning:** Values ​​in commands and pipeline folder marked with ⚠️ should be replaced according to your specific project requirements.
> ⚠️ **Warning:** This is a **Dockerized Flutter application** that uses **Node Express** as the backend server.

