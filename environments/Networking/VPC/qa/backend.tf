terraform {
  backend "s3" {
    bucket = "terraform-backend-bucket-vishal"
    key    = "Networking/VPC/qa/test/terraform.tfstate"
    region = "ap-south-1"
  }
}