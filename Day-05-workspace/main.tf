resource "aws_key_pair" "custom_key" {
  key_name = "custom-key-${var.tags}"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKmFiOKVqRCrIAe5eiEftMi54p9ek05AFeuAySJalxk5 vishal@VISHALL"

}

resource "aws_instance" "web_server" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  #count = var.instance_count
  associate_public_ip_address = var.assign-ip
  key_name = aws_key_pair.custom_key.key_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

 

  tags = {
    Name = var.tags
  }
}