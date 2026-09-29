data "terraform_remote_state" "vpc_backend" {
  
backend = "s3"

config = {
   bucket = "terraform-backend-bucket-vishal"
    key    = "Networking/VPC/prod/test/terraform.tfstate"
    region = "ap-south-1"
}

}