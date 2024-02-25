# mws_networks module
# main.tf
module "mws_networks" {
  source = "../../../elements/aws/mws_networks"

  mws_networks_account_id         = var.mws_networks_mws_networks_account_id
  mws_networks_network_name       = var.mws_networks_mws_networks_network_name
  mws_networks_vpc_id             = var.mws_networks_mws_networks_vpc_id
  mws_networks_subnet_ids         = var.mws_networks_mws_networks_subnet_ids
  mws_networks_security_group_ids = var.mws_networks_mws_networks_security_group_ids
  mws_networks_vpc_endpoints      = var.mws_networks_mws_networks_vpc_endpoints
}
