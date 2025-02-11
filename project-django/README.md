## Django DevOps Test Model
![Django](https://img.shields.io/badge/Django-092E20?style=for-the-badge&logo=django&logoColor=green)
![Python](https://img.shields.io/badge/Python-FFD43B?style=for-the-badge&logo=python&logoColor=blue)
![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)

This project serves as a template for testing DevOps practices using a Django application. It includes all the necessary configurations to facilitate development, building, and deployment.

## Requirements

- Python (v3.11 or higher)
- Django (v5.1.2 or higher)
- Docker (latest version)

## Django Commands

To run the Django application locally, use the following commands:

1. **Install Dependencies**:
   `pip install -r requeriments.txt`
2. **Start the Development Server**:
    `python manage.py runserver`

## Docker Commands

To build and run the application using Docker, you can use the following commands:

1. **Build the Docker Image**:
   `docker build -t Dockerfile my-django-app .` ⚠️
2. **Run the Docker Container**:
    `docker run -d -p 8000:8000 --name my-django-container my-django-app` ⚠️
3. **Stop the Docker Container**:
    `docker stop my-django-container` ⚠️
4. **Remove the Docker Container**:
    `docker rm my-django-container` ⚠️
5. **Remove the Docker Image**:
    `docker rmi my-django-app` ⚠️

## Project Structure

In addition to the project structure, this repository includes:

- A Dockerfile for containerization of the application.
- A .gitignore file to manage ignored files in the repository.
- A pipelines folder to define CI/CD pipelines for automated testing and deployment.

## Warning

> ⚠️ **Warning:** Values ​​in commands and pipeline folder marked with ⚠️ should be replaced according to your specific project requirements.