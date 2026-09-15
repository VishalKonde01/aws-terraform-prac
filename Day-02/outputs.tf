output "public_ip" {
  description = "THIS IS PUBLIC IP"
  value = aws_instance.web_server.public_ip
}

output "private_ip" {
  description = "This is Private IP"
  value = aws_instance.web_server.private_ip
}

output "public_dns" {
  description = "This is public DNS"
  value = aws_instance.web_server.public_dns
}