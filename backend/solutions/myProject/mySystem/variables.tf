variable "aws_region" {
  type = string
}
variable "databricks_region" {
  type = string
}
variable "databricks_account_id" {
  type = string
}
variable "databricks_client_id" {
  type = string
}
variable "databricks_client_secret" {
  type = string
}

variable "iam_iam_group_name" {}
variable "iam_iam_group_path" {}

variable "iam_iam_user_name" {}
variable "iam_iam_user_path" {}
variable "iam_iam_user_permissions_boundary" {}
variable "iam_iam_user_force_destroy" {}
variable "iam_iam_user_tags" {}

variable "iam_iam_group_membership_name" {}
variable "iam_iam_group_membership_users" {}
variable "iam_iam_group_membership_group" {}

variable "iam_role_iam_role_assume_role_policy" {}
variable "iam_role_iam_role_description" {}
variable "iam_role_iam_role_force_detach_policies" {}
variable "iam_role_iam_role_inline_policy" {}
variable "iam_role_iam_role_managed_policy_arns" {}
variable "iam_role_iam_role_max_session_duration" {}
variable "iam_role_iam_role_name" {}
variable "iam_role_iam_role_name_prefix" {}
variable "iam_role_iam_role_path" {}
variable "iam_role_iam_role_permissions_boundary" {}
variable "iam_role_iam_role_tags" {}

variable "iam_role_iam_policy_description" {}
variable "iam_role_iam_policy_name" {}
variable "iam_role_iam_policy_name_prefix" {}
variable "iam_role_iam_policy_path" {}
variable "iam_role_iam_policy_tags" {}

variable "iam_role_iam_policy_attachment_name" {}

variable "iam_role2_iam_role_assume_role_policy" {}
variable "iam_role2_iam_role_description" {}
variable "iam_role2_iam_role_force_detach_policies" {}
variable "iam_role2_iam_role_inline_policy" {}
variable "iam_role2_iam_role_managed_policy_arns" {}
variable "iam_role2_iam_role_max_session_duration" {}
variable "iam_role2_iam_role_name" {}
variable "iam_role2_iam_role_name_prefix" {}
variable "iam_role2_iam_role_path" {}
variable "iam_role2_iam_role_permissions_boundary" {}
variable "iam_role2_iam_role_tags" {}

variable "iam_role2_iam_policy_description" {}
variable "iam_role2_iam_policy_name" {}
variable "iam_role2_iam_policy_name_prefix" {}
variable "iam_role2_iam_policy_path" {}
variable "iam_role2_iam_policy_tags" {}

variable "iam_role2_iam_policy_attachment_name" {}

variable "iam_role3_iam_role_assume_role_policy" {}
variable "iam_role3_iam_role_description" {}
variable "iam_role3_iam_role_force_detach_policies" {}
variable "iam_role3_iam_role_inline_policy" {}
variable "iam_role3_iam_role_managed_policy_arns" {}
variable "iam_role3_iam_role_max_session_duration" {}
variable "iam_role3_iam_role_name" {}
variable "iam_role3_iam_role_name_prefix" {}
variable "iam_role3_iam_role_path" {}
variable "iam_role3_iam_role_permissions_boundary" {}
variable "iam_role3_iam_role_tags" {}

variable "iam_role3_iam_policy_description" {}
variable "iam_role3_iam_policy_name" {}
variable "iam_role3_iam_policy_name_prefix" {}
variable "iam_role3_iam_policy_path" {}
variable "iam_role3_iam_policy_tags" {}

variable "iam_role3_iam_policy_attachment_name" {}

variable "iotcore_iot_thing_name" {}
variable "iotcore_iot_thing_attributes" {}
variable "iotcore_iot_thing_thing_type_name" {}
variable "iotcore_iot_thing_principal_attachment_principal" {}
variable "iotcore_iot_policy_name" {}
variable "iotcore_iot_policy_policy" {}
variable "iotcore_iot_policy_attachment_target" {}

