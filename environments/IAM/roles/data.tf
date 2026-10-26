data "terraform_remote_state" "iam_policy" {
  
backend = "s3"

config = {
   bucket = "terraform-backend-bucket-vishal"
    key    = "iam/policy/test/terraform.tfstate"
    region = "ap-south-1"
}

}