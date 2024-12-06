# Output Values

**Output Values** make information about the infrastructure available on the command line. Can expose information for other Terraform configurations to use.

## Common Code

``` sh
provider "aws" {
  region = "eu-west-2"
}

resource "aws_eip" "lb" {
  domain   = "cdm"
}
```

## Use Cases

- Create Elastic IP (Public IP) resource in AWS and output all the values

    ``` sh
    < --- Common Code ---- >
    output "public-ip" {
      value = aws_eip.lb
    }
    ```

- Create Elastic IP (Public IP) resource in AWS and output the value of the EIP

    ``` sh
    < --- Common Code ---- >
    output "public-ip" {
      value = aws_eip.lb.public_ip
    }
    ```

- Create Elastic IP (Public IP) resource in AWS and output the connection URL

    ``` sh
    < --- Common Code ---- >
    output "public-ip" {
      value = "https://${aws_eip.lb.public_ip}:8080"
    }
    ```

## Commands

``` sh
terraform plan
terraform apply -auto-approve
terraform destroy -auto-approve
```
