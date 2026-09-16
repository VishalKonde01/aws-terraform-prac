resource "aws_security_group" "allow_tls" {
  name = "allow_tls_remote"
  description = "This is security groups"
  vpc_id = "vpc-03346ed0a2bc17f51" 

  tags = {
    name = "day-04-remote-sg"
  }
}


resource "aws_vpc_security_group_egress_rule" "example" {
  security_group_id = aws_security_group.allow_tls.id
  ip_protocol = -1
  cidr_ipv4 = "0.0.0.0/0"
}


resource "aws_vpc_security_group_ingress_rule" "ssh" {
  security_group_id = aws_security_group.allow_tls.id
  ip_protocol = "tcp"
  cidr_ipv4 = "0.0.0.0/0"
  from_port = 22
  to_port = 22
}

resource "aws_vpc_security_group_ingress_rule" "http" {
  security_group_id = aws_security_group.allow_tls.id
  ip_protocol = "tcp"
  cidr_ipv4 = "0.0.0.0/0"
  from_port = 80
  to_port = 80
}

resource "aws_vpc_security_group_ingress_rule" "https" {
  security_group_id = aws_security_group.allow_tls.id
  ip_protocol = "tcp"
  cidr_ipv4 = "0.0.0.0/0"
  from_port = 443
  to_port = 443
}

resource "aws_vpc_security_group_ingress_rule" "icmp" {
  security_group_id = aws_security_group.allow_tls.id
  ip_protocol = "icmp"
  from_port = -1
  to_port = -1
  cidr_ipv4 = "0.0.0.0/0"
}

resource "aws_vpc_security_group_ingress_rule" "mysql" {
  security_group_id = aws_security_group.allow_tls.id
  ip_protocol = "tcp"
  cidr_ipv4 = "0.0.0.0/0"
  from_port = 3306
  to_port = 3306
}

resource "aws_vpc_security_group_ingress_rule" "apache" {
  security_group_id = aws_security_group.allow_tls.id
  ip_protocol = "tcp"
  cidr_ipv4 = "0.0.0.0/0"
  from_port = 8080
  to_port = 8080
}

