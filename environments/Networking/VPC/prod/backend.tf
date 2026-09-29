terraform {
  backend "s3" {
    bucket = "terraform-backend-bucket-vishal"
    key    = "Networking/VPC/prod/test/terraform.tfstate"
    region = "ap-south-1"
  }
}