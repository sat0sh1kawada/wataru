aws_region               = "ap-northeast-1"
databricks_region        = "ap-northeast-1"
databricks_account_id    = "c92415d6-29e6-4584-b2f8-ad3e0d82836d"
databricks_client_id     = "ebb32baf-b770-4da9-807d-6ff2f2d1ecb0"
databricks_client_secret = "dosec75c31b469b19d73e6e1c0c5f574d328"

iam_iam_group_name = "analyze-group"
iam_iam_group_path = null

iam_iam_user_name                 = "kawada-20231121"
iam_iam_user_path                 = null
iam_iam_user_permissions_boundary = null
iam_iam_user_force_destroy        = null
iam_iam_user_tags                 = null

iam_iam_group_membership_name  = "analyze-group-membership"
iam_iam_group_membership_users = ["kawada-20231121"]
iam_iam_group_membership_group = "analyze-group"

iam_role_iam_role_assume_role_policy = {
  "Version" : "2012-10-17",
  "Statement" : [
    {
      "Effect" : "Allow",
      "Principal" : {
        "Service" : "firehose.amazonaws.com"
      },
      "Action" : "sts:AssumeRole"
    }
  ]
}
iam_role_iam_role_description           = null
iam_role_iam_role_force_detach_policies = null
iam_role_iam_role_inline_policy         = {}
iam_role_iam_role_managed_policy_arns   = null
iam_role_iam_role_max_session_duration  = null
iam_role_iam_role_name                  = "kawada-20231121-role"
iam_role_iam_role_name_prefix           = null
iam_role_iam_role_path                  = null
iam_role_iam_role_permissions_boundary  = null
iam_role_iam_role_tags                  = null

iam_role_iam_policy_description     = null
iam_role_iam_policy_name            = "kawada-20231121-policy"
iam_role_iam_policy_name_prefix     = null
iam_role_iam_policy_path            = null
iam_role_iam_policy_tags            = null
iam_role_iam_policy_attachment_name = "kawada-20231121-policy-attachment"

iam_role2_iam_role_assume_role_policy = {
  "Version" : "2012-10-17",
  "Statement" : [
    {
      "Effect" : "Allow",
      "Principal" : {
        "Service" : "iot.amazonaws.com"
      },
      "Action" : "sts:AssumeRole"
    }
  ]
}
iam_role2_iam_role_description           = null
iam_role2_iam_role_force_detach_policies = null
iam_role2_iam_role_inline_policy         = {}
iam_role2_iam_role_managed_policy_arns   = null
iam_role2_iam_role_max_session_duration  = null
iam_role2_iam_role_name                  = "kawada-20231121-role-2"
iam_role2_iam_role_name_prefix           = null
iam_role2_iam_role_path                  = null
iam_role2_iam_role_permissions_boundary  = null
iam_role2_iam_role_tags                  = null

iam_role2_iam_policy_description     = null
iam_role2_iam_policy_name            = "kawada-20231121-policy-2"
iam_role2_iam_policy_name_prefix     = null
iam_role2_iam_policy_path            = null
iam_role2_iam_policy_tags            = null
iam_role2_iam_policy_attachment_name = "kawada-20231121-policy-attachment-2"

iam_role3_iam_role_assume_role_policy = {
  "Version" : "2012-10-17",
  "Statement" : [
    {
      "Effect" : "Allow",
      "Principal" : {
        "Service" : "glue.amazonaws.com"
      },
      "Action" : "sts:AssumeRole"
    }
  ]
}
iam_role3_iam_role_description           = null
iam_role3_iam_role_force_detach_policies = null
iam_role3_iam_role_inline_policy         = {}
iam_role3_iam_role_managed_policy_arns   = null
iam_role3_iam_role_max_session_duration  = null
iam_role3_iam_role_name                  = "kawada-20231121-role-3"
iam_role3_iam_role_name_prefix           = null
iam_role3_iam_role_path                  = null
iam_role3_iam_role_permissions_boundary  = null
iam_role3_iam_role_tags                  = null

iam_role3_iam_policy_description     = null
iam_role3_iam_policy_name            = "kawada-20231121-policy-3"
iam_role3_iam_policy_name_prefix     = null
iam_role3_iam_policy_path            = null
iam_role3_iam_policy_tags            = null
iam_role3_iam_policy_attachment_name = "kawada-20231121-policy-attachment-3"

iotcore_iot_thing_name                           = "kawada-20231121"
iotcore_iot_thing_attributes                     = null
iotcore_iot_thing_thing_type_name                = null
iotcore_iot_thing_principal_attachment_principal = "arn:aws:iot:ap-northeast-1:278280499340:cert/770905f961ce058bd3a3b01d56de718dc0ca0fc097cc11aa5e810b17d7b94279"
iotcore_iot_policy_name                          = "kawada-20231121-policy"
iotcore_iot_policy_policy = {
  Version = "2012-10-17"
  Statement = [
    {
      Action   = "*"
      Effect   = "Allow"
      Resource = "*"
    }
  ]
}
iotcore_iot_policy_attachment_target = "arn:aws:iot:ap-northeast-1:278280499340:cert/770905f961ce058bd3a3b01d56de718dc0ca0fc097cc11aa5e810b17d7b94279"

