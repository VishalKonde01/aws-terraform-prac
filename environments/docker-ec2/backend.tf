terraform {
  backend "s3" {
    bucket = "terraform-backend-bucket-vishal"
    key    = "compute/ec2/docker/terraform.tfstate"
    region = "ap-south-1"
  }
}