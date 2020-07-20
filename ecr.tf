resource "aws_ecr_repository" "image" {
  name                 = var.name
  tags                 = local.tags
  image_tag_mutability = local.mutability
  image_scanning_configuration {
    scan_on_push = local.scan
  }
}
