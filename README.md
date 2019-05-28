## About

Terraform module to create AWS ECR repository.

## Usage

```
module "my_registry" {
  source  = "github.com/jetbrains-infra/terraform-aws-ecr?ref=v0.1.0"
  name    = "blinchik"
  project = "FooBar"  
}
```

## Outputs

* `ecr_host` - The hostname of the repository (in the form *aws_account_id.dkr.ecr.region.amazonaws.com*)
* `ecr_repo` - The name of the repository.
* `ecr_repository_url` - The URL of the repository (in the form *aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName*)
* `ecr_repo_rw_policy` - IAM policy in JSON format that grant of rights to manage images.
* `ecr_repo_ro_policy` - IAM policy in JSON format that grant of rights to fetch images.

Example:
```
${module.my_registry.ecr_host}/${module.my_registry.ecr_repo}
```
