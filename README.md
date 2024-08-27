## About

Terraform module to create AWS ECR repository.

## Usage

Minimal params:
```hcl
module "my_registry" {
  source  = "github.com/jetbrains-infra/terraform-aws-ecr?ref=v0.2.3"
  name    = "blinchik"
  tags = {
    Owner    = "Don John",
    Project  = "Alice"
    Customer = "Umbrella Corp."
  }
}
```

All options with default values:
```hcl
module "my_registry" {
  source              = "github.com/jetbrains-infra/terraform-aws-ecr?ref=v0.2.3"
  name                = "blinchik"
  scan                = false
  mutable             = true
  share_with_accounts = [] // list of account IDs
  tags = {
    Owner    = "Don John",
    Project  = "Alice"
    Customer = "Umbrella Corp."
  }
}
```


## Outputs

* `ecr_host` - The hostname of the repository (in the form *aws_account_id.dkr.ecr.region.amazonaws.com*)
* `ecr_repo` - The name of the repository.
* `ecr_repository_arn` - The ARN of the repository (in the form `arn:aws:ecr:${aws_region}:${aws_account_id}:repository/${repository_name}`)
* `ecr_repository_url` - The URL of the repository (in the form *aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName*)
* `ecr_repo_rw_policy` - IAM policy in JSON format that grant of rights to manage images.
* `ecr_repo_ro_policy` - IAM policy in JSON format that grant of rights to fetch images.
