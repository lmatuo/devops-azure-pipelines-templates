# React DevOps Test Model
![React](https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB)
![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)

This project serves as a template for testing DevOps practices using a React application. It includes all the necessary configurations to facilitate development, building, and deployment.

## Requirements

- Node.js (v16 or higher)
- npm (Node Package Manager)
- Docker (latest version)

## React Commands

To run the React application locally, use the following commands:

1. **Install Dependencies**:
   `npm install`
2. **Start the Development Server**:
    `npm start`
3. **Build the Application**:
    `npm run build`

## Docker Commands

To build and run the application using Docker, you can use the following commands:

1. **Build the Docker Image**:
   `docker build -t Dockerfile my-react-app .` ⚠️
2. **Run the Docker Container**:
    `docker run -d -p 3000:3000 --name my-react-container my-react-app` ⚠️
3. **Stop the Docker Container**:
    `docker stop my-react-container` ⚠️
4. **Remove the Docker Container**:
    `docker rm my-react-container` ⚠️
5. **Remove the Docker Image**:
    `docker rmi my-react-app` ⚠️

## Project Structure

In addition to the project structure, this repository includes:

- A Dockerfile for containerization of the application.
- A .gitignore file to manage ignored files in the repository.
- A pipelines folder to define CI/CD pipelines for automated testing and deployment.

## Warning

> ⚠️ **Warning:** Values ​​in commands and pipeline folder marked with ⚠️ should be replaced according to your specific project requirements.