# aws_iam_role element
# main.tf
resource "aws_iam_role" "iam_role" {
  # Required
  assume_role_policy = var.iam_role_assume_role_policy
  # Optional
  description           = var.iam_role_description
  force_detach_policies = var.iam_role_force_detach_policies
  dynamic "inline_policy" {
    for_each = var.iam_role_inline_policy
    content {
      # Required
      name   = inline_policy.name
      policy = inline_policy.policy
    }
  }
  managed_policy_arns  = var.iam_role_managed_policy_arns
  max_session_duration = var.iam_role_max_session_duration
  name                 = var.iam_role_name
  name_prefix          = var.iam_role_name_prefix
  path                 = var.iam_role_path
  permissions_boundary = var.iam_role_permissions_boundary
  tags                 = var.iam_role_tags
}