variable "aws_region" {}

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

variable "databricks_username" {}
variable "databricks_password" {}

variable "databricks_account_id" {}

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
    myVpcs_vpc_vpc_cidr_block = string,
    myVpcs_vpc_vpc_instance_tenancy = string,
    myVpcs_vpc_vpc_ipv4_ipam_pool_id = string,
    myVpcs_vpc_vpc_ipv4_netmask_length = number
    myVpcs_vpc_vpc_ipv6_ipam_pool_id = string,
    myVpcs_vpc_vpc_ipv6_cidr_block = string,
    myVpcs_vpc_vpc_ipv6_netmask_length = number,
    myVpcs_vpc_vpc_ipv6_cidr_block_network_border_group = string,
    myVpcs_vpc_vpc_enable_dns_support = bool
    myVpcs_vpc_vpc_enable_network_address_usage_metrics = bool,
    myVpcs_vpc_vpc_enable_dns_hostnames = bool,
    myVpcs_vpc_vpc_assign_generated_ipv6_cidr_block = bool,
    myVpcs_vpc_vpc_tags = map(string)
  }))
}