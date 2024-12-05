/* ----- Attributes ----- */
/* Attributes are stored on the state file `terraform.tfstate` */

resource "aws_eip" "lb" {
  domain   = "vpc"
}

resource "aws_instance" "web" {
  ami = "ami-0c76bd4bd302b30ec"
  instance_type = "t2.micro"
}
