# Recommended Folder Structure

1. Main Terraform Configuration File.

2. `variables.tf` file that defines all the variables.

3. `terraform.tfvars` file that defines value to all the variables.

    For different environments:

    - Dev -> dev.tfvars
    - Staging -> staging.tfvars
    - Production -> prod.tfvars

## Command

```sh
terraform plan -var-file="<file-name>.tfvars"
terraform apply -var-file="<file-name>.tfvars"
terraform destroy -var-file="<file-name>.tfvars"
```
