output "repository_url" {
  description = "ECR repository URL"
  value       = aws_ecr_repository.repo.repository_url
}