iotcore_iot_topic_rule_name         = "kawada_20231121_topic_rule"
iotcore_iot_topic_rule_description  = null
iotcore_iot_topic_rule_enabled      = true
iotcore_iot_topic_rule_sql          = "SELECT * FROM 'data/kawada-20231121'"
iotcore_iot_topic_rule_sql_version  = "2016-03-23"
iotcore_iot_topic_rule_error_action = []
iotcore_iot_topic_rule_tags         = null
iotcore_iot_topic_rule_firehose = [{
  separator  = "\n"
  batch_mode = null
}]

s3_s3_bucket_bucket              = "kawada-20231121"
s3_s3_bucket_bucket_prefix       = null
s3_s3_bucket_tags                = null
s3_s3_bucket_force_destroy       = true
s3_s3_bucket_object_lock_enabled = null

kinesis_firehose_kinesis_firehose_delivery_stream_name        = "kawada-20231121"
kinesis_firehose_kinesis_firehose_delivery_stream_destination = "extended_s3"
kinesis_firehose_kinesis_firehose_delivery_stream_extended_s3_configuration = [{
  buffering_interval  = null
  buffering_size      = null
  compression_format  = null
  error_output_prefix = null
  kms_key_arn         = null
  prefix              = null
  cloudwatch_logging_options = [{
    enabled         = false
    log_group_name  = null
    log_stream_name = null
  }]
  data_format_conversion_configuration = [/*{
    enabled = true
    hive_json_ser_de = [{
      timestamp_formats = null
    }]
    open_x_json_ser_de = [/*{
      case_insensitive                         = null
      column_to_json_key_mappings              = null
      convert_dots_in_json_keys_to_underscores = null
    }]
    orc_ser_de = [{
      block_size_bytes                        = null
      bloom_filter_columns                    = null
      bloom_filter_false_positive_probability = null
      compression                             = null
      dictionary_key_threshold                = null
      enable_padding                          = null
      format_version                          = null
      padding_tolerance                       = null
      row_index_stride                        = null
      stripe_size_bytes                       = null
    }]
    parquet_ser_de = [/*{
      block_size_bytes              = null
      compression                   = null
      enable_dictionary_compression = null
      max_padding_bytes             = null
      page_size_bytes               = null
      writer_version                = null
    }]
    database_name = null
    role_arn      = null
    table_name    = null
    catalog_id    = null
    region        = null
    version_id    = null
  }*/]
  processing_configuration             = [/*{
    enabled = true
    processors = [{
      type = null
      parameters = [{
        parameter_name  = null
        parameter_value = null
      }]
    }]
  }*/]
  s3_backup_mode                       = "Disabled"
  s3_backup_configuration              = [/*{
    role_arn            = null
    bucket_arn          = null
    prefix              = null
    buffering_size      = null
    buffering_interval  = null
    compression_format  = null
    error_output_prefix = null
    kms_key_arn         = null
    cloudwatch_logging_options = [{
      enabled         = true
      log_group_name  = null
      log_stream_name = null
    }]
  }*/]
  dynamic_partitioning_configuration   = [/*{
    enabled        = true
    retry_duration = null
  }*/]
}]

glue_glue_catalog_database_catalog_id                      = null
glue_glue_catalog_database_create_table_default_permission = []
glue_glue_catalog_database_description                     = null
glue_glue_catalog_database_location_uri                    = null
glue_glue_catalog_database_name                            = "kawada-20231121-glue-catalog-database"
glue_glue_catalog_database_parameters                      = {}
glue_glue_catalog_database_tags                            = null
glue_glue_catalog_database_target_database                 = {}

glue_glue_crawler_name          = "kawada-20231121-glue-crawler"
glue_glue_crawler_role          = null
glue_glue_crawler_classifiers   = null
glue_glue_crawler_configuration = null
glue_glue_crawler_description   = null
glue_glue_crawler_s3_target = [{
  connection_name     = null
  exclusions          = null
  sample_size         = null
  event_queue_arn     = null
  dlq_event_queue_arn = null
}]
glue_glue_crawler_schedule               = null
glue_glue_crawler_security_configuration = null
glue_glue_crawler_table_prefix           = null
glue_glue_crawler_tags                   = null


vpc_vpc_class = "New"
vpc_vpc_id    = null

cross_account_role_iam_role_description                     = null
cross_account_role_iam_role_force_detach_policies           = null
cross_account_role_iam_role_inline_policy                   = []
cross_account_role_iam_role_managed_policy_arns             = null
cross_account_role_iam_role_max_session_duration            = null
cross_account_role_iam_role_name                            = "iovpf-crossaccount"
cross_account_role_iam_role_name_prefix                     = null
cross_account_role_iam_role_path                            = null
cross_account_role_iam_role_permissions_boundary            = null
cross_account_role_iam_role_tags                            = null
cross_account_role_policy_iam_role_policy_name              = "iovpf-crossaccount-role-policy"
cross_account_role_policy_iam_role_policy_name_prefix       = null
databricks_mws_credentials_mws_credentials_credentials_name = "iovpf-databricks-credentials"

databricks_route_table_for_each = {
  databricks_route_table_1 = {
    databricks_route_table_route_table_propagating_vgws = null
    databricks_route_table_route_table_tags             = { Name = "databricks_route_table_1" }
  },
  databricks_route_table_2 = {
    databricks_route_table_route_table_propagating_vgws = null
    databricks_route_table_route_table_tags             = { Name = "databricks_route_table_2" }
  }
}

