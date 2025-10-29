variable "ecr_name" {
  description = "Name of the ECR repository"
  type        = string
}

variable "env" {
  description = "Environment name (dev/stage/prod)"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}
