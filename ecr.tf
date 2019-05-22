resource "aws_ecr_repository" "image" {
  name = "${var.name}"

  tags {
    Project = "${local.project}"
  }
}
