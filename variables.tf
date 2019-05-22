variable "name" {
  description = "Name of the repository."
}

variable "project" {
  description = "Project tag."
}

variable "region" {
  default = "eu-west-1"
}

locals {
  name    = "${var.name}"
  project = "${var.project}"
}