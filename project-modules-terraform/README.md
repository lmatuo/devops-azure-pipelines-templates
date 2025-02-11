# Terraform DevOps Test Model
![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Azure DevOps](https://img.shields.io/badge/Azure_DevOps-0078D7?style=for-the-badge&logo=azure-devops&logoColor=white)


This project serves as a template for testing DevOps practices using a Terraform application. It includes all the necessary configurations to facilitate development, building, and deployment.

## Requirements

- Terraform (v1.7.5 or higher)

## Terraform Commands

To run the Teraform application locally, use the following commands:

1. **Initializes the project directory**:
   `terraform init`
2. **Rewrites Terraform configuration files to a canonical format and style**:
    `terraform fmt`
3. **Validates the configuration files in the current directory**:
    `terraform validate`
4. **Generates an execution plan and saves it to `plan.out`**:
    `terraform plan -out plan.out` ⚠️
5. **Applies the changes required to reach the desired state of the configuration defined in `plan.out`**:
    `terraform apply plan.out` ⚠️

## Project Structure

In addition to the project structure, this repository includes:

- A .gitignore file to manage ignored files in the repository.
- A pipelines folder to define CI/CD pipelines for automated testing and deployment.

## Warning

> ⚠️ **Warning:** Values ​​in commands and pipeline folder marked with ⚠️ should be replaced according to your specific project requirements.