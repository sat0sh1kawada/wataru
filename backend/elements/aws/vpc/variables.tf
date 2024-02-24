# aws_vpc element
# variables.tf
variable "vpc_cidr_block" {
  type = string
}
variable "vpc_instance_tenancy" {
  type = string
}
variable "vpc_ipv4_ipam_pool_id" {
  type = string
}
variable "vpc_ipv4_netmask_length" {
  type = number
}
variable "vpc_ipv6_ipam_pool_id" {
  type = string
}
variable "vpc_ipv6_cidr_block" {
  type = string
}
variable "vpc_ipv6_netmask_length" {
  type = number
}
variable "vpc_ipv6_cidr_block_network_border_group" {
  type = string
}
variable "vpc_enable_dns_support" {
  type = bool
}
variable "vpc_enable_network_address_usage_metrics" {
  type = bool
}
variable "vpc_enable_dns_hostnames" {
  type = bool
}
variable "vpc_assign_generated_ipv6_cidr_block" {
  type = bool
}
variable "vpc_tags" {
  type = map(string)
}