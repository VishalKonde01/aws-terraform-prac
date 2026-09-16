terraform {
    backend "s3" {
      bucket = "terraform-backend-bucket-vishal"
      key = "compute/Day-03/terraform.tfstate"
      region = "ap-south-1"

    }
  
}