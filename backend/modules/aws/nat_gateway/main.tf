# nat_gateway module
# main.tf
module "nat_gateway" {
  source = "../../../elements/aws/nat_gateway"

  nat_gateway_subnet_id                          = var.nat_gateway_nat_gateway_subnet_id
  nat_gateway_allocation_id                      = var.nat_gateway_nat_gateway_allocation_id
  nat_gateway_connectivity_type                  = var.nat_gateway_nat_gateway_connectivity_type
  nat_gateway_private_ip                         = var.nat_gateway_nat_gateway_private_ip
  nat_gateway_secondary_allocation_ids           = var.nat_gateway_nat_gateway_secondary_allocation_ids
  nat_gateway_secondary_private_ip_address_count = var.nat_gateway_nat_gateway_secondary_private_ip_address_count
  nat_gateway_secondary_private_ip_addresses     = var.nat_gateway_nat_gateway_secondary_private_ip_addresses
  nat_gateway_tags                               = var.nat_gateway_nat_gateway_tags
}