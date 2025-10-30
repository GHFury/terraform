# ECS module

This module deploys an ECS cluster, task definition and Fargate service.

Inputs
- `project_name` (string) - project prefix used for resource names
- `ecr_repo_url` (string) - ECR repository URL
- `ecs_task_execution_role_arn` (string) - IAM role ARN for task execution
- `image_tag` (string) - Docker image tag to deploy (default: `latest`)
- `cpu` (string) - Task CPU units (default: `256`)
- `memory` (string) - Task memory in MB (default: `512`)
- `desired_count` (number) - Number of tasks (default: `1`)
- `subnet_ids` (list(string)) - Optional list of subnet IDs; falls back to default VPC subnets if empty
- `security_group_ids` (list(string)) - Optional list of security group IDs; falls back to default SG if empty
- `assign_public_ip` (bool) - whether to assign public IP (default: true)

Outputs
- None by default; you can extend the module to expose service/task ARNs.

Usage example

```
module "ecs" {
  source = "../../modules/ecs"

  project_name                  = var.project_name
  ecr_repo_url                  = module.ecr.repository_url
  ecs_task_execution_role_arn   = module.iam.ecs_task_execution_role_arn
  image_tag                     = "v1.2.3"
  desired_count                 = 2
  subnet_ids                    = ["subnet-0123", "subnet-0456"]
  security_group_ids            = ["sg-012345"]
}
```
