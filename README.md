## About

Terraform module to create AWS ECR repository.

## Usage

```
module "my_registry" {
  source  = "github.com/jetbrains-infra/aws-ecr-terraform-module?ref=v0.1.0"
  name    = "blinchik"
  project = "FooBar"  
}
```

There is two outputs:
* `ecr_host`
* `ecr_repo`

Example:
```
${module.my_registry.ecr_host}/${module.my_registry.ecr_repo}
```