databricks_public_subnet_for_each = {
  databricks_public_subnet_1 = {
    databricks_public_subnet_cidr_block              = "10.0.128.0/19"
    databricks_public_subnet_availability_zone       = "ap-northeast-1a"
    databricks_public_subnet_map_public_ip_on_launch = null
    databricks_public_subnet_tags                    = { Name = "databricks_public_subnet_1" }
  }
}

databricks_private_subnet_for_each = {
  databricks_private_subnet_1 = {
    databricks_private_subnet_cidr_block              = "10.0.160.0/19"
    databricks_private_subnet_availability_zone       = "ap-northeast-1a"
    databricks_private_subnet_map_public_ip_on_launch = null
    databricks_private_subnet_tags                    = { Name = "databricks_private_subnet_1" }
  },
  databricks_private_subnet_2 = {
    databricks_private_subnet_cidr_block              = "10.0.192.0/19"
    databricks_private_subnet_availability_zone       = "ap-northeast-1c"
    databricks_private_subnet_map_public_ip_on_launch = null
    databricks_private_subnet_tags                    = { Name = "databricks_private_subnet_2" }
  }
}

databricks_route_table_association_for_each1 = {
  databricks_route_table_association_1 = {
    databricks_route_table_association_route_table_association_subnet_id      = "databricks_public_subnet_1"
    databricks_route_table_association_route_table_association_route_table_id = "databricks_route_table_1"
  },
}

databricks_route_table_association_for_each2 = {
  databricks_route_table_association_1 = {
    databricks_route_table_association_route_table_association_subnet_id      = "databricks_private_subnet_1"
    databricks_route_table_association_route_table_association_route_table_id = "databricks_route_table_2"
  },
  databricks_route_table_association_2 = {
    databricks_route_table_association_route_table_association_subnet_id      = "databricks_private_subnet_2"
    databricks_route_table_association_route_table_association_route_table_id = "databricks_route_table_2"
  }
}


databricks_nat_gateway_for_each = {
  databricks_nat_gateway_1 = {
    databricks_nat_gateway_nat_gateway_allocation_id                      = "databricks_eip_1"
    databricks_nat_gateway_nat_gateway_connectivity_type                  = null
    databricks_nat_gateway_nat_gateway_private_ip                         = null
    databricks_nat_gateway_nat_gateway_subnet_id                          = "databricks_private_subnet_1"
    databricks_nat_gateway_nat_gateway_secondary_allocation_ids           = null
    databricks_nat_gateway_nat_gateway_secondary_private_ip_address_count = null
    databricks_nat_gateway_nat_gateway_secondary_private_ip_addresses     = null
    databricks_nat_gateway_nat_gateway_tags                               = null
  }
}

databricks_route_for_each = {
  databricks_route_1 = {
    databricks_route_route_route_table_id              = "databricks_route_table_2"
    databricks_route_route_destination_cidr_block      = "0.0.0.0/0"
    databricks_route_route_destination_ipv6_cidr_block = null
    databricks_route_route_destination_prefix_list_id  = null
    databricks_route_route_carrier_gateway_id          = null
    databricks_route_route_core_network_arn            = null
    databricks_route_route_egress_only_gateway_id      = null
    databricks_route_route_gateway_id                  = null
    databricks_route_route_nat_gateway_id              = "databricks_nat_gateway_1"
    databricks_route_route_local_gateway_id            = null
    databricks_route_route_network_interface_id        = null
    databricks_route_route_transit_gateway_id          = null
    databricks_route_route_vpc_endpoint_id             = null
    databricks_route_route_vpc_peering_connection_id   = null
  }
}

databricks_eip_for_each = {
  databricks_eip_1 = {
    databricks_eip_eip_domain                    = "vpc"
    databricks_eip_eip_instance                  = null
    databricks_eip_eip_associate_with_private_ip = null
  }
}

databricks_default_security_group_default_security_group_egress_cidr_blocks       = ["0.0.0.0/0"]
databricks_default_security_group_default_security_group_egress_description       = null
databricks_default_security_group_default_security_group_egress_from_port         = 0
databricks_default_security_group_default_security_group_egress_ipv6_cidr_blocks  = []
databricks_default_security_group_default_security_group_egress_prefix_list_ids   = []
databricks_default_security_group_default_security_group_egress_protocol          = "-1"
databricks_default_security_group_default_security_group_egress_security_groups   = []
databricks_default_security_group_default_security_group_egress_self              = false
databricks_default_security_group_default_security_group_egress_to_port           = 0
databricks_default_security_group_default_security_group_ingress_cidr_blocks      = []
databricks_default_security_group_default_security_group_ingress_description      = "Allow all internal TCP and UDP"
databricks_default_security_group_default_security_group_ingress_from_port        = 0
databricks_default_security_group_default_security_group_ingress_ipv6_cidr_blocks = []
databricks_default_security_group_default_security_group_ingress_prefix_list_ids  = []
databricks_default_security_group_default_security_group_ingress_protocol         = "-1"
databricks_default_security_group_default_security_group_ingress_security_groups  = []
databricks_default_security_group_default_security_group_ingress_self             = true
databricks_default_security_group_default_security_group_ingress_to_port          = 0
databricks_default_security_group_default_security_group_tags                     = null

