variable "name" {
  description = "Name of the repository."
}

variable "project" {
  description = "Project tag."
}

data "aws_region" "current" {}

locals {
  name    = "${var.name}"
  region  = "${data.aws_region.current.name}"
  project = "${var.project}"
  title   = "${title(replace(replace(local.name, "-", "" ), " ", ""))}"
}