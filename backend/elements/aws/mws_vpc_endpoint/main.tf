# databricks_mws_vpc_endpoint element
# versions.tf
resource "databricks_mws_vpc_endpoint" "mws_vpc_endpoint" {
  # Required
  vpc_endpoint_name = var.mws_vpc_endpoint_vpc_endpoint_name
  # Optional
  account_id          = var.mws_vpc_endpoint_account_id
  aws_vpc_endpoint_id = var.mws_vpc_endpoint_aws_vpc_endpoint_id
  region              = var.mws_vpc_endpoint_region
}
