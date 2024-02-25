# vpc_security_group_ingress_rule module
# variables.tf
variable "vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_security_group_id" {
  type = string
}
variable "vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_cidr_ipv4" {
  type = string
}
variable "vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_cidr_ipv6" {
  type = string
}
variable "vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_description" {
  type = string
}
variable "vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_from_port" {
  type = number
}
variable "vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_ip_protocol" {
  type = string
}
variable "vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_prefix_list_id" {
  type = string
}
variable "vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_referenced_security_group_id" {
  type = string
}
variable "vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_tags" {
  type = map(string)
}
variable "vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_to_port" {
  type = number
}
