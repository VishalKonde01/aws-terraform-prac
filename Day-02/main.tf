resource "aws_instance" "web_server" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  #count = var.instance_count
  associate_public_ip_address = var.assign-ip

  tags = {
    Name = "web-server"
  }
}