/* ----- Elastic IP - Public IP ----- */

resource "aws_eip" "publicIp" {
  # instance = aws_instance.web.id # (Optional) EC2/VM instance
  domain   = "vpc" # (Optional)
}
