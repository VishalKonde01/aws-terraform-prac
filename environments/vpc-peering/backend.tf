terraform {
  backend "s3" {
    bucket = "terraform-backend-bucket-vishal"
    key    = "Networking/VPC-PEERING/test/terraform.tfstate"
    region = "ap-south-1"
  }
}