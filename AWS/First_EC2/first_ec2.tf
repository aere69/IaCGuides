provider "aws" {
  region     = "eu-west-2"
  access_key = var.ACCESS_KEY
  secret_key = var.ACCESS_KEY_SECRET
}

resource "aws_instance" "first_ec2" {
  ami = "ami-0c76bd4bd302b30ec"
  instance_type = "t2.micro"

  tags = {
    Name = "first_ec2"
  }
}