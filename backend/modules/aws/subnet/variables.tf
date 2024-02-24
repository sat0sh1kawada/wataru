# subnet module
# variables.tf
variable "subnet_subnet_vpc_id" {
  type = string
}
variable "subnet_subnet_assign_ipv6_address_on_creation" {
  type = bool
}
variable "subnet_subnet_availability_zone" {
  type = string
}
variable "subnet_subnet_availability_zone_id" {
  type = string
}
variable "subnet_subnet_cidr_block" {
  type = string
}
variable "subnet_subnet_customer_owned_ipv4_pool" {
  type = string
}
variable "subnet_subnet_enable_dns64" {
  type = bool
}
variable "subnet_subnet_enable_lni_at_device_index" {
  type = number
}
variable "subnet_subnet_enable_resource_name_dns_aaaa_record_on_launch" {
  type = bool
}
variable "subnet_subnet_enable_resource_name_dns_a_record_on_launch" {
  type = bool
}
variable "subnet_subnet_ipv6_cidr_block" {
  type = string
}
variable "subnet_subnet_ipv6_native" {
  type = bool
}
variable "subnet_subnet_map_customer_owned_ip_on_launch" {
  type = bool
}
variable "subnet_subnet_map_public_ip_on_launch" {
  type = bool
}
variable "subnet_subnet_outpost_arn" {
  type = string
}
variable "subnet_subnet_private_dns_hostname_type_on_launch" {
  type = string
}
variable "subnet_subnet_tags" {
  type = map(string)
}
variable "subnet_route_table_association_route_table_id" {
  type = string
}