databricks_default_network_acl_default_network_acl_egress_for_each = {
  1 = {
    default_network_acl_egress_action          = "allow"
    default_network_acl_egress_from_port       = 0
    default_network_acl_egress_protocol        = "-1"
    default_network_acl_egress_rule_no         = 101
    default_network_acl_egress_to_port         = 0
    default_network_acl_egress_cidr_block      = null
    default_network_acl_egress_icmp_code       = null
    default_network_acl_egress_icmp_type       = null
    default_network_acl_egress_ipv6_cidr_block = "::/0"
  }
  2 = {
    default_network_acl_egress_action          = "allow"
    default_network_acl_egress_from_port       = 0
    default_network_acl_egress_protocol        = "-1"
    default_network_acl_egress_rule_no         = 100
    default_network_acl_egress_to_port         = 0
    default_network_acl_egress_cidr_block      = "0.0.0.0/0"
    default_network_acl_egress_icmp_code       = null
    default_network_acl_egress_icmp_type       = null
    default_network_acl_egress_ipv6_cidr_block = null
  }
}
databricks_default_network_acl_default_network_acl_ingress_for_each = {
  1 = {
    default_network_acl_ingress_action          = "allow"
    default_network_acl_ingress_from_port       = 0
    default_network_acl_ingress_protocol        = "-1"
    default_network_acl_ingress_rule_no         = 101
    default_network_acl_ingress_to_port         = 0
    default_network_acl_ingress_cidr_block      = null
    default_network_acl_ingress_icmp_code       = null
    default_network_acl_ingress_icmp_type       = null
    default_network_acl_ingress_ipv6_cidr_block = "::/0"
  }
  2 = {
    default_network_acl_ingress_action          = "allow"
    default_network_acl_ingress_from_port       = 0
    default_network_acl_ingress_protocol        = "-1"
    default_network_acl_ingress_rule_no         = 100
    default_network_acl_ingress_to_port         = 0
    default_network_acl_ingress_cidr_block      = "0.0.0.0/0"
    default_network_acl_ingress_icmp_code       = null
    default_network_acl_ingress_icmp_type       = null
    default_network_acl_ingress_ipv6_cidr_block = null
  }
}
databricks_default_network_acl_default_network_acl_subnet_ids = null
databricks_default_network_acl_default_network_acl_tags       = null

databricks_vpc_endpoint_for_each = {
  1 = {
    databricks_vpc_endpoint_vpc_endpoint_service_name        = "com.amazonaws.ap-northeast-1.s3"
    databricks_vpc_endpoint_vpc_endpoint_auto_accept         = null
    databricks_vpc_endpoint_vpc_endpoint_policy              = null
    databricks_vpc_endpoint_vpc_endpoint_private_dns_enabled = false
    databricks_vpc_endpoint_vpc_endpoint_dns_options         = []
    databricks_vpc_endpoint_vpc_endpoint_ip_address_type     = null
    databricks_vpc_endpoint_vpc_endpoint_route_table_ids     = null
    databricks_vpc_endpoint_vpc_endpoint_subnet_ids          = null
    databricks_vpc_endpoint_vpc_endpoint_security_group_ids  = null
    databricks_vpc_endpoint_vpc_endpoint_tags                = null
    databricks_vpc_endpoint_vpc_endpoint_vpc_endpoint_type   = "Gateway"
  }
  2 = {
    databricks_vpc_endpoint_vpc_endpoint_service_name        = "com.amazonaws.ap-northeast-1.sts"
    databricks_vpc_endpoint_vpc_endpoint_auto_accept         = null
    databricks_vpc_endpoint_vpc_endpoint_policy              = null
    databricks_vpc_endpoint_vpc_endpoint_private_dns_enabled = true
    databricks_vpc_endpoint_vpc_endpoint_dns_options = [{
      vpc_endpoint_dns_options_dns_record_ip_type                             = null
      vpc_endpoint_dns_options_private_dns_only_for_inbound_resolver_endpoint = true
    }]
    databricks_vpc_endpoint_vpc_endpoint_ip_address_type    = null
    databricks_vpc_endpoint_vpc_endpoint_route_table_ids    = null
    databricks_vpc_endpoint_vpc_endpoint_subnet_ids         = null
    databricks_vpc_endpoint_vpc_endpoint_security_group_ids = null
    databricks_vpc_endpoint_vpc_endpoint_tags               = null
    databricks_vpc_endpoint_vpc_endpoint_vpc_endpoint_type  = "Interface"
  }
  3 = {
    databricks_vpc_endpoint_vpc_endpoint_service_name        = "com.amazonaws.ap-northeast-1.kinesis-streams"
    databricks_vpc_endpoint_vpc_endpoint_auto_accept         = null
    databricks_vpc_endpoint_vpc_endpoint_policy              = null
    databricks_vpc_endpoint_vpc_endpoint_private_dns_enabled = true
    databricks_vpc_endpoint_vpc_endpoint_dns_options = [{
      vpc_endpoint_dns_options_dns_record_ip_type                             = null
      vpc_endpoint_dns_options_private_dns_only_for_inbound_resolver_endpoint = true
    }]
    databricks_vpc_endpoint_vpc_endpoint_ip_address_type    = null
    databricks_vpc_endpoint_vpc_endpoint_route_table_ids    = null
    databricks_vpc_endpoint_vpc_endpoint_subnet_ids         = null
    databricks_vpc_endpoint_vpc_endpoint_security_group_ids = null
    databricks_vpc_endpoint_vpc_endpoint_tags               = null
    databricks_vpc_endpoint_vpc_endpoint_vpc_endpoint_type  = "Interface"
  }
}

