# Terraform Infrastructure Pipeline

This repository contains a Terraform-based infrastructure pipeline, designed to manage and provision cloud resources in a reusable, modular, and project-specific way. The codebase is structured into three main directories: packages, modules, and projects.

## Terraform Code structure

### 1. Packages
The packages directory contains reusable Terraform resources. These resources are generic and not tied to any specific use case. For example, the s3 package contains the code to create an S3 bucket. While not all options are exposed as variables, the package can be extended as needed.

### 2. Modules 
The modules directory contains Terraform resources that are specific to a use case. These resources include identifiers specific to the use case. For instance, the s3_bucket module contains the code to create an S3 bucket with all options exposed as variables.

### 3. Projects
The projects directory contains Terraform resources that are specific to a project. Each project maintains its own separate Terraform state. Currently, there are two projects: pipeline-1 (creates an ECR) and pipeline-2 (creates an S3 bucket).

## Github Pipelines

The Terraform pipeline is implemented using GitHub Actions. It's designed as a manual workflow trigger with the following options:

- Project: Choose the project for which the pipeline should be triggered. Current options are `pipeline-1` and `pipeline-2`.
- Action: Choose the action to be performed on the project. Actions can be `plan`, `apply`, or `destroy`.
  - plan: Displays a plan of the resources to be created/updated/deleted.
  - apply: Applies changes to the resources.
  - destroy: Destroys the created resources.
- Branch: Select the branch on which the action should be performed.

All actions are performed only on the selected project.

## Triggering the Pipeline
1. Navigate to the Actions tab in the repository.
2. Click on the Terraform GitHub Pipeline workflow.
3. Fill in the required options and click Run workflow


## Testing the docker image push to ECR

A workflow named ECR push test is created to test pushing a Docker image to ECR. A user with the necessary permissions, assigned through Terraform, is added as a secret in the repository. This workflow pushes the Docker image to ECR.

Note: All resources are currently in a destroyed state. Before running the ECR push test, create resources by triggering the Terraform GitHub Pipeline for the pipeline-1 project.

## Assumptions

1. No policy added for S3 bucket or Access point endpoint.
2. Pipeline need not trigger automatically on push or pull request as we need to run the pipeline separately.
