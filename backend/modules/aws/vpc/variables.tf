# vpc module
# variables.tf
variable "vpc_vpc_cidr_block" {
  type = string
}
variable "vpc_vpc_instance_tenancy" {
  type = string
}
variable "vpc_vpc_ipv4_ipam_pool_id" {
  type = string
}
variable "vpc_vpc_ipv4_netmask_length" {
  type = number
}
variable "vpc_vpc_ipv6_ipam_pool_id" {
  type = string
}
variable "vpc_vpc_ipv6_cidr_block" {
  type = string
}
variable "vpc_vpc_ipv6_netmask_length" {
  type = number
}
variable "vpc_vpc_ipv6_cidr_block_network_border_group" {
  type = string
}
variable "vpc_vpc_enable_dns_support" {
  type = bool
}
variable "vpc_vpc_enable_network_address_usage_metrics" {
  type = bool
}
variable "vpc_vpc_enable_dns_hostnames" {
  type = bool
}
variable "vpc_vpc_assign_generated_ipv6_cidr_block" {
  type = bool
}
variable "vpc_vpc_tags" {
  type = map(string)
}

/*
//variable "internet_gateway_is_create" {}
variable "internet_gateway_internet_gateway_tags" {}

variable "default_route_table_default_route_table_tags" {}

/*
variable "route_table_association_for_each" {}
*/

