# vpc_endpoint module
# main.tf
module "vpc_endpoint" {
  source = "../../../elements/aws/vpc_endpoint"

  vpc_endpoint_service_name        = var.vpc_endpoint_vpc_endpoint_service_name
  vpc_endpoint_vpc_id              = var.vpc_endpoint_vpc_endpoint_vpc_id
  vpc_endpoint_auto_accept         = var.vpc_endpoint_vpc_endpoint_auto_accept
  vpc_endpoint_policy              = var.vpc_endpoint_vpc_endpoint_policy
  vpc_endpoint_private_dns_enabled = var.vpc_endpoint_vpc_endpoint_private_dns_enabled
  vpc_endpoint_dns_options         = var.vpc_endpoint_vpc_endpoint_dns_options
  vpc_endpoint_ip_address_type     = var.vpc_endpoint_vpc_endpoint_ip_address_type
  vpc_endpoint_route_table_ids     = var.vpc_endpoint_vpc_endpoint_route_table_ids
  vpc_endpoint_subnet_ids          = var.vpc_endpoint_vpc_endpoint_subnet_ids
  vpc_endpoint_security_group_ids  = var.vpc_endpoint_vpc_endpoint_security_group_ids
  vpc_endpoint_tags                = var.vpc_endpoint_vpc_endpoint_tags
  vpc_endpoint_vpc_endpoint_type   = var.vpc_endpoint_vpc_endpoint_vpc_endpoint_type
}
