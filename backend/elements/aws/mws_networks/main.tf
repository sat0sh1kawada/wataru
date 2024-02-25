# databricks_mws_networks element
# main.tf
resource "databricks_mws_networks" "mws_networks" {
  # Required
  account_id   = var.mws_networks_account_id
  network_name = var.mws_networks_network_name
  # Optional
  vpc_id             = var.mws_networks_vpc_id
  subnet_ids         = var.mws_networks_subnet_ids
  security_group_ids = var.mws_networks_security_group_ids
  dynamic "vpc_endpoints" {
    for_each = var.mws_networks_vpc_endpoints
    content {
      # Required
      dataplane_relay = vpc_endpoints.value.mws_networks_vpc_endpoints_dataplane_relay
      rest_api        = vpc_endpoints.value.mws_networks_vpc_endpoints_rest_api
    }
  }
}