variable "iotcore_iot_topic_rule_name" {}
variable "iotcore_iot_topic_rule_description" {}
variable "iotcore_iot_topic_rule_enabled" {}
variable "iotcore_iot_topic_rule_sql" {}
variable "iotcore_iot_topic_rule_sql_version" {}
variable "iotcore_iot_topic_rule_error_action" {}
variable "iotcore_iot_topic_rule_tags" {}
variable "iotcore_iot_topic_rule_firehose" {}

variable "s3_s3_bucket_bucket" {}
variable "s3_s3_bucket_bucket_prefix" {}
variable "s3_s3_bucket_tags" {}
variable "s3_s3_bucket_force_destroy" {}
variable "s3_s3_bucket_object_lock_enabled" {}

variable "kinesis_firehose_kinesis_firehose_delivery_stream_name" {}
variable "kinesis_firehose_kinesis_firehose_delivery_stream_destination" {}
variable "kinesis_firehose_kinesis_firehose_delivery_stream_extended_s3_configuration" {}

variable "glue_glue_catalog_database_catalog_id" {}
variable "glue_glue_catalog_database_create_table_default_permission" {}
variable "glue_glue_catalog_database_description" {}
variable "glue_glue_catalog_database_location_uri" {}
variable "glue_glue_catalog_database_name" {}
variable "glue_glue_catalog_database_parameters" {}
variable "glue_glue_catalog_database_tags" {}
variable "glue_glue_catalog_database_target_database" {}

variable "glue_glue_crawler_name" {}
variable "glue_glue_crawler_role" {}
variable "glue_glue_crawler_classifiers" {}
variable "glue_glue_crawler_configuration" {}
variable "glue_glue_crawler_description" {}
variable "glue_glue_crawler_s3_target" {}
variable "glue_glue_crawler_schedule" {}
variable "glue_glue_crawler_security_configuration" {}
variable "glue_glue_crawler_table_prefix" {}
variable "glue_glue_crawler_tags" {}
variable "cross_account_role_iam_role_description" {}
variable "cross_account_role_iam_role_force_detach_policies" {}
variable "cross_account_role_iam_role_inline_policy" {}
variable "cross_account_role_iam_role_managed_policy_arns" {}
variable "cross_account_role_iam_role_max_session_duration" {}
variable "cross_account_role_iam_role_name" {}
variable "cross_account_role_iam_role_name_prefix" {}
variable "cross_account_role_iam_role_path" {}
variable "cross_account_role_iam_role_permissions_boundary" {}
variable "cross_account_role_iam_role_tags" {}
variable "cross_account_role_policy_iam_role_policy_name" {}
variable "cross_account_role_policy_iam_role_policy_name_prefix" {}
variable "databricks_mws_credentials_mws_credentials_credentials_name" {}
variable "vpc_vpc_class" {}
variable "vpc_vpc_id" {}
variable "databricks_route_table_for_each" {}
variable "databricks_public_subnet_for_each" {}
variable "databricks_private_subnet_for_each" {}
variable "databricks_route_table_association_for_each1" {}
variable "databricks_route_table_association_for_each2" {}
variable "databricks_nat_gateway_for_each" {}
variable "databricks_route_for_each" {}
variable "databricks_eip_for_each" {}
variable "databricks_vpc_endpoint_for_each" {}
variable "databricks_default_security_group_default_security_group_egress_cidr_blocks" {}
variable "databricks_default_security_group_default_security_group_egress_description" {}
variable "databricks_default_security_group_default_security_group_egress_from_port" {}
variable "databricks_default_security_group_default_security_group_egress_ipv6_cidr_blocks" {}
variable "databricks_default_security_group_default_security_group_egress_prefix_list_ids" {}
variable "databricks_default_security_group_default_security_group_egress_protocol" {}
variable "databricks_default_security_group_default_security_group_egress_security_groups" {}
variable "databricks_default_security_group_default_security_group_egress_self" {}
variable "databricks_default_security_group_default_security_group_egress_to_port" {}
variable "databricks_default_security_group_default_security_group_ingress_cidr_blocks" {}
variable "databricks_default_security_group_default_security_group_ingress_description" {}
variable "databricks_default_security_group_default_security_group_ingress_from_port" {}
variable "databricks_default_security_group_default_security_group_ingress_ipv6_cidr_blocks" {}
variable "databricks_default_security_group_default_security_group_ingress_prefix_list_ids" {}
variable "databricks_default_security_group_default_security_group_ingress_protocol" {}
variable "databricks_default_security_group_default_security_group_ingress_security_groups" {}
variable "databricks_default_security_group_default_security_group_ingress_self" {}
variable "databricks_default_security_group_default_security_group_ingress_to_port" {}
variable "databricks_default_security_group_default_security_group_tags" {}
variable "databricks_default_network_acl_default_network_acl_egress_for_each" {}
variable "databricks_default_network_acl_default_network_acl_ingress_for_each" {}
variable "databricks_default_network_acl_default_network_acl_subnet_ids" {}
variable "databricks_default_network_acl_default_network_acl_tags" {}

