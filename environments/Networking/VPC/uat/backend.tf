terraform {
  backend "s3" {
    bucket = "terraform-backend-bucket-vishal"
    key    = "Networking/VPC/uat/test/terraform.tfstate"
    region = "ap-south-1"
  }
}