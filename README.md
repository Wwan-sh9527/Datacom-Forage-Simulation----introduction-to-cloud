# Datacom Cloud Job Simulation

A hands-on cloud engineering project completed as part of the Datacom Introduction to Cloud Job Simulation on Forage.

## Project Overview

This project simulates the responsibilities of a Junior DevOps Engineer supporting a cloud migration and deployment project.

The scenario involves helping WCD Bank migrate applications and infrastructure from on-premises environments to cloud-based services.

## Skills Practiced

- Cloud Computing
- DevOps
- Git and GitHub
- GitHub Actions
- CI/CD Automation
- Virtual Machine Deployment
- Identity and Access Management (IAM)
- Principle of Least Privilege

## Project Tasks

### Task 1 – Cloud Application Deployment

Designed a cloud deployment approach for provisioning a virtual machine for contractors while ensuring appropriate access controls.

Key concepts:

- Cloud infrastructure
- Virtual machines
- Access management
- Least-privilege permissions
- Automated deployment

### Task 2 – GitHub Actions Workflow

Implemented a GitHub Actions CI workflow that automatically validates a cloud deployment plan whenever changes are pushed to the `main` branch or submitted through a pull request.

The workflow:

- Checks out the repository source code
- Reads the cloud deployment configuration
- Validates core security controls, including least privilege, disabled public IP access, and managed identity
- Confirms that the configuration is intended for validation only and does not provision Azure resources

This demonstrates how CI/CD automation can help enforce baseline cloud-security requirements before infrastructure is deployed.

Technologies used:

- GitHub Actions
- YAML
- Linux shell commands
- CI/CD
- Infrastructure configuration validation
