variable "ecr_name" {
  type = string
}

variable "env" {
  type = string
}

variable "region" {
  type = string
}

module "ecr" {
  source = "../../modules/ecr"
  name   = var.ecr_name
  tags = {
    Environment = var.env
  }
}

module "iam" {
  source = "../../modules/iam"
  name   = "${var.env}-task-role"
}

module "ecs" {
  source = "../../modules/ecs"
  name   = "${var.env}-cluster"
}

output "ecr_repository_url" {
  value = module.ecr.repository_url
}

output "ecs_cluster_arn" {
  value = module.ecs.cluster_arn
}
