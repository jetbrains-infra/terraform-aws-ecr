variable "name" {
  description = "Name of the repository."
}
variable "tags" {
  description = "Tags."
  type        = map(string)
}
data "aws_region" "current" {}

locals {
  name   = var.name
  region = data.aws_region.current.name
  title  = title(replace(replace(local.name, "-", ""), " ", ""))
  tags   = merge({
    Name          = local.name
    Module        = "ECR Repository"
    ModuleVersion = "v0.2.0"
    ModuleSrc     = "https://github.com/jetbrains-infra/terraform-aws-ecr/"
  }, var.tags)
}
