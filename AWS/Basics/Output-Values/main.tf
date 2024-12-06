resource "aws_eip" "lb" {
  domain   = "cdm"
}

output "public-ip" {
  value = aws_eip.lb.public_ip
}