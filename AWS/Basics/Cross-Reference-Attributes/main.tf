/* Cross Reference Attributes */

resource "aws_eip" "lb" {
    domain = "cdm"  
}

resource "aws_security_group" "sample-sg" {
    name = "attibutes-sg"
}

resource "aws_vpc_security_group_ingress_rule" "allow-HHTPS" {
    security_group_id = aws_security_group.sample-sg.id
    cidr_ipv4 = "${aws_eip.lb.public_ip}/32"
    from_port = 443
    ip_protocol = "tcp"
    to_port = 443
}