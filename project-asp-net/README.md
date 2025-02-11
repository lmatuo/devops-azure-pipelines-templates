# .NET DevOps Test Model
![.NET](https://img.shields.io/badge/.NET_Framework-5C2D91?style=for-the-badge&logo=.net&logoColor=white)

This project serves as a template for testing DevOps practices using a .NET Framework application. It includes all the necessary configurations to facilitate development, building, and deployment.

## Requirements

- .NET Framework 4.8
- Visual Studio (latest version)

## .NET Commands

To run the .NET application locally, use the following commands:

1. Open the solution file `.sln` in Visual Studio
2. Right-click the solution and select `Restore NuGet Packages` to ensure all dependencies are installed.
3. Build the Solution:
    `msbuild /p:Configuration=Release`
4. Run the Application by executing the compiled `.exe` file located in the `bin/Release` directory:


## Project Structure

In addition to the project structure, this repository includes:

- A .gitignore file to manage ignored files in the repository.
- A pipelines folder to define CI/CD pipelines for automated testing and deployment.

## Warning

> ⚠️ **Warning:** Values ​​in commands and pipeline folder marked with ⚠️ should be replaced according to your specific project requirements.