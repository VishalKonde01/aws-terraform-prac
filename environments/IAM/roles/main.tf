module "aws_iam_role" {
  source = "../../../modules/IAM/roles"
  environment = var.environment
  project_name = var.project_name
iam_role_name = var.iam_role_name
aws_region = var.aws_region
role_policy_arn = data.terraform_remote_state.iam_policy.outputs.policy_arn
}