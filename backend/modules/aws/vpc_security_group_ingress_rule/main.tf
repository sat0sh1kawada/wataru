# vpc_security_group_ingress_rule module
# main.tf
module "vpc_security_group_ingress_rule" {
  source = "../../../elements/aws/vpc_security_group_ingress_rule"

  vpc_security_group_ingress_rule_security_group_id            = var.vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_security_group_id
  vpc_security_group_ingress_rule_cidr_ipv4                    = var.vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_cidr_ipv4
  vpc_security_group_ingress_rule_cidr_ipv6                    = var.vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_cidr_ipv6
  vpc_security_group_ingress_rule_description                  = var.vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_description
  vpc_security_group_ingress_rule_from_port                    = var.vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_from_port
  vpc_security_group_ingress_rule_ip_protocol                  = var.vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_ip_protocol
  vpc_security_group_ingress_rule_prefix_list_id               = var.vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_prefix_list_id
  vpc_security_group_ingress_rule_referenced_security_group_id = var.vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_referenced_security_group_id
  vpc_security_group_ingress_rule_tags                         = var.vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_tags
  vpc_security_group_ingress_rule_to_port                      = var.vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_to_port
}
