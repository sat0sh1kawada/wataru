# security_group module
# variables.tf
variable "security_group_security_group_description" {
    type = string
}
variable "security_group_security_group_egress" {
    type = list(object({
      security_group_egress_cidr_blocks = list(string)
      security_group_egress_description = string
      security_group_egress_from_port = number
      security_group_egress_ipv6_cidr_blocks = list(string)
      security_group_egress_prefix_list_ids = list(string)
      security_group_egress_protocol = string
      security_group_egress_security_groups = set(string)
      security_group_egress_self = bool
      security_group_egress_to_port = number
    }))
  }
variable "security_group_security_group_ingress" {
    type = list(object({
      security_group_ingress_cidr_blocks = list(string)
      security_group_ingress_description = string
      security_group_ingress_from_port = number
      security_group_ingress_ipv6_cidr_blocks = list(string)
      security_group_ingress_prefix_list_ids = list(string)
      security_group_ingress_protocol = string
      security_group_ingress_security_groups = set(string)
      security_group_ingress_self = bool
      security_group_ingress_to_port = number
    }))
  }
variable "security_group_security_group_name_prefix" {
    type = string
}
variable "security_group_security_group_name" {
    type = string
}
variable "security_group_security_group_revoke_rules_on_delete" {
    type = bool
}
variable "security_group_security_group_tags" {
    type = map(string)
}
variable "security_group_security_group_vpc_id" {
    type = string
}