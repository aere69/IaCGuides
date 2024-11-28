# Authenticate Terraform to Azure

Terraform only supports authenticating to Azure with the Azure CLI. Authenticating using Azure PowerShell isn't supported. Therefore, while you can use the Azure PowerShell module when doing your Terraform work, you first need to authenticate to Azure using the Azure CLI.

1. Run az login without any parameters and follow the instructions to sign in to Azure.

```sh
az login
```

2. To confirm the current Azure subscription, run [az account show](https://learn.microsoft.com/en-us/cli/azure/account#az-account-show).

```sh
az account show
```

3. To view all the Azure subscription names and IDs for a specific Microsoft account, run [az account list](https://learn.microsoft.com/en-us/cli/azure/account#az-account-list).

```sh
az account list --query "[?user.name=='<microsoft_account_email>'].{Name:name, ID:id, Default:isDefault}" --output Table
```

4. To use a specific Azure subscription, run [az account set](https://learn.microsoft.com/en-us/cli/azure/account#az-account-set).

```sh
az account set --subscription "<subscription_id_or_subscription_name>"
```

## Verify the results

Verify that you've authenticated to the Azure subscription by displaying the current subscription.

- **CLI**

```sh
az account show
```

- **PowerShell**

```sh
Get-AzContext
```
