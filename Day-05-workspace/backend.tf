terraform {
    backend "s3" {
      bucket = "terraform-backend-bucket-vishal"
      key = "compute/Day-05-workspace/terraform.tfstate"
      region = "ap-south-1"

    }
  
}