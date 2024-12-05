# Elastic IP - Public IP

## Documentation

[https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip)

## Code

[main.tf](./main.tf)

```tf
resource "aws_eip" "publicIp" {
  domain   = "vpc" # (Optional)
}
```

## Command used

```sh
terraform apply -auto-approve
terraform destory -auto-approve
```
