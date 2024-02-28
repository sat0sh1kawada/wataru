# aws_vpc_endpoint element
# main.tf
resource "aws_vpc_endpoint" "vpc_endpoint" {
  # Required
  service_name = var.vpc_endpoint_service_name
  vpc_id       = var.vpc_endpoint_vpc_id
  # Optional
  auto_accept         = var.vpc_endpoint_auto_accept
  policy              = var.vpc_endpoint_policy
  private_dns_enabled = var.vpc_endpoint_private_dns_enabled
  dynamic "dns_options" {
    for_each = var.vpc_endpoint_dns_options
    content {
      # Optional
      dns_record_ip_type                             = dns_options.value.vpc_endpoint_dns_options_dns_record_ip_type
      private_dns_only_for_inbound_resolver_endpoint = dns_options.value.vpc_endpoint_dns_options_private_dns_only_for_inbound_resolver_endpoint
    }
  }
  ip_address_type    = var.vpc_endpoint_ip_address_type
  route_table_ids    = var.vpc_endpoint_route_table_ids
  subnet_ids         = var.vpc_endpoint_subnet_ids
  security_group_ids = var.vpc_endpoint_security_group_ids
  tags               = var.vpc_endpoint_tags
  vpc_endpoint_type  = var.vpc_endpoint_vpc_endpoint_type
}