variable "databricks_mws_networks_mws_networks_network_name" {}

variable "root_storage_bucket_s3_bucket_bucket" {}
variable "root_storage_bucket_s3_bucket_bucket_prefix" {}
variable "root_storage_bucket_s3_bucket_force_destroy" {}
variable "root_storage_bucket_s3_bucket_object_lock_configuration_list" {}
variable "root_storage_bucket_s3_bucket_object_lock_enabled" {}
variable "root_storage_bucket_s3_bucket_tags" {}
variable "root_storage_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_expected_bucket_owner" {}
variable "root_storage_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default_sse_algorithm" {}
variable "root_storage_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default_kms_master_key_id" {}
variable "root_storage_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_rule_bucket_key_enabled" {}
variable "root_storage_bucket_versioning_s3_bucket_versioning_versioning_configuration_status" {}
variable "root_storage_bucket_versioning_s3_bucket_versioning_versioning_configuration_mfa_delete" {}
variable "root_storage_bucket_versioning_s3_bucket_versioning_expected_bucket_owner" {}
variable "root_storage_bucket_versioning_s3_bucket_versioning_mfa" {}
variable "root_storage_bucket_public_access_block_s3_bucket_public_access_block_block_public_acls" {}
variable "root_storage_bucket_public_access_block_s3_bucket_public_access_block_block_public_policy" {}
variable "root_storage_bucket_public_access_block_s3_bucket_public_access_block_ignore_public_acls" {}
variable "root_storage_bucket_public_access_block_s3_bucket_public_access_block_restrict_public_buckets" {}
variable "databricks_mws_storage_configurations_storage_configuration_name" {}
variable "databricks_mws_workspaces_mws_workspaces_workspaces_name" {}

variable "unity_catalog_metastore_metastore_name" {}
variable "unity_catalog_metastore_metastore_region" {}
variable "unity_catalog_metastore_metastore_owner" {}
variable "unity_catalog_metastore_metastore_delta_sharing_scope" {}
variable "unity_catalog_metastore_metastore_delta_sharing_recipient_token_lifetime_in_seconds" {}
variable "unity_catalog_metastore_metastore_delta_sharing_organization_name" {}
variable "unity_catalog_metastore_metastore_force_destroy" {}
variable "unity_catalog_metastore_assignment_metastore_assignment_default_catalog_name" {}

variable "unity_catalog_storage_credential_storage_credential_name" {}
variable "unity_catalog_storage_credential_storage_credential_owner" {}
variable "unity_catalog_storage_credential_storage_credential_read_only" {}
//variable "unity_catalog_storage_credential_storage_credential_skip_validation" {}
variable "unity_catalog_storage_credential_storage_credential_force_destroy" {}
//variable "unity_catalog_storage_credential_storage_credential_aws_iam_role" {}

variable "unity_catalog_grants_grants_grant" {}

