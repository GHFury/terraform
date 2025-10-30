# terraform (infra)

This repository contains Terraform modules and environment glue for deploying a small ECS/Fargate stack using AWS ECR, IAM and ECS.

Quick start

1. Configure your AWS credentials (environment variables, named profile, or other supported method).
2. (Optional) Configure remote state by enabling `backend.tf` with an S3 bucket and DynamoDB table.
3. From the `envs/dev` directory run:

```bash
terraform init
terraform apply -var-file=terraform.tfvars
```

What's included
- `modules/ecr` - creates an ECR repository and exposes `repository_url` output
- `modules/iam` - creates an ECS task execution role and exposes `ecs_task_execution_role_arn`
- `modules/ecs` - creates an ECS cluster, task definition and Fargate service (configurable)

Notes
- The default configuration uses the default VPC and default security group; for production you should pass explicit subnet IDs and security groups to the ECS module.
- Consider enabling remote state (S3 + DynamoDB) for collaboration.