databricks_mws_networks_mws_networks_network_name = "iovpf-databricks-networks"

root_storage_bucket_s3_bucket_bucket                                                                                                                                   = "iovpf-databricks-bucket240202"
root_storage_bucket_s3_bucket_bucket_prefix                                                                                                                            = null
root_storage_bucket_s3_bucket_force_destroy                                                                                                                            = true
root_storage_bucket_s3_bucket_object_lock_configuration_list                                                                                                           = []
root_storage_bucket_s3_bucket_object_lock_enabled                                                                                                                      = null
root_storage_bucket_s3_bucket_tags                                                                                                                                     = null
root_storage_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_expected_bucket_owner                                          = null
root_storage_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default_sse_algorithm     = "AES256"
root_storage_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default_kms_master_key_id = null
root_storage_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_rule_bucket_key_enabled                                        = null
root_storage_bucket_versioning_s3_bucket_versioning_versioning_configuration_status                                                                                    = "Disabled"
root_storage_bucket_versioning_s3_bucket_versioning_versioning_configuration_mfa_delete                                                                                = null
root_storage_bucket_versioning_s3_bucket_versioning_expected_bucket_owner                                                                                              = null
root_storage_bucket_versioning_s3_bucket_versioning_mfa                                                                                                                = null
root_storage_bucket_public_access_block_s3_bucket_public_access_block_block_public_acls                                                                                = true
root_storage_bucket_public_access_block_s3_bucket_public_access_block_block_public_policy                                                                              = true
root_storage_bucket_public_access_block_s3_bucket_public_access_block_ignore_public_acls                                                                               = true
root_storage_bucket_public_access_block_s3_bucket_public_access_block_restrict_public_buckets                                                                          = true

databricks_mws_storage_configurations_storage_configuration_name = "iovpf-databricks-storage-configurations"
databricks_mws_workspaces_mws_workspaces_workspaces_name         = "iovpf-databricks-workspace"

unity_catalog_metastore_metastore_name                                              = "iovpf-metastore"
unity_catalog_metastore_metastore_region                                            = "ap-northeast-1"
unity_catalog_metastore_metastore_owner                                             = null
unity_catalog_metastore_metastore_delta_sharing_scope                               = null
unity_catalog_metastore_metastore_delta_sharing_recipient_token_lifetime_in_seconds = null
unity_catalog_metastore_metastore_delta_sharing_organization_name                   = null
unity_catalog_metastore_metastore_force_destroy                                     = true
unity_catalog_metastore_assignment_metastore_assignment_default_catalog_name        = "iovpf-catalog"

unity_catalog_storage_credential_storage_credential_name          = "iovpf-storage-credential"
unity_catalog_storage_credential_storage_credential_owner         = null
unity_catalog_storage_credential_storage_credential_read_only     = null
unity_catalog_storage_credential_storage_credential_force_destroy = true
//unity_catalog_storage_credential_storage_credential_aws_iam_role = [{storage_credential_aws_iam_role_role_arn="test"}]

unity_catalog_grants_grants_grant = [{ grants_grant_principal = "Data Engineers", grants_grant_privileges = ["CREATE_EXTERNAL_TABLE"] }]

myVpcs_vpc_settings = {
  vpc_1 = {
    myVpcs_vpc_vpc_cidr_block                           = "10.128.0.0/16",
    myVpcs_vpc_vpc_instance_tenancy                     = "default",
    myVpcs_vpc_vpc_ipv4_ipam_pool_id                    = null,
    myVpcs_vpc_vpc_ipv4_netmask_length                  = null,
    myVpcs_vpc_vpc_ipv6_ipam_pool_id                    = null,
    myVpcs_vpc_vpc_ipv6_cidr_block                      = null,
    myVpcs_vpc_vpc_ipv6_netmask_length                  = null,
    myVpcs_vpc_vpc_ipv6_cidr_block_network_border_group = null,
    myVpcs_vpc_vpc_enable_dns_support                   = true,
    myVpcs_vpc_vpc_enable_network_address_usage_metrics = null,
    myVpcs_vpc_vpc_enable_dns_hostnames                 = true,
    myVpcs_vpc_vpc_assign_generated_ipv6_cidr_block     = null,
    myVpcs_vpc_vpc_tags                                 = { Name = "myVpc1" }
  }
}

myRouteTables_route_table_settings = {
  route_table_1 = {
    myRouteTables_is_new_route_table                       = true,
    myRouteTables_new_route_table_id                       = "vpc_1",
    myRouteTables_existing_route_table_id                  = null,
    myRouteTables_route_table_route_table_route            = [],
    myRouteTables_route_table_route_table_tags             = { Name = "myRouteTable1" }
    myRouteTables_route_table_route_table_propagating_vgws = null
  },
  route_table_2 = {
    myRouteTables_is_new_route_table                       = true,
    myRouteTables_new_route_table_id                       = "vpc_1",
    myRouteTables_existing_route_table_id                  = null,
    myRouteTables_route_table_route_table_route            = [],
    myRouteTables_route_table_route_table_tags             = { Name = "myRouteTable2" }
    myRouteTables_route_table_route_table_propagating_vgws = null
  },

}