variable "myVpcs_vpc_settings" {
  type = map(object({
    myVpcs_vpc_vpc_cidr_block                           = string,
    myVpcs_vpc_vpc_instance_tenancy                     = string,
    myVpcs_vpc_vpc_ipv4_ipam_pool_id                    = string,
    myVpcs_vpc_vpc_ipv4_netmask_length                  = number
    myVpcs_vpc_vpc_ipv6_ipam_pool_id                    = string,
    myVpcs_vpc_vpc_ipv6_cidr_block                      = string,
    myVpcs_vpc_vpc_ipv6_netmask_length                  = number,
    myVpcs_vpc_vpc_ipv6_cidr_block_network_border_group = string,
    myVpcs_vpc_vpc_enable_dns_support                   = bool
    myVpcs_vpc_vpc_enable_network_address_usage_metrics = bool,
    myVpcs_vpc_vpc_enable_dns_hostnames                 = bool,
    myVpcs_vpc_vpc_assign_generated_ipv6_cidr_block     = bool,
    myVpcs_vpc_vpc_tags                                 = map(string)
  }))
}

variable "myRouteTables_route_table_settings" {
  type = map(object({
    myRouteTables_is_new_route_table      = bool,
    myRouteTables_new_route_table_id      = string,
    myRouteTables_existing_route_table_id = string,
    myRouteTables_route_table_route_table_route = list(object({
      route_table_cidr_block                 = string
      route_table_ipv6_cidr_block            = string
      route_table_destination_prefix_list_id = string
      route_table_carrier_gateway_id         = string
      route_table_core_network_arn           = string
      route_table_egress_only_gateway_id     = string
      route_table_gateway_id                 = string
      route_table_local_gateway_id           = string
      route_table_nat_gateway_id             = string
      route_table_network_interface_id       = string
      route_table_transit_gateway_id         = string
      route_table_vpc_endpoint_id            = string
      route_table_vpc_peering_connection_id  = string
    }))
    myRouteTables_route_table_route_table_tags             = map(string)
    myRouteTables_route_table_route_table_propagating_vgws = set(string)
  }))
}

variable "myInternetGateways_internet_gateway_settings" {
  type = map(object({
    myInternetGateways_is_new_vpc                             = bool,
    myInternetGateways_new_vpc_id                             = string,
    myInternetGateways_existing_vpc_id                        = string,
    myInternetGateways_internet_gateway_internet_gateway_tags = map(string)
  }))
}

variable "myEIPs_eip_settings" {
  type = map(object({
    myEIPs_eip_eip_address                   = string
    myEIPs_eip_eip_associate_with_private_ip = string
    myEIPs_eip_eip_customer_owned_ipv4_pool  = string
    myEIPs_eip_eip_domain                    = string
    myEIPs_eip_eip_instance                  = string
    myEIPs_eip_eip_network_border_group      = string
    myEIPs_eip_eip_network_interface         = string
    myEIPs_eip_eip_public_ipv4_pool          = string
    myEIPs_eip_eip_tags                      = map(string)
  }))
}

variable "myNatGateways_nat_gateway_settings" {
  type = map(object({
    myNatGateways_nat_gateway_nat_gateway_subnet_id                          = string
    myNatGateways_nat_gateway_nat_gateway_allocation_id                      = string
    myNatGateways_nat_gateway_nat_gateway_connectivity_type                  = string
    myNatGateways_nat_gateway_nat_gateway_private_ip                         = string
    myNatGateways_nat_gateway_nat_gateway_secondary_allocation_ids           = set(string)
    myNatGateways_nat_gateway_nat_gateway_secondary_private_ip_address_count = number
    myNatGateways_nat_gateway_nat_gateway_secondary_private_ip_addresses     = set(string)
    myNatGateways_nat_gateway_nat_gateway_tags                               = map(string)
  }))
}

