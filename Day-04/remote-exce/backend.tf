terraform {
    backend "s3" {
      bucket = "terraform-backend-bucket-vishal"
      key = "compute/Day-04/remote-exce/terraform.tfstate"
      region = "ap-south-1"

    }
  
}