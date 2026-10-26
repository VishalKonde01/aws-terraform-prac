terraform {
  backend "s3" {
    bucket = "terraform-backend-bucket-vishal"
    key    = "iam/roles/test/terraform.tfstate"
    region = "ap-south-1"
  }
}