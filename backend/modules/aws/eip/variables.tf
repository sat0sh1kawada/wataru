# eip module
# variables.tf
variable "eip_eip_address" {
  type = string
}
variable "eip_eip_associate_with_private_ip" {
  type = string
}
variable "eip_eip_customer_owned_ipv4_pool" {
  type = string
}
variable "eip_eip_domain" {
  type = string
}
variable "eip_eip_instance" {
  type = string
}
variable "eip_eip_network_border_group" {
  type = string
}
variable "eip_eip_network_interface" {
  type = string
}
variable "eip_eip_public_ipv4_pool" {
  type = string
}
variable "eip_eip_tags" {
  type = map(string)
}

