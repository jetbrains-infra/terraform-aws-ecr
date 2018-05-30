## About
Terraform module to create AWS ECR with retention rules.

## Usage
```
module "my_registry" {
  source = "github.com/jetbrains-infra/aws-ecr-terraform-module"
  name = "reponame"
}
```

There is two outputs:
* `ecr_host`
* `ecr_repo`

Example:
```
${module.my_registry.ecr_host}/${module.my_registry.ecr_repo}
```