variable "myRoutes_route_settings" {
  type = map(object({
    myRoutes_route_route_route_table_id              = string
    myRoutes_route_route_destination_cidr_block      = string
    myRoutes_route_route_destination_ipv6_cidr_block = string
    myRoutes_route_route_destination_prefix_list_id  = string
    myRoutes_route_route_carrier_gateway_id          = string
    myRoutes_route_route_core_network_arn            = string
    myRoutes_route_route_egress_only_gateway_id      = string
    myRoutes_route_route_gateway_id                  = string
    myRoutes_route_route_nat_gateway_id              = string
    myRoutes_route_route_local_gateway_id            = string
    myRoutes_route_route_network_interface_id        = string
    myRoutes_route_route_transit_gateway_id          = string
    myRoutes_route_route_vpc_endpoint_id             = string
    myRoutes_route_route_vpc_peering_connection_id   = string
  }))
}

variable "mySubnets_subnet_settings" {
  type = map(object({
    mySubnets_subnet_subnet_vpc_id                                         = string
    mySubnets_subnet_subnet_assign_ipv6_address_on_creation                = bool
    mySubnets_subnet_subnet_availability_zone                              = string
    mySubnets_subnet_subnet_availability_zone_id                           = string
    mySubnets_subnet_subnet_cidr_block                                     = string
    mySubnets_subnet_subnet_customer_owned_ipv4_pool                       = string
    mySubnets_subnet_subnet_enable_dns64                                   = bool
    mySubnets_subnet_subnet_enable_lni_at_device_index                     = number
    mySubnets_subnet_subnet_enable_resource_name_dns_aaaa_record_on_launch = bool
    mySubnets_subnet_subnet_enable_resource_name_dns_a_record_on_launch    = bool
    mySubnets_subnet_subnet_ipv6_cidr_block                                = string
    mySubnets_subnet_subnet_ipv6_native                                    = string
    mySubnets_subnet_subnet_map_customer_owned_ip_on_launch                = bool
    mySubnets_subnet_subnet_map_public_ip_on_launch                        = bool
    mySubnets_subnet_subnet_outpost_arn                                    = string
    mySubnets_subnet_subnet_private_dns_hostname_type_on_launch            = string
    mySubnets_subnet_subnet_tags                                           = map(string)
    mySubnets_subnet_route_table_association_route_table_id                = string
  }))
}

variable "myMwsCredentials_mws_credentials_settings" {
  type = map(object({
    myMwsCredentials_mws_credentials_mws_credentials_credentials_name = string
  }))
}

variable "mySecurityGroups_security_group_settings" {
  type = map(object({
    mySecurityGroups_security_group_security_group_description = string
    mySecurityGroups_security_group_security_group_egress = list(object({
      security_group_egress_cidr_blocks      = list(string)
      security_group_egress_description      = string
      security_group_egress_from_port        = number
      security_group_egress_ipv6_cidr_blocks = list(string)
      security_group_egress_prefix_list_ids  = list(string)
      security_group_egress_protocol         = string
      security_group_egress_security_groups  = set(string)
      security_group_egress_self             = bool
      security_group_egress_to_port          = number
    }))
    mySecurityGroups_security_group_security_group_ingress = list(object({
      security_group_ingress_cidr_blocks      = list(string)
      security_group_ingress_description      = string
      security_group_ingress_from_port        = number
      security_group_ingress_ipv6_cidr_blocks = list(string)
      security_group_ingress_prefix_list_ids  = list(string)
      security_group_ingress_protocol         = string
      security_group_ingress_security_groups  = set(string)
      security_group_ingress_self             = bool
      security_group_ingress_to_port          = number
    }))
    mySecurityGroups_security_group_security_group_name_prefix            = string
    mySecurityGroups_security_group_security_group_name                   = string
    mySecurityGroups_security_group_security_group_revoke_rules_on_delete = bool
    mySecurityGroups_security_group_security_group_tags                   = map(string)
    mySecurityGroups_security_group_security_group_vpc_id                 = string
  }))
}

