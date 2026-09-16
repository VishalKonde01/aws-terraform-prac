terraform {
    backend "s3" {
      bucket = "terraform-backend-bucket-vishal"
      key = "compute/Day-04/local-exe/terraform.tfstate"
      region = "ap-south-1"

    }
  
}