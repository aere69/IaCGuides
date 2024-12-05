# Attributes

Each resource has its associated set of attributes

Attributes are the fields in a resource that hold the values that end up in state.

Once the plan is applied, the **Attributes** are stored on the state file `terraform.tfstate`

## Documentation

[https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip)

[https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance)

## Code

[main.tf](./main.tf)

``` tf
provider "aws"{
    region = "us-east-1"
}

resource "aws_eip" "lb" {
  domain   = "vpc"
}

resource "aws_instance" "web" {
  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"
}
```

## Commands

``` sh
terraform init
terraform plan -var-file="secret.tfvars"
terraform apply -var-file="secret.tfvars" -auto-approve
terraform destroy -var-file="secret.tfvars" -auto-approve
```
