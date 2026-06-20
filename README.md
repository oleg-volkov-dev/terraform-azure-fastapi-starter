# Terraform Azure FastAPI Starter

A learning project that provisions basic Azure infrastructure using Terraform.

> Not production-ready — built to practice IaC concepts and build a DevOps portfolio piece.

## What It Creates

| Resource | Free tier |
|---|---|
| Resource Group | Yes |
| Storage Account (Standard LRS) | Yes |
| Private blob container | Yes |

**Not included:** App Service Plan + Linux Web App require a VM quota that Azure free subscriptions do not provide (quota limit: 0 VMs). These resources are documented in `infra/main.tf` with a note on what's needed to add them.

## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/install) >= 1.5
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) + an Azure free subscription

## Usage

```bash
az login

cd infra
cp terraform.tfvars.example terraform.tfvars

terraform init
terraform plan
terraform apply

# when done
terraform destroy
```

## Key Variables

| Variable | Default | Description |
|---|---|---|
| `location` | `westus` | Azure region |
| `environment` | `dev` | Environment label |
| `app_name` | `fastapi-starter` | Prefix for resource names |
| `storage_account_tier` | `Standard` | Storage performance tier |
| `storage_replication_type` | `LRS` | Replication strategy |

## CI

GitHub Actions runs `terraform fmt -check`, `terraform init`, and `terraform validate` on every push and pull request.
