variable "name" {
  description = "Name of the repository."
}
variable "tags" {
  description = "Tags."
  type        = map(string)
}
variable "mutable" {
  default = true
}
variable "scan" {
  default = false
}
data "aws_region" "current" {}

locals {
  name       = var.name
  region     = data.aws_region.current.name
  title      = title(replace(replace(local.name, "-", ""), " ", ""))
  mutability = var.mutable ? "MUTABLE" : "IMMUTABLE"
  scan       = var.scan
  tags = merge({
    Name          = local.name
    Module        = "ECR Repository"
    ModuleVersion = "v0.2.1"
    ModuleSource  = "https://github.com/jetbrains-infra/terraform-aws-ecr/"
  }, var.tags)
}
