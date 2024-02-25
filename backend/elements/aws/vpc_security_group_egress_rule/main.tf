# aws_vpc_security_group_egress_rule element
# main.tf
resource "aws_vpc_security_group_egress_rule" "vpc_security_group_egress_rule" {
  # Required
  security_group_id = var.vpc_security_group_egress_rule_security_group_id
  # Optional
  cidr_ipv4                    = var.vpc_security_group_egress_rule_cidr_ipv4
  cidr_ipv6                    = var.vpc_security_group_egress_rule_cidr_ipv6
  description                  = var.vpc_security_group_egress_rule_description
  from_port                    = var.vpc_security_group_egress_rule_from_port
  ip_protocol                  = var.vpc_security_group_egress_rule_ip_protocol
  prefix_list_id               = var.vpc_security_group_egress_rule_prefix_list_id
  referenced_security_group_id = var.vpc_security_group_egress_rule_referenced_security_group_id
  tags                         = var.vpc_security_group_egress_rule_tags
  to_port                      = var.vpc_security_group_egress_rule_to_port
}
