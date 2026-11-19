
output "public_ip" {

  value = aws_instance.docker_server.public_ip
}

output "ssh_command" {
    description = "SSH command to connect to the EC2 instance"

  value = "ssh -i l3-mumbai.pem ec2-user@${aws_instance.docker_server.public_ip}"
}