variable "myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_settings" {
  type = map(object({
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_security_group_id            = string
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_cidr_ipv4                    = string
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_cidr_ipv6                    = string
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_description                  = string
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_from_port                    = number
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_ip_protocol                  = string
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_prefix_list_id               = string
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_referenced_security_group_id = string
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_tags                         = map(string)
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_to_port                      = number
  }))
}

variable "myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_settings" {
  type = map(object({
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_security_group_id            = string
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_cidr_ipv4                    = string
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_cidr_ipv6                    = string
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_description                  = string
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_from_port                    = number
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_ip_protocol                  = string
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_prefix_list_id               = string
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_referenced_security_group_id = string
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_tags                         = map(string)
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_to_port                      = number
  }))
}

variable "myVpcEndpoints_vpc_endpoint_settings" {
  type = map(object({
    myVpcEndpoints_vpc_endpoint_vpc_endpoint_service_name        = string
    myVpcEndpoints_vpc_endpoint_vpc_endpoint_vpc_id              = string
    myVpcEndpoints_vpc_endpoint_vpc_endpoint_auto_accept         = bool
    myVpcEndpoints_vpc_endpoint_vpc_endpoint_policy              = string
    myVpcEndpoints_vpc_endpoint_vpc_endpoint_private_dns_enabled = bool
    myVpcEndpoints_vpc_endpoint_vpc_endpoint_dns_options = list(object({
      vpc_endpoint_dns_options_dns_record_ip_type                             = string
      vpc_endpoint_dns_options_private_dns_only_for_inbound_resolver_endpoint = bool
    }))
    myVpcEndpoints_vpc_endpoint_vpc_endpoint_ip_address_type    = string
    myVpcEndpoints_vpc_endpoint_vpc_endpoint_route_table_ids    = set(string)
    myVpcEndpoints_vpc_endpoint_vpc_endpoint_subnet_ids         = set(string)
    myVpcEndpoints_vpc_endpoint_vpc_endpoint_security_group_ids = set(string)
    myVpcEndpoints_vpc_endpoint_vpc_endpoint_tags               = map(string)
    myVpcEndpoints_vpc_endpoint_vpc_endpoint_vpc_endpoint_type  = string
  }))
}

variable "myMwsVpcEndpoints_mws_vpc_endpoint_settings" {
  type = map(object({
    myMwsVpcEndpoints_mws_vpc_endpoint_mws_vpc_endpoint_vpc_endpoint_name   = string
    myMwsVpcEndpoints_mws_vpc_endpoint_mws_vpc_endpoint_aws_vpc_endpoint_id = string
    myMwsVpcEndpoints_mws_vpc_endpoint_mws_vpc_endpoint_region              = string
  }))
}

variable "myMwsPrivateAccessSettings_mws_private_access_settings" {
  type = map(object({
    myMwsPrivateAccessSettings_mws_private_access_settings_mws_private_access_settings_private_access_settings_name = string
    myMwsPrivateAccessSettings_mws_private_access_settings_mws_private_access_settings_region                       = string
    myMwsPrivateAccessSettings_mws_private_access_settings_mws_private_access_settings_public_access_enabled        = bool
    myMwsPrivateAccessSettings_mws_private_access_settings_mws_private_access_settings_private_access_level         = string
    myMwsPrivateAccessSettings_mws_private_access_settings_mws_private_access_settings_allowed_vpc_endpoint_ids     = list(string)
  }))
}

variable "myMwsNetworks_mws_networks_settings" {
  type = map(object({
    myMwsNetworks_mws_networks_mws_networks_network_name       = string
    myMwsNetworks_mws_networks_mws_networks_vpc_id             = string
    myMwsNetworks_mws_networks_mws_networks_subnet_ids         = set(string)
    myMwsNetworks_mws_networks_mws_networks_security_group_ids = set(string)
    myMwsNetworks_mws_networks_mws_networks_vpc_endpoints = list(object({
      mws_networks_vpc_endpoints_dataplane_relay = set(string)
      mws_networks_vpc_endpoints_rest_api        = set(string)
    }))
  }))
}

