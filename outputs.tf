output "ecr_host" {
  value = "${aws_ecr_repository.image.registry_id}.dkr.ecr.${local.region}.amazonaws.com"
}

output "ecr_repo" {
  value = aws_ecr_repository.image.name
}

output "ecr_repository_arn" {
  value = aws_ecr_repository.image.arn
}

output "ecr_repository_url" {
  value = aws_ecr_repository.image.repository_url
}

output "ecr_repo_rw_policy" {
  value = data.aws_iam_policy_document.allow_manage_docker_repo.json
}

output "ecr_repo_ro_policy" {
  value = data.aws_iam_policy_document.allow_fetch_images_from_repo.json
}
