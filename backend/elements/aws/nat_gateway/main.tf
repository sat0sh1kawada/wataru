# aws_nat_gateway element
# main.tf
resource "aws_nat_gateway" "nat_gateway" {
  # Required
  subnet_id = var.nat_gateway_subnet_id
  # Optional
  allocation_id                      = var.nat_gateway_allocation_id
  connectivity_type                  = var.nat_gateway_connectivity_type
  private_ip                         = var.nat_gateway_private_ip
  secondary_allocation_ids           = var.nat_gateway_secondary_allocation_ids
  secondary_private_ip_address_count = var.nat_gateway_secondary_private_ip_address_count
  secondary_private_ip_addresses     = var.nat_gateway_secondary_private_ip_addresses
  tags                               = var.nat_gateway_tags
}