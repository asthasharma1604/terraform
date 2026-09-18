# Terraform Review Demo

The Terraform configuration is in the `terraform/` directory. It currently
uses only the local provider and creates a local example file.

## Local usage

```sh
terraform -chdir=terraform init
terraform -chdir=terraform validate
terraform -chdir=terraform plan
```

## GitHub Actions

The workflow runs Terraform from `terraform/` and expects these repository
secrets:

- `OPENAI_API_KEY`
- `GHP_SECRET_TOKEN`
