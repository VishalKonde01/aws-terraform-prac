module "aws_iam_policy" {
    source = "../../../modules/IAM/policy"
  policy_json = file(
    "${path.module}/ec2-readonly-policy.json"
  )
    aws_region = var.aws_region
}