resource "aws_ecr_repository" "image" {
  name = var.name
  tags = local.tags
}
