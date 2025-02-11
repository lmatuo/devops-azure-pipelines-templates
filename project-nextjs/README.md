# Next DevOps Test Model
![Next](https://img.shields.io/badge/next%20js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)

This project serves as a template for testing DevOps practices using a Next application. It includes all the necessary configurations to facilitate development, building, and deployment.

## Requirements

- Node.js (v16 or higher)
- npm (Node Package Manager)
- Docker (latest version)

## Next Commands

To run the Next application locally, use the following commands:

1. **Install Dependencies**:
   `npm install`
2. **Start the Development Server**:
    `npm run dev`

## Docker Commands

To build and run the application using Docker, you can use the following commands:

1. **Build the Docker Image**:
   `docker build -t Dockerfile my-next-app .` ⚠️
2. **Run the Docker Container**:
    `docker run -d -p 3000:3000 --name my-next-container my-next-app` ⚠️
3. **Stop the Docker Container**:
    `docker stop my-next-container` ⚠️
4. **Remove the Docker Container**:
    `docker rm my-next-container` ⚠️
5. **Remove the Docker Image**:
    `docker rmi my-next-app` ⚠️

## Project Structure

In addition to the project structure, this repository includes:

- A Dockerfile for containerization of the application.
- A .gitignore file to manage ignored files in the repository.
- A pipelines folder to define CI/CD pipelines for automated testing and deployment.

## Warning

> ⚠️ **Warning:** Values ​​in commands and pipeline folder marked with ⚠️ should be replaced according to your specific project requirements.