myInternetGateways_internet_gateway_settings = {
  internet_gateway_1 = {
    myInternetGateways_is_new_vpc                             = true,
    myInternetGateways_new_vpc_id                             = "vpc_1",
    myInternetGateways_existing_vpc_id                        = null,
    myInternetGateways_internet_gateway_internet_gateway_tags = { Name = "myInternetGateway1" }
  }
}

myEIPs_eip_settings = {
  eip_1 = {
    myEIPs_eip_eip_address                   = null,
    myEIPs_eip_eip_associate_with_private_ip = null,
    myEIPs_eip_eip_customer_owned_ipv4_pool  = null,
    myEIPs_eip_eip_domain                    = "vpc",
    myEIPs_eip_eip_instance                  = null,
    myEIPs_eip_eip_network_border_group      = null,
    myEIPs_eip_eip_network_interface         = null,
    myEIPs_eip_eip_public_ipv4_pool          = null,
    myEIPs_eip_eip_tags                      = { Name = "myEIP1" }
  }
}

myNatGateways_nat_gateway_settings = {
  nat_gateway_1 = {
    myNatGateways_nat_gateway_nat_gateway_subnet_id                          = "subnet_1"
    myNatGateways_nat_gateway_nat_gateway_allocation_id                      = "eip_1"
    myNatGateways_nat_gateway_nat_gateway_connectivity_type                  = null
    myNatGateways_nat_gateway_nat_gateway_private_ip                         = null
    myNatGateways_nat_gateway_nat_gateway_secondary_allocation_ids           = null
    myNatGateways_nat_gateway_nat_gateway_secondary_private_ip_address_count = null
    myNatGateways_nat_gateway_nat_gateway_secondary_private_ip_addresses     = null
    myNatGateways_nat_gateway_nat_gateway_tags                               = { Name = "myNatGateway1" }
  }
}

myRoutes_route_settings = {
  route_1 = {
    myRoutes_route_route_route_table_id              = "route_table_1"
    myRoutes_route_route_destination_cidr_block      = "0.0.0.0/0"
    myRoutes_route_route_destination_ipv6_cidr_block = null
    myRoutes_route_route_destination_prefix_list_id  = null
    myRoutes_route_route_carrier_gateway_id          = null
    myRoutes_route_route_core_network_arn            = null
    myRoutes_route_route_egress_only_gateway_id      = null
    myRoutes_route_route_gateway_id                  = "internet_gateway_1"
    myRoutes_route_route_nat_gateway_id              = null
    myRoutes_route_route_local_gateway_id            = null
    myRoutes_route_route_network_interface_id        = null
    myRoutes_route_route_transit_gateway_id          = null
    myRoutes_route_route_vpc_endpoint_id             = null
    myRoutes_route_route_vpc_peering_connection_id   = null
  },
  route_2 = {
    myRoutes_route_route_route_table_id              = "route_table_2"
    myRoutes_route_route_destination_cidr_block      = "0.0.0.0/0"
    myRoutes_route_route_destination_ipv6_cidr_block = null
    myRoutes_route_route_destination_prefix_list_id  = null
    myRoutes_route_route_carrier_gateway_id          = null
    myRoutes_route_route_core_network_arn            = null
    myRoutes_route_route_egress_only_gateway_id      = null
    myRoutes_route_route_gateway_id                  = null
    myRoutes_route_route_nat_gateway_id              = "nat_gateway_1"
    myRoutes_route_route_local_gateway_id            = null
    myRoutes_route_route_network_interface_id        = null
    myRoutes_route_route_transit_gateway_id          = null
    myRoutes_route_route_vpc_endpoint_id             = null
    myRoutes_route_route_vpc_peering_connection_id   = null
  },
}

