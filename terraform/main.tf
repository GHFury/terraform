module "ecr" {
  source       = "../modules/ecr"
  project_name = var.project_name
}

module "iam" {
  source       = "../modules/iam"
  project_name = var.project_name
}

module "ecs" {
  source                       = "../modules/ecs"
  project_name                 = var.project_name
  ecr_repo_url                 = module.ecr.repository_url
  ecs_task_execution_role_arn  = module.iam.ecs_task_execution_role_arn
  # optional: pass image_tag, cpu, memory, subnet_ids, security_group_ids, desired_count
}
