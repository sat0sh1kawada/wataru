# mws_credentials module
# main.tf

data "databricks_aws_assume_role_policy" "aws_assume_role_policy" {
  external_id = var.aws_assume_role_policy_external_id
}

module "iam_role" {
  source = "../../../elements/aws/iam_role"

  iam_role_assume_role_policy    = data.databricks_aws_assume_role_policy.aws_assume_role_policy.json
  iam_role_description           = "Cross Account Role for Databricks"
  iam_role_force_detach_policies = null
  iam_role_inline_policy         = {}
  iam_role_managed_policy_arns   = null
  iam_role_max_session_duration  = null
  iam_role_name                  = "databricks-${var.mws_credentials_mws_credentials_credentials_name}-cross-account-role"
  iam_role_name_prefix           = null
  iam_role_path                  = null
  iam_role_permissions_boundary  = null
  iam_role_tags                  = null
}

data "databricks_aws_crossaccount_policy" "aws_crossaccount_policy" {
}

module "iam_role_policy" {
  source = "../../../elements/aws/iam_role_policy"

  iam_role_policy_name        = "databricks-${var.mws_credentials_mws_credentials_credentials_name}-cross-account-role-policy"
  iam_role_policy_name_prefix = null
  iam_role_policy_policy      = data.databricks_aws_crossaccount_policy.aws_crossaccount_policy.json
  iam_role_policy_role        = module.iam_role.iam_role_id
}

module "sleep" {
  source                = "../../../elements/aws/sleep"
  depends_on            = [module.iam_role]
  sleep_create_duration = "10s"
}

module "mws_credentials" {
  source                           = "../../../elements/aws/mws_credentials"
  mws_credentials_credentials_name = var.mws_credentials_mws_credentials_credentials_name
  mws_credentials_role_arn         = module.iam_role.iam_role_arn
  depends_on                       = [module.iam_role, module.sleep]
}
