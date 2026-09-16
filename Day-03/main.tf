
resource "aws_instance" "web_server" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  #count = var.instance_count
  associate_public_ip_address = var.assign-ip
  key_name = "l3-mumbai"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  user_data = <<-EOF
        #!/bin/bash
        yum install httpd -y
        systemctl start httpd
        systemctl enable httpd
        echo "HELLO FROM EC2 CREATED BY TERRAFORM" > /var/www/html/index.html
        EOF


  tags = {
    Name = "web-server"
  }
}