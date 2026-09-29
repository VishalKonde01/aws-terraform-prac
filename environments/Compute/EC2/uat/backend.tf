terraform {
  backend "s3" {
    bucket = "terraform-backend-bucket-vishal"
    key    = "Compute/EC2/uat/test/terraform.tfstate"
    region = "ap-south-1"
  }
}