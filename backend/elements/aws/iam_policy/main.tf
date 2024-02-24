# aws_iam_policy element
# main.tf
resource "aws_iam_policy" "iam_policy" {
  # Required
  policy = var.iam_policy_policy
  # Optional
  description = var.iam_policy_description
  name        = var.iam_policy_name
  name_prefix = var.iam_policy_name_prefix
  path        = var.iam_policy_path
  tags        = var.iam_policy_tags
}