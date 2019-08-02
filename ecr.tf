resource "aws_ecr_repository" "image" {
  name = var.name

  tags = {
    Project = local.project
  }
}

# Only keep last 30 images
resource "aws_ecr_lifecycle_policy" "cleanup" {
  repository = aws_ecr_repository.image.name

  policy = <<END_OF_POLICY
{
   "rules": [
      {
        "rulePriority": 1,
        "description": "Keep last 30 images",
        "selection": {
          "tagStatus": "any",
          "countType": "imageCountMoreThan",
          "countNumber": 30
        },
        "action": {
          "type": "expire"
        }
      }
    ]
}
END_OF_POLICY

}
