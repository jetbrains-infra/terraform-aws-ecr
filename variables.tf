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
variable "share_with_accounts" {
  type    = list(string)
  default = []
}
data "aws_region" "current" {}

locals {
  name       = var.name
  region     = data.aws_region.current.name
  title      = title(replace(replace(local.name, "-", ""), " ", ""))
  mutability = var.mutable ? "MUTABLE" : "IMMUTABLE"
  scan       = var.scan
  accounts   = formatlist("arn:aws:iam::%s:root", var.share_with_accounts)
  tags = merge({
    Name          = local.name
    Module        = "ECR Repository"
    ModuleVersion = "v0.2.4"
    ModuleSource  = "https://github.com/jetbrains-infra/terraform-aws-ecr/"
  }, var.tags)
}
