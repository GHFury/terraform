variable "project_name" {
  description = "Project name prefix"
  type        = string
}

variable "ecr_repo_url" {
  description = "ECR repository URL (e.g. 123456789012.dkr.ecr.us-east-1.amazonaws.com/repo)"
  type        = string
}

variable "ecs_task_execution_role_arn" {
  description = "ARN of the ECS task execution role"
  type        = string
}

variable "image_tag" {
  description = "Image tag to deploy"
  type        = string
  default     = "latest"
}

variable "cpu" {
  description = "Task CPU units"
  type        = string
  default     = "256"
}

variable "memory" {
  description = "Task memory (MB)"
  type        = string
  default     = "512"
}

variable "desired_count" {
  description = "Number of service tasks to run"
  type        = number
  default     = 1
}

variable "subnet_ids" {
  description = "Optional list of subnet IDs to launch tasks in (falls back to default VPC subnets)"
  type        = list(string)
  default     = []
}

variable "security_group_ids" {
  description = "Optional list of security group IDs to attach to the tasks (falls back to default SG)"
  type        = list(string)
  default     = []
}

variable "assign_public_ip" {
  description = "Whether to assign a public IP to Fargate tasks"
  type        = bool
  default     = true
}
