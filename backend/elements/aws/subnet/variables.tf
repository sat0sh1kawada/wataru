# aws_subnet element
# variables.tf
variable "subnet_vpc_id" {
  type = string
}
variable "subnet_assign_ipv6_address_on_creation" {
  type = bool
}
variable "subnet_availability_zone" {
  type = string
}
variable "subnet_availability_zone_id" {
  type = string
}
variable "subnet_cidr_block" {
  type = string
}
variable "subnet_customer_owned_ipv4_pool" {
  type = string
}
variable "subnet_enable_dns64" {
  type = bool
}
variable "subnet_enable_lni_at_device_index" {
  type = number
}
variable "subnet_enable_resource_name_dns_aaaa_record_on_launch" {
  type = bool
}
variable "subnet_enable_resource_name_dns_a_record_on_launch" {
  type = bool
}
variable "subnet_ipv6_cidr_block" {
  type = string
}
variable "subnet_ipv6_native" {
  type = bool
}
variable "subnet_map_customer_owned_ip_on_launch" {
  type = bool
}
variable "subnet_map_public_ip_on_launch" {
  type = bool
}
variable "subnet_outpost_arn" {
  type = string
}
variable "subnet_private_dns_hostname_type_on_launch" {
  type = string
}
variable "subnet_tags" {
  type = map(string)
}
