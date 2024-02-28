# mws_vpc_endpoint module
# main.tf
module "mws_vpc_endpoint" {
  source = "../../../elements/aws/mws_vpc_endpoint"

  mws_vpc_endpoint_vpc_endpoint_name   = var.mws_vpc_endpoint_mws_vpc_endpoint_vpc_endpoint_name
  mws_vpc_endpoint_account_id          = var.mws_vpc_endpoint_mws_vpc_endpoint_account_id
  mws_vpc_endpoint_aws_vpc_endpoint_id = var.mws_vpc_endpoint_mws_vpc_endpoint_aws_vpc_endpoint_id
  mws_vpc_endpoint_region              = var.mws_vpc_endpoint_mws_vpc_endpoint_region
}
