output "public_ip" {
  description = "THIS IS PUBLIC IP"
  value = module.ec2_module.public_ip
}

output "private_ip" {
  description = "This is Private IP"
  value = module.ec2_module.private_ip
}

output "public_dns" {
  description = "This is public DNS"
  value = module.ec2_module.public_dns
}

# output "security_group_id" {
#   value = module.ec2_module.security_group_id
# }