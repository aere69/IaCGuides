/* count - meta argument */

resource "aws_instance" "myec2" {
  ami = "ami-00c39f71452c08778"
  instance_type = "t2.micro"

  count = 3     # Number of instance to create

  tags = {
    Name = "payments-system-${count.index}"
  }
}

/* ------------------------------- */

variable "users" {
  type = list
  default = ["alice", "bob", "johncorner","james","mrA"]
}

resource "aws_iam_user" "that" {
  name = var.users[count.index]
  count = 5
}