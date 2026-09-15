terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.63.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}



resource "aws_instance" "web_server" {
  ami           = "ami-090d68841c2a28756"
  instance_type = "t3.micro"
  subnet_id ="subnet-00e88bbf507dcf4bf"
  #count = var.instance_count
  #associate_public_ip_address = var.assign-ip

  tags = {
    Name = "web-server"
  }
}