output "ecr_host" {
  value = "${aws_ecr_repository.image.registry_id}.dkr.ecr.${var.region}.amazonaws.com"
}

output "ecr_repo" {
  value = "${aws_ecr_repository.image.name}"
}

output "ecr_repository_url" {
  value = "${aws_ecr_repository.image.repository_url}"
}