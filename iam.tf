data "aws_iam_policy_document" "allow_manage_docker_repo" {
  statement {
    sid       = "AllowManage${local.title}DockerRepo"
    resources = [
      "${aws_ecr_repository.image.arn}"
    ]
    actions   = [
      "ecr:GetDownloadUrlForLayer",
      "ecr:BatchGetImage",
      "ecr:BatchCheckLayerAvailability",
      "ecr:PutImage",
      "ecr:InitiateLayerUpload",
      "ecr:UploadLayerPart",
      "ecr:CompleteLayerUpload"
    ]
  }
  statement {
    sid       = "AllowGetAuthorizationToken"
    actions   = [
      "ecr:GetAuthorizationToken"
    ]
    resources = ["*"]
  }
}

data "aws_iam_policy_document" "allow_fetch_images_from_repo" {
  statement {
    sid       = "AllowFetchImages${local.title}DockerRepo"
    resources = [
      "${aws_ecr_repository.image.arn}"
    ]
    actions   = [
      "ecr:GetDownloadUrlForLayer",
      "ecr:BatchGetImage",
      "ecr:BatchCheckLayerAvailability"
    ]
  }
  statement {
    sid       = "AllowGetAuthorizationToken"
    actions   = [
      "ecr:GetAuthorizationToken"
    ]
    resources = ["*"]
  }
}
