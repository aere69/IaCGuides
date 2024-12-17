# Terraform Variables

[Variables Documentation](https://developer.hashicorp.com/terraform/language/values/variables)

**Repeated static values** in code can create more work.
To avoid errors, repeated static values should be defined/stored in variables that can be set to a default value, loaded from file or manually changed at runtime.
Variables are important in production environments to keep code clean and reusable.

> HashiCorp recommends creating a separate file named `*.tfvars` to define all variable values in a project.

- If the file is `terraform.tfvars` Terraform will automaticatically take the values on this file.

- If the name is different it has to be specified at runtime (see example below)

## Basics of Variables

Terrafrom input variables are used to pass values from outside of the configuration.

Whenever a variable is defined, a value must be associated with it.
If the value of a variable is not defined, Terraform will ask to input the value in CLI Prompt when you run plan / apply operation.

## Benefits

1. Update important values in one central place, saving time and potential mistakes.

2. No need to modify the core Terraform configuration file. Avoid mistakes while editing.

## Setting Variables through Environment Variables

Terraform searches the environment of its own process for environment variable named **TF_VAR_** followed by the name of a declared variable.

## Variable Precedence

Terraform loads variables in the follwing order, with the later sources taking precedence over earlier ones:

1. Environment Variables
2. terraform.tfvars file, if present
3. terraform.tfvars.json file, if present
4. Any *.auto.tfvars or *.auto.tfvars.json files, processed in lexical order of their filenames.
5. Any -var and -var-file options on the command line

---

## Code Exaple

### variables.tf

[variables.tf](./variables.tf)

```sh
variable "vpn_ip" {
    default = "200.20.30.50/32"
    description = "This is a VPN Server Created in AWS"
}

variable "app_port" {
    default = "8080"
}

variable "ssh_port" {
    default = "22"
}

variable "ftp_port" {
    default = "21"
}
```

### main.tf

[main.tf](./main.tf)

```sh
resource "aws_security_group" "allow_tls" {
  name        = "terraform-firewall"
  description = "Managed from Terraform"
}

resource "aws_vpc_security_group_ingress_rule" "app_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.vpn_ip
  from_port         = var.app_port
  ip_protocol       = "tcp"
  to_port           = var.app_port
}

resource "aws_vpc_security_group_ingress_rule" "ssh_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.vpn_ip
  from_port         = var.ssh_port
  ip_protocol       = "tcp"
  to_port           = var.ssh_port
}

resource "aws_vpc_security_group_ingress_rule" "ftp_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.vpn_ip
  from_port         = var.ftp_port
  ip_protocol       = "tcp"
  to_port           = var.ftp_port
}
```

---

## Commands

```sh
terraform plan 
terraform apply -auto-approve
terraform destroy -auto-approve
```

To change the default value of a variable at run time:

```sh
terraform plan -var="vpn_ip=200.20.30.51/32"
terraform apply -var="vpn_ip=200.20.30.51/32" -auto-approve
terraform destroy -var="vpn_ip=200.20.30.51/32" -auto-approve
```

To change the default value of variables from file `<file-name>.tfvars`

```sh
terraform plan -var-file="secrets.tfvars"
terraform apply -var-file="secrets.tfvars" -auto-approve
terraform destroy -var-file="secrets.tfvars" -auto-approve
```

## Environment Variables in Windows

Open System Properties command:

``` sh
sysdm.cpl
```

## Environment Variables in Linux

Print environment variables

``` sh
printenv
```

Set envirnment variable

``` sh
export TF_VAR_instance_type=t2.large
echo $TF_VAR_instance_type
```
