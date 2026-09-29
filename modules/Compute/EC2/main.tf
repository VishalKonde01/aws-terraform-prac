resource "aws_instance" "web_server" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  associate_public_ip_address = var.assign-ip
  vpc_security_group_ids = var.security_group_id

 user_data = <<-EOF
        #!/bin/bash
        yum install httpd -y
        systemctl start httpd
        systemctl enable httpd
        echo "HELLO FROM EC2 CREATED BY TERRAFORM" > /var/www/html/index.html
        EOF

  tags = {
    Name = var.instance_name
  }
}