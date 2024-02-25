# security_group module
# main.tf
module "security_group" {
  source = "../../../elements/aws/security_group"

  security_group_description            = var.security_group_security_group_description
  security_group_egress                 = var.security_group_security_group_egress
  security_group_ingress                = var.security_group_security_group_ingress
  security_group_name_prefix            = var.security_group_security_group_name_prefix
  security_group_name                   = var.security_group_security_group_name
  security_group_revoke_rules_on_delete = var.security_group_security_group_revoke_rules_on_delete
  security_group_tags                   = var.security_group_security_group_tags
  security_group_vpc_id                 = var.security_group_security_group_vpc_id
}
