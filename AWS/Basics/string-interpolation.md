# String Interpolation

`${...}` This syntax indicates Terrafrom to replace the expression inside the curly braces with its calculated value.

## Code Example

``` tf
resource "aws_vpc_security_group_ingress_rule" "allow-HHTPS" {
    security_group_id = aws_security_group.sample-sg.id
    cidr_ipv4 = "${aws_eip.lb.public_ip}/32"    # Single IP address
    from_port = 443
    ip_protocol = "tcp"
    to_port = 443
}
```
