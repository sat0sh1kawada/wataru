# aws_security_group element
# main.tf
resource "aws_security_group" "security_group" {
  # Optional
  description = var.security_group_description
  dynamic "egress" {
    for_each = var.security_group_egress
    content {
      # Optional
      cidr_blocks = egress.value.security_group_egress_cidr_blocks
      description = egress.value.security_group_egress_description
      from_port = egress.value.security_group_egress_from_port
      ipv6_cidr_blocks = egress.value.security_group_egress_ipv6_cidr_blocks
      prefix_list_ids = egress.value.security_group_egress_prefix_list_ids
      protocol = egress.value.security_group_egress_protocol
      security_groups = egress.value.security_group_egress_security_groups
      self = egress.value.security_group_egress_self
      to_port = egress.value.security_group_egress_to_port
    }
  }
  dynamic "ingress" {
    for_each = var.security_group_ingress
    content {
      cidr_blocks = ingress.value.security_group_ingress_cidr_blocks
      description = ingress.value.security_group_ingress_description
      from_port = ingress.value.security_group_ingress_from_port
      ipv6_cidr_blocks = ingress.value.security_group_ingress_ipv6_cidr_blocks
      prefix_list_ids = ingress.value.security_group_ingress_prefix_list_ids
      protocol = ingress.value.security_group_ingress_protocol
      security_groups = ingress.value.security_group_ingress_security_groups
      self = ingress.value.security_group_ingress_self
      to_port = ingress.value.security_group_ingress_to_port
    }
  }
  name_prefix = var.security_group_name_prefix
  name = var.security_group_name
  revoke_rules_on_delete = var.security_group_revoke_rules_on_delete
  tags = var.security_group_tags
  vpc_id = var.security_group_vpc_id
}