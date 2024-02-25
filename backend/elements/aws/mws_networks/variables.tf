# databricks_mws_networks element
# variables.tf
variable "mws_networks_account_id" {
  type = string
}
variable "mws_networks_network_name" {
  type = string
}
variable "mws_networks_vpc_id" {
  type = string
}
variable "mws_networks_subnet_ids" {
  type = set(string)
}
variable "mws_networks_security_group_ids" {
  type = set(string)
}
variable "mws_networks_vpc_endpoints" {
  type = list(object({
    mws_networks_vpc_endpoints_dataplane_relay = set(string)
    mws_networks_vpc_endpoints_rest_api        = set(string)
  }))
}
