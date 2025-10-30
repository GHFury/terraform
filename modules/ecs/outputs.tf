output "cluster_name" {
  description = "ECS cluster name"
  value       = aws_ecs_cluster.cluster.name
}

output "service_arn" {
  description = "ECS service ID (name)"
  value       = aws_ecs_service.service.id
}

output "task_definition_arn" {
  description = "Task definition ARN"
  value       = aws_ecs_task_definition.task.arn
}
