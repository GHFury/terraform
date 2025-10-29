variable "name" {
  type = string
}

resource "aws_ecs_cluster" "this" {
  name = var.name
}

output "cluster_arn" {
  value = aws_ecs_cluster.this.arn
}
