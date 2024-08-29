variable "repository_name" {
  description = "The name of the ECR repository"
  type        = string
}

variable "principal_user" {
  description = "The IAM user ARN to allow access to the ECR repository"
  type        = string
}