data "terraform_remote_state" "iam_user_dave" {
  
backend = "s3"

config = {
   bucket = "terraform-backend-bucket-vishal"
    key    = "iam/users/test/terraform.tfstate"
    region = "ap-south-1"
}

}