mySubnets_subnet_settings = {
  subnet_1 = {
    mySubnets_subnet_subnet_vpc_id                                         = "vpc_1",
    mySubnets_subnet_subnet_assign_ipv6_address_on_creation                = null,
    mySubnets_subnet_subnet_availability_zone                              = "ap-northeast-1a",
    mySubnets_subnet_subnet_availability_zone_id                           = null,
    mySubnets_subnet_subnet_cidr_block                                     = "10.128.0.0/24",
    mySubnets_subnet_subnet_customer_owned_ipv4_pool                       = null,
    mySubnets_subnet_subnet_enable_dns64                                   = null,
    mySubnets_subnet_subnet_enable_lni_at_device_index                     = null,
    mySubnets_subnet_subnet_enable_resource_name_dns_aaaa_record_on_launch = null,
    mySubnets_subnet_subnet_enable_resource_name_dns_a_record_on_launch    = null,
    mySubnets_subnet_subnet_ipv6_cidr_block                                = null,
    mySubnets_subnet_subnet_ipv6_native                                    = null,
    mySubnets_subnet_subnet_map_customer_owned_ip_on_launch                = null,
    mySubnets_subnet_subnet_map_public_ip_on_launch                        = null,
    mySubnets_subnet_subnet_outpost_arn                                    = null,
    mySubnets_subnet_subnet_private_dns_hostname_type_on_launch            = null,
    mySubnets_subnet_subnet_tags                                           = { Name = "mySubnet1" },
    mySubnets_subnet_route_table_association_route_table_id                = "route_table_1"
  },
  subnet_2 = {
    mySubnets_subnet_subnet_vpc_id                                         = "vpc_1",
    mySubnets_subnet_subnet_assign_ipv6_address_on_creation                = null,
    mySubnets_subnet_subnet_availability_zone                              = "ap-northeast-1c",
    mySubnets_subnet_subnet_availability_zone_id                           = null,
    mySubnets_subnet_subnet_cidr_block                                     = "10.128.1.0/24",
    mySubnets_subnet_subnet_customer_owned_ipv4_pool                       = null,
    mySubnets_subnet_subnet_enable_dns64                                   = null,
    mySubnets_subnet_subnet_enable_lni_at_device_index                     = null,
    mySubnets_subnet_subnet_enable_resource_name_dns_aaaa_record_on_launch = null,
    mySubnets_subnet_subnet_enable_resource_name_dns_a_record_on_launch    = null,
    mySubnets_subnet_subnet_ipv6_cidr_block                                = null,
    mySubnets_subnet_subnet_ipv6_native                                    = null,
    mySubnets_subnet_subnet_map_customer_owned_ip_on_launch                = null,
    mySubnets_subnet_subnet_map_public_ip_on_launch                        = null,
    mySubnets_subnet_subnet_outpost_arn                                    = null,
    mySubnets_subnet_subnet_private_dns_hostname_type_on_launch            = null,
    mySubnets_subnet_subnet_tags                                           = { Name = "mySubnet2" },
    mySubnets_subnet_route_table_association_route_table_id                = "route_table_2"
  },
  subnet_3 = {
    mySubnets_subnet_subnet_vpc_id                                         = "vpc_1",
    mySubnets_subnet_subnet_assign_ipv6_address_on_creation                = null,
    mySubnets_subnet_subnet_availability_zone                              = "ap-northeast-1d",
    mySubnets_subnet_subnet_availability_zone_id                           = null,
    mySubnets_subnet_subnet_cidr_block                                     = "10.128.2.0/24",
    mySubnets_subnet_subnet_customer_owned_ipv4_pool                       = null,
    mySubnets_subnet_subnet_enable_dns64                                   = null,
    mySubnets_subnet_subnet_enable_lni_at_device_index                     = null,
    mySubnets_subnet_subnet_enable_resource_name_dns_aaaa_record_on_launch = null,
    mySubnets_subnet_subnet_enable_resource_name_dns_a_record_on_launch    = null,
    mySubnets_subnet_subnet_ipv6_cidr_block                                = null,
    mySubnets_subnet_subnet_ipv6_native                                    = null,
    mySubnets_subnet_subnet_map_customer_owned_ip_on_launch                = null,
    mySubnets_subnet_subnet_map_public_ip_on_launch                        = null,
    mySubnets_subnet_subnet_outpost_arn                                    = null,
    mySubnets_subnet_subnet_private_dns_hostname_type_on_launch            = null,
    mySubnets_subnet_subnet_tags                                           = { Name = "mySubnet3" },
    mySubnets_subnet_route_table_association_route_table_id                = "route_table_2"
  }
}

myMwsCredentials_mws_credentials_settings = {
  mws_credentials_1 = {
    myMwsCredentials_mws_credentials_mws_credentials_credentials_name = "myMwsCredentials1"
  },
  mws_credentials_2 = {
    myMwsCredentials_mws_credentials_mws_credentials_credentials_name = "myMwsCredentials2"
  }
}

mySecurityGroups_security_group_settings = {
  security_group_1 = {
    mySecurityGroups_security_group_security_group_description            = null
    mySecurityGroups_security_group_security_group_egress                 = []
    mySecurityGroups_security_group_security_group_ingress                = []
    mySecurityGroups_security_group_security_group_name_prefix            = null
    mySecurityGroups_security_group_security_group_name                   = null
    mySecurityGroups_security_group_security_group_revoke_rules_on_delete = null
    mySecurityGroups_security_group_security_group_tags                   = { Name = "mySecurityGroup1" },
    mySecurityGroups_security_group_security_group_vpc_id                 = "vpc_1"
  }
}

myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_settings = {
  vpc_security_group_egress_rule_1 = {
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_security_group_id            = "security_group_1"
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_cidr_ipv4                    = null
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_cidr_ipv6                    = null
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_description                  = null
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_from_port                    = 0
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_ip_protocol                  = "TCP"
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_prefix_list_id               = null
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_referenced_security_group_id = "security_group_1"
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_tags                         = { Name = "myVpcSecurityGroupEgressRule1" }
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_to_port                      = 65535
  },
  vpc_security_group_egress_rule_2 = {
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_security_group_id            = "security_group_1"
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_cidr_ipv4                    = null
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_cidr_ipv6                    = null
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_description                  = null
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_from_port                    = 0
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_ip_protocol                  = "UDP"
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_prefix_list_id               = null
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_referenced_security_group_id = "security_group_1"
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_tags                         = { Name = "myVpcSecurityGroupEgressRule2" }
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_to_port                      = 65535
  },
  vpc_security_group_egress_rule_3 = {
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_security_group_id            = "security_group_1"
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_cidr_ipv4                    = "0.0.0.0/0"
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_cidr_ipv6                    = null
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_description                  = null
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_from_port                    = 443
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_ip_protocol                  = "TCP"
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_prefix_list_id               = null
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_referenced_security_group_id = null
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_tags                         = { Name = "myVpcSecurityGroupEgressRule3" }
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_to_port                      = 443
  },
  vpc_security_group_egress_rule_4 = {
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_security_group_id            = "security_group_1"
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_cidr_ipv4                    = "0.0.0.0/0"
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_cidr_ipv6                    = null
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_description                  = null
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_from_port                    = 3306
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_ip_protocol                  = "TCP"
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_prefix_list_id               = null
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_referenced_security_group_id = null
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_tags                         = { Name = "myVpcSecurityGroupEgressRule4" }
    myVpcSecurityGroupEgressRules_vpc_security_group_egress_rule_vpc_security_group_egress_rule_to_port                      = 3306
  }


}

myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_settings = {
  vpc_security_group_ingress_rule_1 = {
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_security_group_id            = "security_group_1"
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_cidr_ipv4                    = null
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_cidr_ipv6                    = null
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_description                  = null
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_from_port                    = 0
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_ip_protocol                  = "TCP"
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_prefix_list_id               = null
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_referenced_security_group_id = "security_group_1"
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_tags                         = { Name = "myVpcSecurityGroupIngressRule1" }
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_to_port                      = 65535
  },
  vpc_security_group_ingress_rule_2 = {
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_security_group_id            = "security_group_1"
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_cidr_ipv4                    = null
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_cidr_ipv6                    = null
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_description                  = null
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_from_port                    = 0
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_ip_protocol                  = "UDP"
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_prefix_list_id               = null
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_referenced_security_group_id = "security_group_1"
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_tags                         = { Name = "myVpcSecurityGroupIngressRule2" }
    myVpcSecurityGroupIngressRules_vpc_security_group_ingress_rule_vpc_security_group_ingress_rule_to_port                      = 65535
  }
}

myMwsNetworks_mws_networks_settings = {
  mws_networks_1 = {
    myMwsNetworks_mws_networks_mws_networks_network_name       = "myMwsNetworks1"
    myMwsNetworks_mws_networks_mws_networks_vpc_id             = "vpc_1"
    myMwsNetworks_mws_networks_mws_networks_subnet_ids         = ["subnet_2", "subnet_3"]
    myMwsNetworks_mws_networks_mws_networks_security_group_ids = ["security_group_1"]
    myMwsNetworks_mws_networks_mws_networks_vpc_endpoints      = []
  }
}

myS3Buckets_s3_bucket_settings = {
  s3_bucket_1 = {
    myS3Backets_s3_bucket_s3_bucket_bucket                                                          = "mys31-20240225"
    myS3Backets_s3_bucket_s3_bucket_bucket_prefix                                                   = null
    myS3Backets_s3_bucket_s3_bucket_force_destroy                                                   = null
    myS3Backets_s3_bucket_s3_bucket_object_lock_enabled                                             = null
    myS3Backets_s3_bucket_s3_bucket_tags                                                            = { Name = "myS31" }
    myS3Backets_s3_bucket_public_access_block_s3_bucket_public_access_block_block_public_acls       = true
    myS3Backets_s3_bucket_public_access_block_s3_bucket_public_access_block_block_public_policy     = true
    myS3Backets_s3_bucket_public_access_block_s3_bucket_public_access_block_ignore_public_acls      = true
    myS3Backets_s3_bucket_public_access_block_s3_bucket_public_access_block_restrict_public_buckets = true
    myS3Backets_s3_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default = [{
      s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default_sse_algorithm     = "AES256"
      s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default_kms_master_key_id = null
    }]
    myS3Backets_s3_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_rule_bucket_key_enabled = null
    myS3Backets_s3_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_expected_bucket_owner   = null
    myS3Backets_s3_bucket_versioning_s3_bucket_versioning_versioning_configuration_status                                             = "Disabled"
    myS3Backets_s3_bucket_versioning_s3_bucket_versioning_versioning_configuration_mfa_delete                                         = null
    myS3Backets_s3_bucket_versioning_s3_bucket_versioning_expected_bucket_owner                                                       = null
    myS3Backets_s3_bucket_versioning_s3_bucket_versioning_mfa                                                                         = null
  }
}

myMwsStorageConfigurations_mws_storage_configurations_settings = {
  mws_storage_configurations_1 = {
    myMwsStorageConfigurations_mws_storage_configurations_mws_storage_configurations_storage_configuration_name = "myMwsStorageConfigurations1"
    myMwsStorageConfigurations_mws_storage_configurations_mws_storage_configurations_bucket_name                = "s3_bucket_1"
  }
}

myMwsWorkspaces_mws_workspaces_settings = {
  mws_workspaces_1 = {
    myMwsWorkspaces_mws_workspaces_mws_workspaces_workspace_name                           = "myMwsWorkspaces1"
    myMwsWorkspaces_mws_workspaces_mws_workspaces_credentials_id                           = "mws_credentials_1"
    myMwsWorkspaces_mws_workspaces_mws_workspaces_custom_tags                              = null
    myMwsWorkspaces_mws_workspaces_mws_workspaces_deployment_name                          = null
    myMwsWorkspaces_mws_workspaces_mws_workspaces_managed_services_customer_managed_key_id = null
    myMwsWorkspaces_mws_workspaces_mws_workspaces_network_id                               = "mws_networks_1"
    myMwsWorkspaces_mws_workspaces_mws_workspaces_private_access_settings_id               = null
    myMwsWorkspaces_mws_workspaces_mws_workspaces_storage_configuration_id                 = "mws_storage_configurations_1"
  }
}
