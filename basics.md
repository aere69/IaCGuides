# Terraform Basics

## Commands

1. **init**
Initialize the backend and provider plugins.

2. **plan**
Create a deployment plan. Useful to validate that what will be deployed matches what you want.
If there are changes to the code, the plan will reflect the changes in relation to the previous plan.

3. **apply**
Will deploy the plan to the provider.

4. **destroy**
Will delete all resources created according to the plan on the current folder.

To destroy specific resources target and the Resource Type followed by the Local Resource Name:

```sh
terraform destory -target resource-type.local-resource-name
```

## Notes

To replace variables at runtime:

```sh
terraform <command> -var-file="filename.tfvars"
```
