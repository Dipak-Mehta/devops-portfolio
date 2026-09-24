# Terraform

Infrastructure as Code examples and patterns.

## Focus Areas

- AWS / GCP infrastructure
- VPC and networking
- IAM
- Compute
- Load balancing
- Kubernetes infrastructure
- Reusable modules
- Remote state
- Variables and outputs

## Typical workflow

```bash
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply
```

> Never commit cloud credentials, service-account keys, tfvars containing secrets, or Terraform state files.
