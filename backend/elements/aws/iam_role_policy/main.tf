# aws_iam_role_policy element
# main.tf
resource "aws_iam_role_policy" "iam_role_policy" {
  # Required
  policy = var.iam_role_policy_policy
  role   = var.iam_role_policy_role
  # Optional
  name        = var.iam_role_policy_name
  name_prefix = var.iam_role_policy_name_prefix
}