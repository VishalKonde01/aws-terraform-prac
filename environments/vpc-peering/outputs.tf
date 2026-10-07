# Outputs for VPC Peering Demo

output "primary_vpc_id" {
  description = "ID of the Primary VPC"
  value       = aws_vpc.primary_vpc.id
}

output "secondary_vpc_id" {
  description = "ID of the Secondary VPC"
  value       = aws_vpc.secondary_vpc.id
}

output "third_vpc_id" {
  description = "ID of the Third VPC"
  value = aws_vpc.third_vpc.id
}

output "primary_vpc_cidr" {
  description = "CIDR block of the Primary VPC"
  value       = aws_vpc.primary_vpc.cidr_block
}

output "secondary_vpc_cidr" {
  description = "CIDR block of the Secondary VPC"
  value       = aws_vpc.secondary_vpc.cidr_block
}

output "third_vpc_cidr" {
  description = "CIDR block of the third VPC"
value = aws_vpc.third_vpc.cidr_block
}

output "primary_to_Secondary_vpc_peering_connection_id" {
  description = "ID of the VPC Peering Connection 1"
  value       = aws_vpc_peering_connection.primary_to_secondary.id
}


output "secondary_to_third_vpc_peering_connection_id" {
  description = "ID of the VPC Peering Connection 2"
  value       = aws_vpc_peering_connection.secondary_to_third.id
}


output "third_to_primary_vpc_peering_connection_id" {
  description = "ID of the VPC Peering Connection"
  value       = aws_vpc_peering_connection.third_to_primary.id
}

output "vpc_peering_status" {
  description = "Status of the VPC Peering Connection"
  value       = aws_vpc_peering_connection.primary_to_secondary.accept_status
}

output "primary_instance_id" {
  description = "ID of the Primary EC2 Instance"
  value       = aws_instance.primary_instance.id
}

output "secondary_instance_id" {
  description = "ID of the Secondary EC2 Instance"
  value       = aws_instance.secondary_instance.id
}

output "Third_instance_id" {
  description = "ID of the Third EC2 Instance"
  value       = aws_instance.third_instance.id
}

output "primary_instance_private_ip" {
  description = "Private IP of the Primary EC2 Instance"
  value       = aws_instance.primary_instance.private_ip
}

output "secondary_instance_private_ip" {
  description = "Private IP of the Secondary EC2 Instance"
  value       = aws_instance.secondary_instance.private_ip
}

output "third_instance_private_ip" {
  description = "Private IP of the third EC2 Instance"
  value       = aws_instance.third_instance.private_ip
}

output "primary_instance_public_ip" {
  description = "Public IP of the Primary EC2 Instance"
  value       = aws_instance.primary_instance.public_ip
}

output "secondary_instance_public_ip" {
  description = "Public IP of the Secondary EC2 Instance"
  value       = aws_instance.secondary_instance.public_ip
}

output "third_instance_public_ip" {
  description = "Public IP of the Third EC2 Instance"
  value       = aws_instance.third_instance.public_ip
}

# output "test_connectivity_command" {
#   description = "Command to test connectivity between VPCs"
#   value       = <<-EOT
#     To test VPC peering connectivity:
#     1. SSH into Primary instance: ssh -i vpc-peering-demo-east.pem ubuntu@${aws_instance.primary_instance.public_ip}
#     2. Ping Secondary instance: ping ${aws_instance.secondary_instance.private_ip}
    
#     Or:
#     1. SSH into Secondary instance: ssh -i vpc-peering-demo-west.pem ubuntu@${aws_instance.secondary_instance.public_ip}
#     2. Ping Primary instance: ping ${aws_instance.primary_instance.private_ip}
#   EOT
# }