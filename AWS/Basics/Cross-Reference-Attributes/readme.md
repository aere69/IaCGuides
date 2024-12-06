# Cross Referencing Resource Attributes

Terraforms allows to reference the attribute of one resource to be used in a different resource.

## Syntax

```
<resource_type>.<name>.<attribute>
```

## Documentation

[EIP](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip)

[Instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance)

## Code

[main.tf](./main.tf)

``` tf
resource "aws_eip" "lb" {
  domain   = "cdm"
}

resource "aws_security_group" "example" {
  name        = "attribute-sg"
}

resource "aws_vpc_security_group_ingress_rule" "example" {
  security_group_id = aws_security_group.example.id

  cidr_ipv4   = "${aws_eip.lb.public_ip}/32"
  from_port   = 443
  ip_protocol = "tcp"
  to_port     = 443
}
```

## Commands

``` sh
terraform plan -var-file="secret.tfvars"
terraform apply -var-file="secret.tfvars" -auto-approve
terraform destroy -var-file="secret.tfvars" -auto-approve
```
