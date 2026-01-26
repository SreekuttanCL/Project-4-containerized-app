variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "project-4-container-app"
}

variable "environment" {
  description = "Environment name(dev/prod)"
  type        = string
  default     = "dev"
}
