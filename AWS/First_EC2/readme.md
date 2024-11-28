# Terraform Basics - First EC2

Basics of creating an EC2 instance.

- [first_ec2.tf](./first_ec2.tf) Sample code to create a VM
- [variables.tf](./variables.tf) Sample variables used in code.

## Commands

1. **init**
Initialize the backend and provider plugins.

2. **plan**
Create a deployment plan. Useful to validate that what will be deployed matches what you want.
If there are changes to the code, the plan will reflect the changes in relation to the previous plan.

3. **apply**
Will deploy the plan to the provider.

4. **destroy**
Will delete all resources created according to the plan.

To replace variables at runtime:

```sh
terraform <command> -var-file="filename.tfvars"
```
