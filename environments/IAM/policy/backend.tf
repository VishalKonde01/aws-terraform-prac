terraform {
  backend "s3" {
    bucket = "terraform-backend-bucket-vishal"
    key    = "iam/policy/test/terraform.tfstate"
    region = "ap-south-1"
  }
}