variable "myS3Buckets_s3_bucket_settings" {
  type = map(object({
    myS3Backets_s3_bucket_s3_bucket_bucket                                                          = string
    myS3Backets_s3_bucket_s3_bucket_bucket_prefix                                                   = string
    myS3Backets_s3_bucket_s3_bucket_force_destroy                                                   = bool
    myS3Backets_s3_bucket_s3_bucket_object_lock_enabled                                             = bool
    myS3Backets_s3_bucket_s3_bucket_tags                                                            = map(string)
    myS3Backets_s3_bucket_public_access_block_s3_bucket_public_access_block_block_public_acls       = bool
    myS3Backets_s3_bucket_public_access_block_s3_bucket_public_access_block_block_public_policy     = bool
    myS3Backets_s3_bucket_public_access_block_s3_bucket_public_access_block_ignore_public_acls      = bool
    myS3Backets_s3_bucket_public_access_block_s3_bucket_public_access_block_restrict_public_buckets = bool
    myS3Backets_s3_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default = list(object({
      s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default_sse_algorithm     = string
      s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default_kms_master_key_id = string
    }))
    myS3Backets_s3_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_rule_bucket_key_enabled = bool
    myS3Backets_s3_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_expected_bucket_owner   = string
    myS3Backets_s3_bucket_versioning_s3_bucket_versioning_versioning_configuration_status                                             = string
    myS3Backets_s3_bucket_versioning_s3_bucket_versioning_versioning_configuration_mfa_delete                                         = string
    myS3Backets_s3_bucket_versioning_s3_bucket_versioning_expected_bucket_owner                                                       = string
    myS3Backets_s3_bucket_versioning_s3_bucket_versioning_mfa                                                                         = string
  }))
}

variable "myMwsStorageConfigurations_mws_storage_configurations_settings" {
  type = map(object({
    myMwsStorageConfigurations_mws_storage_configurations_mws_storage_configurations_storage_configuration_name = string
    myMwsStorageConfigurations_mws_storage_configurations_mws_storage_configurations_bucket_name                = string
  }))
}

variable "myMwsWorkspaces_mws_workspaces_settings" {
  type = map(object({
    myMwsWorkspaces_mws_workspaces_mws_workspaces_workspace_name                           = string
    myMwsWorkspaces_mws_workspaces_mws_workspaces_credentials_id                           = string
    myMwsWorkspaces_mws_workspaces_mws_workspaces_custom_tags                              = map(string)
    myMwsWorkspaces_mws_workspaces_mws_workspaces_deployment_name                          = string
    myMwsWorkspaces_mws_workspaces_mws_workspaces_managed_services_customer_managed_key_id = string
    myMwsWorkspaces_mws_workspaces_mws_workspaces_network_id                               = string
    myMwsWorkspaces_mws_workspaces_mws_workspaces_private_access_settings_id               = string
    myMwsWorkspaces_mws_workspaces_mws_workspaces_storage_configuration_id                 = string
    myMwsWorkspaces_metastore_assignment_metastore_assignment_metastore_id                 = string
    myMwsWorkspaces_metastore_assignment_metastore_assignment_default_catalog_name         = string
    myMwsWorkspaces_databricks_user_admin_user                                             = string
    myMwsWorkspaces_mws_permission_assignment_mws_permission_assignment_permissions        = list(string)
  }))
}

variable "myMetastores_metastore_settings" {
  type = map(object({
    myMetastores_metastore_metastore_name                                              = string
    myMetastores_metastore_metastore_storage_root                                      = string
    myMetastores_metastore_metastore_region                                            = string
    myMetastores_metastore_metastore_owner                                             = string
    myMetastores_metastore_metastore_delta_sharing_scope                               = string
    myMetastores_metastore_metastore_delta_sharing_recipient_token_lifetime_in_seconds = number
    myMetastores_metastore_metastore_delta_sharing_organization_name                   = string
    myMetastores_metastore_metastore_force_destroy                                     = bool
  }))
}
