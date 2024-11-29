# Terraform Basics

## Commands

1. **init**
Initialize the backend and provider plugins.

2. **plan**
Create a deployment plan. Useful to validate that what will be deployed matches what you want.
If there are changes to the code, the plan will reflect the changes in relation to the previous plan.

3. **apply**
Will deploy the plan to the provider.

Using the `-refresh-only` flag with terraform `apply` allows you to review the proposed changes before updating the **state file**, reducing the risk of accidentally removing resources from the state

4. **destroy**
Will delete all resources created according to the plan on the current folder.

To destroy specific resources target and the Resource Type followed by the Local Resource Name:

```sh
terraform destory -target resource-type.local-resource-name
```

If a resource is commented out in code (/* ... */) then terraform will try to destroy the resource if it still exists.

## Notes

To replace variables at runtime:

```sh
terraform <command> -var-file="filename.tfvars"
```
