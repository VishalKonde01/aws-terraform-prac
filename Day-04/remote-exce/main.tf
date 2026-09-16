resource "aws_key_pair" "custom_key" {
  key_name = "custom-key-remote"
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

  provisioner "remote-exec" {
    inline = [
      "#!/bin/bash",
      "sudo yum install httpd -y",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd",
      "echo '<h1>HELLLLOOOOOOOOOOO! FROM TERRAFORM REMOTE PRO</h1>' |sudo tee /var/www/html/index.html"

    ]
  
  connection {
      type        = "ssh"
      host        = self.public_ip
      user        = "ec2-user"
      private_key = file("C:\\Users\\Vishal\\OneDrive\\Desktop\\terraform\\Day-04\\file-provisioners\\custom-key")
      timeout     = "4m"
   }
  }
  # user_data = <<-EOF
  #       #!/bin/bash
  #       yum install httpd -y
  #       systemctl start httpd
  #       systemctl enable httpd
  #       echo "HELLO FROM EC2 CREATED BY TERRAFORM" > /var/www/html/index.html
  #       EOF


  tags = {
    Name = "web-server"
  }
}