terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    databricks = {
      source = "databricks/databricks"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

provider "databricks" {
  alias         = "mws"
  host          = "https://accounts.cloud.databricks.com"
  client_id     = "ebb32baf-b770-4da9-807d-6ff2f2d1ecb0"
  client_secret = "dose4ddf224f6c372ee47230aa219e9214a2"
  account_id    = "c92415d6-29e6-4584-b2f8-ad3e0d82836d"
}

provider "databricks" {
  alias         = "workspace"
  host          = module.databricks_workspace.workspace.workspace_url
  client_id     = "ebb32baf-b770-4da9-807d-6ff2f2d1ecb0"
  client_secret = "dose4ddf224f6c372ee47230aa219e9214a2"
}

/*
data "aws_iam_policy_document" "s3_glue" {
  statement {
    actions = [
      "s3:GetObject",
      "s3:PutObject"
    ]
    resources = [
      "${module.s3.s3_bucket.arn}*"
    ]
  }
}

data "aws_iam_policy_document" "iotcore_kinesis_firehose" {
  statement {
    actions = [
      "firehose:PutRecord",
      "firehose:PutRecordBatch"
    ]
    resources = [
      "${module.kinesis_firehose.kinesis_firehose_delivery_stream.arn}"
    ]
  }
}

data "aws_iam_policy_document" "kinesis_firehose_s3" {
  statement {
    actions = [
      "glue:GetTable",
      "glue:GetTableVersion",
      "glue:GetTableVersions"
    ]
    resources = [
      "arn:aws:glue:ap-northeast-1:278280499340:catalog",
      "arn:aws:glue:ap-northeast-1:278280499340:database/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%",
      "arn:aws:glue:ap-northeast-1:278280499340:table/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
    ]
  }
  statement {
    actions = [
      "kafka:GetBootstrapBrokers",
      "kafka:DescribeCluster",
      "kafka:DescribeClusterV2",
      "kafka-cluster:Connect"
    ]
    resources = [
      "arn:aws:kafka:ap-northeast-1:278280499340:cluster/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
    ]
  }
  statement {
    actions = [
      "kafka-cluster:DescribeTopic",
      "kafka-cluster:DescribeTopicDynamicConfiguration",
      "kafka-cluster:ReadData"
    ]
    resources = [
      "arn:aws:kafka:ap-northeast-1:278280499340:topic/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
    ]
  }
  statement {
    actions = [
      "kafka-cluster:DescribeGroup"
    ]
    resources = [
      "arn:aws:kafka:ap-northeast-1:278280499340:group/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%/*"
    ]
  }
  statement {
    actions = [
      "s3:AbortMultipartUpload",
      "s3:GetBucketLocation",
      "s3:GetObject",
      "s3:ListBucket",
      "s3:ListBucketMultipartUploads",
      "s3:PutObject"
    ]
    resources = [
      "${module.s3.s3_bucket.arn}",
      "${module.s3.s3_bucket.arn}/*"
    ]
  }
  statement {
    actions = [
      "lambda:InvokeFunction",
      "lambda:GetFunctionConfiguration"
    ]
    resources = [
      "arn:aws:lambda:ap-northeast-1:278280499340:function:%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
    ]
  }
  statement {
    actions = [
      "kms:GenerateDataKey",
      "kms:Decrypt"
    ]
    resources = [
      "arn:aws:kms:ap-northeast-1:278280499340:key/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
    ]
    condition {
      test     = "StringEquals"
      variable = "kms:ViaService"
      values = [
        "s3.ap-northeast-1.amazonaws.com"
      ]
    }
    condition {
      test     = "StringLike"
      variable = "kms:EncryptionContext:aws:s3:arn"
      values = [
        "arn:aws:s3:::%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%/*",
        "arn:aws:s3:::%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
      ]
    }
  }
  statement {
    actions = [
      "logs:PutLogEvents"
    ]
    resources = [
      "arn:aws:logs:ap-northeast-1:278280499340:log-group:/aws/kinesisfirehose/PUT-S3-PeNUN:log-stream:*",
      "arn:aws:logs:ap-northeast-1:278280499340:log-group:%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%:log-stream:*"
    ]
  }
  statement {
    actions = [
      "kinesis:DescribeStream",
      "kinesis:GetShardIterator",
      "kinesis:GetRecords",
      "kinesis:ListShards"
    ]
    resources = [
      "arn:aws:kinesis:ap-northeast-1:278280499340:stream/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
    ]
  }
  statement {
    actions = [
      "kms:Decrypt"
    ]
    resources = [
      "arn:aws:kms:ap-northeast-1:278280499340:key/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
    ]
    condition {
      test     = "StringEquals"
      variable = "kms:ViaService"
      values = [
        "kinesis.ap-northeast-1.amazonaws.com"
      ]
    }
    condition {
      test     = "StringLike"
      variable = "kms:EncryptionContext:aws:kinesis:arn"
      values = [
        "arn:aws:kinesis:ap-northeast-1:278280499340:stream/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
      ]
    }
  }
}

module "iam" {
  source = "../../../modules/aws/iam"

  iam_iam_group_name = var.iam_iam_group_name
  iam_iam_group_path = var.iam_iam_group_path

  iam_iam_user_name                 = var.iam_iam_user_name
  iam_iam_user_path                 = var.iam_iam_user_path
  iam_iam_user_permissions_boundary = var.iam_iam_user_permissions_boundary
  iam_iam_user_force_destroy        = var.iam_iam_user_force_destroy
  iam_iam_user_tags                 = var.iam_iam_user_tags

  iam_iam_group_membership_name  = var.iam_iam_group_membership_name
  iam_iam_group_membership_users = [module.iam.iam_user.name]
  iam_iam_group_membership_group = module.iam.iam_group.name
}

module "iam_role" {
  source = "../../../modules/aws/iam_role"

  iam_role_iam_role_assume_role_policy    = jsonencode(var.iam_role_iam_role_assume_role_policy)
  iam_role_iam_role_description           = var.iam_role_iam_role_description
  iam_role_iam_role_force_detach_policies = var.iam_role_iam_role_force_detach_policies
  iam_role_iam_role_inline_policy         = var.iam_role_iam_role_inline_policy
  iam_role_iam_role_managed_policy_arns   = var.iam_role_iam_role_managed_policy_arns
  iam_role_iam_role_max_session_duration  = var.iam_role_iam_role_max_session_duration
  iam_role_iam_role_name                  = var.iam_role_iam_role_name
  iam_role_iam_role_name_prefix           = var.iam_role_iam_role_name_prefix
  iam_role_iam_role_path                  = var.iam_role_iam_role_path
  iam_role_iam_role_permissions_boundary  = var.iam_role_iam_role_permissions_boundary
  iam_role_iam_role_tags                  = var.iam_role_iam_role_tags

  iam_role_iam_policy_is_new      = true
  iam_role_iam_policy_description = var.iam_role_iam_policy_description
  iam_role_iam_policy_name        = var.iam_role_iam_policy_name
  iam_role_iam_policy_name_prefix = var.iam_role_iam_policy_name_prefix
  iam_role_iam_policy_path        = var.iam_role_iam_policy_path
  iam_role_iam_policy_policy      = data.aws_iam_policy_document.kinesis_firehose_s3.json
  iam_role_iam_policy_tags        = var.iam_role_iam_policy_tags

  iam_role_iam_policy_attachment = {1={
  iam_role_iam_policy_attachment_name       = var.iam_role_iam_policy_attachment_name
  iam_role_iam_policy_attachment_users      = null
  iam_role_iam_policy_attachment_roles      = [module.iam_role.iam_role.id]
  iam_role_iam_policy_attachment_groups     = null
  iam_role_iam_policy_attachment_policy_arn = module.iam_role.iam_policy[0].arn
  }}
}

module "iam_role2" {
  source = "../../../modules/aws/iam_role"

  iam_role_iam_role_assume_role_policy    = jsonencode(var.iam_role2_iam_role_assume_role_policy)
  iam_role_iam_role_description           = var.iam_role2_iam_role_description
  iam_role_iam_role_force_detach_policies = var.iam_role2_iam_role_force_detach_policies
  iam_role_iam_role_inline_policy         = var.iam_role2_iam_role_inline_policy
  iam_role_iam_role_managed_policy_arns   = var.iam_role2_iam_role_managed_policy_arns
  iam_role_iam_role_max_session_duration  = var.iam_role2_iam_role_max_session_duration
  iam_role_iam_role_name                  = var.iam_role2_iam_role_name
  iam_role_iam_role_name_prefix           = var.iam_role2_iam_role_name_prefix
  iam_role_iam_role_path                  = var.iam_role2_iam_role_path
  iam_role_iam_role_permissions_boundary  = var.iam_role2_iam_role_permissions_boundary
  iam_role_iam_role_tags                  = var.iam_role2_iam_role_tags

  iam_role_iam_policy_is_new      = true
  iam_role_iam_policy_description = var.iam_role2_iam_policy_description
  iam_role_iam_policy_name        = var.iam_role2_iam_policy_name
  iam_role_iam_policy_name_prefix = var.iam_role2_iam_policy_name_prefix
  iam_role_iam_policy_path        = var.iam_role2_iam_policy_path
  iam_role_iam_policy_policy      = data.aws_iam_policy_document.iotcore_kinesis_firehose.json
  iam_role_iam_policy_tags        = var.iam_role2_iam_policy_tags

  iam_role_iam_policy_attachment = {1={
  iam_role_iam_policy_attachment_name       = var.iam_role2_iam_policy_attachment_name
  iam_role_iam_policy_attachment_users      = null
  iam_role_iam_policy_attachment_roles      = [module.iam_role2.iam_role.id]
  iam_role_iam_policy_attachment_groups     = null
  iam_role_iam_policy_attachment_policy_arn = module.iam_role2.iam_policy[0].arn
  }}
}

module "iam_role3" {
  source = "../../../modules/aws/iam_role"

  iam_role_iam_role_assume_role_policy    = jsonencode(var.iam_role3_iam_role_assume_role_policy)
  iam_role_iam_role_description           = var.iam_role3_iam_role_description
  iam_role_iam_role_force_detach_policies = var.iam_role3_iam_role_force_detach_policies
  iam_role_iam_role_inline_policy         = var.iam_role3_iam_role_inline_policy
  iam_role_iam_role_managed_policy_arns   = var.iam_role3_iam_role_managed_policy_arns
  iam_role_iam_role_max_session_duration  = var.iam_role3_iam_role_max_session_duration
  iam_role_iam_role_name                  = var.iam_role3_iam_role_name
  iam_role_iam_role_name_prefix           = var.iam_role3_iam_role_name_prefix
  iam_role_iam_role_path                  = var.iam_role3_iam_role_path
  iam_role_iam_role_permissions_boundary  = var.iam_role3_iam_role_permissions_boundary
  iam_role_iam_role_tags                  = var.iam_role3_iam_role_tags

  iam_role_iam_policy_is_new      = true
  iam_role_iam_policy_description = var.iam_role3_iam_policy_description
  iam_role_iam_policy_name        = var.iam_role3_iam_policy_name
  iam_role_iam_policy_name_prefix = var.iam_role3_iam_policy_name_prefix
  iam_role_iam_policy_path        = var.iam_role3_iam_policy_path
  iam_role_iam_policy_policy      = data.aws_iam_policy_document.s3_glue.json
  iam_role_iam_policy_tags        = var.iam_role3_iam_policy_tags

  iam_role_iam_policy_attachment = {1={
  iam_role_iam_policy_attachment_name       = var.iam_role3_iam_policy_attachment_name
  iam_role_iam_policy_attachment_users      = null
  iam_role_iam_policy_attachment_roles      = [module.iam_role3.iam_role.id]
  iam_role_iam_policy_attachment_groups     = null
  iam_role_iam_policy_attachment_policy_arn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"
  },2={
  iam_role_iam_policy_attachment_name       = "${var.iam_role3_iam_policy_attachment_name}_2"
  iam_role_iam_policy_attachment_users      = null
  iam_role_iam_policy_attachment_roles      = [module.iam_role3.iam_role.id]
  iam_role_iam_policy_attachment_groups     = null
  iam_role_iam_policy_attachment_policy_arn = module.iam_role3.iam_policy[0].arn
  }}
}

module "iotcore" {
  source = "../../../modules/aws/iotcore"

  iotcore_iot_thing_name                           = var.iotcore_iot_thing_name
  iotcore_iot_thing_attributes                     = var.iotcore_iot_thing_attributes
  iotcore_iot_thing_thing_type_name                = var.iotcore_iot_thing_thing_type_name
  iotcore_iot_thing_principal_attachment_principal = var.iotcore_iot_thing_principal_attachment_principal
  iotcore_iot_policy_name                          = var.iotcore_iot_policy_name
  iotcore_iot_policy_policy                        = jsonencode(var.iotcore_iot_policy_policy)
  iotcore_iot_policy_attachment_target             = var.iotcore_iot_policy_attachment_target

  iotcore_iot_topic_rule_name         = var.iotcore_iot_topic_rule_name
  iotcore_iot_topic_rule_description  = var.iotcore_iot_topic_rule_description
  iotcore_iot_topic_rule_enabled      = var.iotcore_iot_topic_rule_enabled
  iotcore_iot_topic_rule_sql          = var.iotcore_iot_topic_rule_sql
  iotcore_iot_topic_rule_sql_version  = var.iotcore_iot_topic_rule_sql_version
  iotcore_iot_topic_rule_error_action = var.iotcore_iot_topic_rule_error_action
  iotcore_iot_topic_rule_tags         = var.iotcore_iot_topic_rule_tags
  iotcore_iot_topic_rule_firehose = [{
    delivery_stream_name = module.kinesis_firehose.kinesis_firehose_delivery_stream.name
    role_arn             = module.iam_role2.iam_role.arn
    separator            = var.iotcore_iot_topic_rule_firehose[0].separator
    batch_mode           = var.iotcore_iot_topic_rule_firehose[0].batch_mode
  }]
}

module "s3" {
  source = "../../../modules/aws/s3"

  s3_s3_bucket_bucket              = var.s3_s3_bucket_bucket
  s3_s3_bucket_bucket_prefix       = var.s3_s3_bucket_bucket_prefix
  s3_s3_bucket_tags                = var.s3_s3_bucket_tags
  s3_s3_bucket_force_destroy       = var.s3_s3_bucket_force_destroy
  s3_s3_bucket_object_lock_enabled = var.s3_s3_bucket_object_lock_enabled
}

module "kinesis_firehose" {
  source = "../../../modules/aws/kinesis_firehose"

  kinesis_firehose_kinesis_firehose_delivery_stream_name        = var.kinesis_firehose_kinesis_firehose_delivery_stream_name
  kinesis_firehose_kinesis_firehose_delivery_stream_destination = var.kinesis_firehose_kinesis_firehose_delivery_stream_destination
  kinesis_firehose_kinesis_firehose_delivery_stream_extended_s3_configuration = [for s in var.kinesis_firehose_kinesis_firehose_delivery_stream_extended_s3_configuration : {
    bucket_arn                           = module.s3.s3_bucket.arn
    role_arn                             = module.iam_role.iam_role.arn
    buffering_interval                   = s.buffering_interval
    buffering_size                       = s.buffering_size
    compression_format                   = s.compression_format
    error_output_prefix                  = s.error_output_prefix
    kms_key_arn                          = s.kms_key_arn
    prefix                               = s.prefix
    cloudwatch_logging_options           = s.cloudwatch_logging_options
    data_format_conversion_configuration = s.data_format_conversion_configuration
    processing_configuration             = s.processing_configuration
    s3_backup_mode                       = s.s3_backup_mode
    s3_backup_configuration              = s.s3_backup_configuration
    dynamic_partitioning_configuration   = s.dynamic_partitioning_configuration
  }]
}

module "glue" {
    source = "../../../modules/aws/glue"

    glue_glue_catalog_database_catalog_id = var.glue_glue_catalog_database_catalog_id
    glue_glue_catalog_database_create_table_default_permission = var.glue_glue_catalog_database_create_table_default_permission
    glue_glue_catalog_database_description = var.glue_glue_catalog_database_description
    glue_glue_catalog_database_location_uri = var.glue_glue_catalog_database_location_uri
    glue_glue_catalog_database_name = var.glue_glue_catalog_database_name
    glue_glue_catalog_database_parameters = var.glue_glue_catalog_database_parameters
    glue_glue_catalog_database_tags = var.glue_glue_catalog_database_tags
    glue_glue_catalog_database_target_database = var.glue_glue_catalog_database_target_database

    glue_glue_crawler_database_name = module.glue.glue_catalog_database.name
    glue_glue_crawler_name = var.glue_glue_crawler_name
    glue_glue_crawler_role = module.iam_role3.iam_role.arn
    glue_glue_crawler_classifiers = var.glue_glue_crawler_classifiers
    glue_glue_crawler_configuration = var.glue_glue_crawler_configuration
    glue_glue_crawler_description = var.glue_glue_crawler_description
    glue_glue_crawler_s3_target = [for s in var.glue_glue_crawler_s3_target : {
        path = module.s3.s3_bucket.id
        connection_name = s.connection_name
        exclusions = s.exclusions
        sample_size = s.sample_size
        event_queue_arn = s.event_queue_arn
        dlq_event_queue_arn = s.dlq_event_queue_arn
    }]
    glue_glue_crawler_schedule = var.glue_glue_crawler_schedule
    glue_glue_crawler_security_configuration = var.glue_glue_crawler_security_configuration
    glue_glue_crawler_table_prefix = var.glue_glue_crawler_table_prefix
    glue_glue_crawler_tags = var.glue_glue_crawler_tags
}

module "databricks_workspaces" {
  source = "../../../modules/databricks/workspaces"

  aws_region          = var.aws_region
  databricks_username = var.databricks_username
  databricks_password = var.databricks_password

  aws_assume_role_policy_external_id = var.databricks_account_id

  cross_account_role_iam_role_description                     = var.cross_account_role_iam_role_description
  cross_account_role_iam_role_force_detach_policies           = var.cross_account_role_iam_role_force_detach_policies
  cross_account_role_iam_role_inline_policy                   = var.cross_account_role_iam_role_inline_policy
  cross_account_role_iam_role_managed_policy_arns             = var.cross_account_role_iam_role_managed_policy_arns
  cross_account_role_iam_role_max_session_duration            = var.cross_account_role_iam_role_max_session_duration
  cross_account_role_iam_role_name                            = var.cross_account_role_iam_role_name
  cross_account_role_iam_role_name_prefix                     = var.cross_account_role_iam_role_name_prefix
  cross_account_role_iam_role_path                            = var.cross_account_role_iam_role_path
  cross_account_role_iam_role_permissions_boundary            = var.cross_account_role_iam_role_permissions_boundary
  cross_account_role_iam_role_tags                            = var.cross_account_role_iam_role_tags
  cross_account_role_policy_iam_role_policy_name              = var.cross_account_role_policy_iam_role_policy_name
  cross_account_role_policy_iam_role_policy_name_prefix       = var.cross_account_role_policy_iam_role_policy_name_prefix
  databricks_mws_credentials_mws_credentials_account_id       = var.databricks_account_id
  databricks_mws_credentials_mws_credentials_credentials_name = var.databricks_mws_credentials_mws_credentials_credentials_name

  databricks_route_table_vpc_id                = var.vpc_vpc_class == "New" ? module.vpc["vpc_1"].vpc.id : var.vpc_vpc_id
  databricks_route_table_for_each              = var.databricks_route_table_for_each
  databricks_public_subnet_vpc_id              = var.vpc_vpc_class == "New" ? module.vpc["vpc_1"].vpc.id : var.vpc_vpc_id
  databricks_private_subnet_vpc_id             = var.vpc_vpc_class == "New" ? module.vpc["vpc_1"].vpc.id : var.vpc_vpc_id
  databricks_public_subnet_for_each            = var.databricks_public_subnet_for_each
  databricks_private_subnet_for_each           = var.databricks_private_subnet_for_each
  databricks_route_table_association_for_each1 = var.databricks_route_table_association_for_each1
  databricks_route_table_association_for_each2 = var.databricks_route_table_association_for_each2
  databricks_nat_gateway_for_each              = var.databricks_nat_gateway_for_each
  databricks_route_for_each                    = var.databricks_route_for_each
  databricks_eip_for_each                      = var.databricks_eip_for_each

  databricks_vpc_endpoint_vpc_endpoint_vpc_id = var.vpc_vpc_class == "New" ? module.vpc["vpc_1"].vpc.id : var.vpc_vpc_id
  databricks_vpc_endpoint_for_each            = var.databricks_vpc_endpoint_for_each

  databricks_default_security_group_default_security_group_egress_cidr_blocks       = var.databricks_default_security_group_default_security_group_egress_cidr_blocks
  databricks_default_security_group_default_security_group_egress_description       = var.databricks_default_security_group_default_security_group_egress_description
  databricks_default_security_group_default_security_group_egress_from_port         = var.databricks_default_security_group_default_security_group_egress_from_port
  databricks_default_security_group_default_security_group_egress_ipv6_cidr_blocks  = var.databricks_default_security_group_default_security_group_egress_ipv6_cidr_blocks
  databricks_default_security_group_default_security_group_egress_prefix_list_ids   = var.databricks_default_security_group_default_security_group_egress_prefix_list_ids
  databricks_default_security_group_default_security_group_egress_protocol          = var.databricks_default_security_group_default_security_group_egress_protocol
  databricks_default_security_group_default_security_group_egress_security_groups   = var.databricks_default_security_group_default_security_group_egress_security_groups
  databricks_default_security_group_default_security_group_egress_self              = var.databricks_default_security_group_default_security_group_egress_self
  databricks_default_security_group_default_security_group_egress_to_port           = var.databricks_default_security_group_default_security_group_egress_to_port
  databricks_default_security_group_default_security_group_ingress_cidr_blocks      = var.databricks_default_security_group_default_security_group_ingress_cidr_blocks
  databricks_default_security_group_default_security_group_ingress_description      = var.databricks_default_security_group_default_security_group_ingress_description
  databricks_default_security_group_default_security_group_ingress_from_port        = var.databricks_default_security_group_default_security_group_ingress_from_port
  databricks_default_security_group_default_security_group_ingress_ipv6_cidr_blocks = var.databricks_default_security_group_default_security_group_ingress_ipv6_cidr_blocks
  databricks_default_security_group_default_security_group_ingress_prefix_list_ids  = var.databricks_default_security_group_default_security_group_ingress_prefix_list_ids
  databricks_default_security_group_default_security_group_ingress_protocol         = var.databricks_default_security_group_default_security_group_ingress_protocol
  databricks_default_security_group_default_security_group_ingress_security_groups  = var.databricks_default_security_group_default_security_group_ingress_security_groups
  databricks_default_security_group_default_security_group_ingress_self             = var.databricks_default_security_group_default_security_group_ingress_self
  databricks_default_security_group_default_security_group_ingress_to_port          = var.databricks_default_security_group_default_security_group_ingress_to_port
  databricks_default_security_group_default_security_group_tags                     = var.databricks_default_security_group_default_security_group_tags
  databricks_default_security_group_default_security_group_vpc_id                   = var.vpc_vpc_class == "New" ? module.vpc["vpc_1"].vpc.id : var.vpc_vpc_id

  databricks_default_network_acl_default_network_acl_default_network_acl_id = var.vpc_vpc_class == "New" ? module.vpc["vpc_1"].vpc.default_network_acl_id : data.aws_network_acls.existing.ids[0]
  databricks_default_network_acl_default_network_acl_egress_for_each        = var.databricks_default_network_acl_default_network_acl_egress_for_each
  databricks_default_network_acl_default_network_acl_ingress_for_each       = var.databricks_default_network_acl_default_network_acl_ingress_for_each
  databricks_default_network_acl_default_network_acl_subnet_ids             = var.databricks_default_network_acl_default_network_acl_subnet_ids
  databricks_default_network_acl_default_network_acl_tags                   = var.databricks_default_network_acl_default_network_acl_tags

  databricks_mws_networks_mws_networks_account_id         = var.databricks_account_id
  databricks_mws_networks_mws_networks_network_name       = var.databricks_mws_networks_mws_networks_network_name
  databricks_mws_networks_mws_networks_security_group_ids = [var.vpc_vpc_class == "New" ? module.vpc["vpc_1"].vpc.default_security_group_id : null /*data.aws_security_groups.existing.ids[0]]
  databricks_mws_networks_mws_networks_subnet_ids         = [for k, v in var.databricks_private_subnet_for_each : module.databricks_workspaces.databricks_private_subnet[k].subnet.id]
  databricks_mws_networks_mws_networks_vpc_id             = var.vpc_vpc_class == "New" ? module.vpc["vpc_1"].vpc.id : var.vpc_vpc_id
  //databricks_mws_networks_mws_networks_vpc_endpoints = var.databricks_mws_networks_mws_networks_vpc_endpoints

  root_storage_bucket_s3_bucket_bucket                                                                                                                                   = var.root_storage_bucket_s3_bucket_bucket
  root_storage_bucket_s3_bucket_bucket_prefix                                                                                                                            = var.root_storage_bucket_s3_bucket_bucket_prefix
  root_storage_bucket_s3_bucket_tags                                                                                                                                     = var.root_storage_bucket_s3_bucket_tags
  root_storage_bucket_s3_bucket_force_destroy                                                                                                                            = var.root_storage_bucket_s3_bucket_force_destroy
  root_storage_bucket_s3_bucket_object_lock_enabled                                                                                                                      = var.root_storage_bucket_s3_bucket_object_lock_enabled
  root_storage_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_expected_bucket_owner                                          = var.root_storage_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_expected_bucket_owner
  root_storage_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default_sse_algorithm     = var.root_storage_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default_sse_algorithm
  root_storage_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default_kms_master_key_id = var.root_storage_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default_kms_master_key_id
  root_storage_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_rule_bucket_key_enabled                                        = var.root_storage_bucket_server_side_encryption_configuration_s3_bucket_server_side_encryption_configuration_rule_bucket_key_enabled
  root_storage_bucket_versioning_s3_bucket_versioning_versioning_configuration_status                                                                                    = var.root_storage_bucket_versioning_s3_bucket_versioning_versioning_configuration_status
  root_storage_bucket_versioning_s3_bucket_versioning_versioning_configuration_mfa_delete                                                                                = var.root_storage_bucket_versioning_s3_bucket_versioning_versioning_configuration_mfa_delete
  root_storage_bucket_versioning_s3_bucket_versioning_expected_bucket_owner                                                                                              = var.root_storage_bucket_versioning_s3_bucket_versioning_expected_bucket_owner
  root_storage_bucket_versioning_s3_bucket_versioning_mfa                                                                                                                = var.root_storage_bucket_versioning_s3_bucket_versioning_mfa
  root_storage_bucket_public_access_block_s3_bucket_public_access_block_block_public_acls                                                                                = var.root_storage_bucket_public_access_block_s3_bucket_public_access_block_block_public_acls
  root_storage_bucket_public_access_block_s3_bucket_public_access_block_block_public_policy                                                                              = var.root_storage_bucket_public_access_block_s3_bucket_public_access_block_block_public_policy
  root_storage_bucket_public_access_block_s3_bucket_public_access_block_ignore_public_acls                                                                               = var.root_storage_bucket_public_access_block_s3_bucket_public_access_block_ignore_public_acls
  root_storage_bucket_public_access_block_s3_bucket_public_access_block_restrict_public_buckets                                                                          = var.root_storage_bucket_public_access_block_s3_bucket_public_access_block_restrict_public_buckets
  databricks_mws_storage_configurations_databricks_account_id                                                                                                            = var.databricks_account_id
  databricks_mws_storage_configurations_storage_configuration_name                                                                                                       = var.databricks_mws_storage_configurations_storage_configuration_name

  databricks_mws_workspaces_mws_workspaces_account_id      = var.databricks_account_id
  databricks_mws_workspaces_mws_workspaces_aws_region      = var.aws_region
  databricks_mws_workspaces_mws_workspaces_workspaces_name = var.databricks_mws_workspaces_mws_workspaces_workspaces_name
  //databricks_mws_workspaces_mws_workspaces_deployment_name = var.databricks_mws_workspaces_mws_workspaces_deployment_name
}
/*
data "aws_caller_identity" "current" {}

module "databricks_unity_catalog" {
  source = "../../../modules/databricks/unity_catalog"
  providers = {
    databricks.workspace = databricks
  }

  metastore_databricks_host                                             = module.databricks_workspaces.mws_workspaces_workspace_url
  metastore_assignment_databricks_host                                  = module.databricks_workspaces.mws_workspaces_workspace_url
  metastore_metastore_name                                              = var.unity_catalog_metastore_metastore_name
  metastore_metastore_storage_root                                      = "s3://${module.s3.s3_bucket.id}/metastore"
  metastore_metastore_region                                            = var.unity_catalog_metastore_metastore_region
  metastore_metastore_owner                                             = var.unity_catalog_metastore_metastore_owner
  metastore_metastore_delta_sharing_scope                               = var.unity_catalog_metastore_metastore_delta_sharing_scope
  metastore_metastore_delta_sharing_recipient_token_lifetime_in_seconds = var.unity_catalog_metastore_metastore_delta_sharing_recipient_token_lifetime_in_seconds
  metastore_metastore_delta_sharing_organization_name                   = var.unity_catalog_metastore_metastore_delta_sharing_organization_name
  metastore_metastore_force_destroy                                     = var.unity_catalog_metastore_metastore_force_destroy
  metastore_assignment_metastore_assignment_metastore_id                = module.databricks_unity_catalog.metastore_id
  metastore_assignment_metastore_assignment_workspace_id                = module.databricks_workspaces.mws_workspaces_workspace_id
  metastore_assignment_metastore_assignment_default_catalog_name        = var.unity_catalog_metastore_assignment_metastore_assignment_default_catalog_name
  storage_credential_databricks_host                                    = module.databricks_workspaces.mws_workspaces_workspace_url
  storage_credential_storage_credential_name                            = var.unity_catalog_storage_credential_storage_credential_name
  storage_credential_storage_credential_metastore_id                    = module.databricks_unity_catalog.metastore_id
  storage_credential_storage_credential_owner                           = var.unity_catalog_storage_credential_storage_credential_owner
  storage_credential_storage_credential_read_only                       = var.unity_catalog_storage_credential_storage_credential_read_only
  //storage_credential_storage_credential_skip_validation = var.unity_catalog_storage_credential_storage_credential_skip_validation
  storage_credential_storage_credential_force_destroy = var.unity_catalog_storage_credential_storage_credential_force_destroy
  storage_credential_storage_credential_aws_iam_role  = [{ storage_credential_aws_iam_role_role_arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/iovpf-uc-access" }]

  grants_databricks_host           = module.databricks_workspaces.mws_workspaces_workspace_url
  grants_grants_storage_credential = module.databricks_unity_catalog.storage_credential_id
  grants_grants_grant              = var.unity_catalog_grants_grants_grant
}
*/

# My VPCs
module "myVpcs" {
  source = "../../../modules/aws/vpc"

  for_each                                     = var.myVpcs_vpc_settings
  vpc_vpc_cidr_block                           = each.value.myVpcs_vpc_vpc_cidr_block
  vpc_vpc_instance_tenancy                     = each.value.myVpcs_vpc_vpc_instance_tenancy
  vpc_vpc_ipv4_ipam_pool_id                    = each.value.myVpcs_vpc_vpc_ipv4_ipam_pool_id
  vpc_vpc_ipv4_netmask_length                  = each.value.myVpcs_vpc_vpc_ipv4_netmask_length
  vpc_vpc_ipv6_ipam_pool_id                    = each.value.myVpcs_vpc_vpc_ipv6_ipam_pool_id
  vpc_vpc_ipv6_cidr_block                      = each.value.myVpcs_vpc_vpc_ipv6_cidr_block
  vpc_vpc_ipv6_netmask_length                  = each.value.myVpcs_vpc_vpc_ipv6_netmask_length
  vpc_vpc_ipv6_cidr_block_network_border_group = each.value.myVpcs_vpc_vpc_ipv6_cidr_block_network_border_group
  vpc_vpc_enable_dns_support                   = each.value.myVpcs_vpc_vpc_enable_dns_support
  vpc_vpc_enable_network_address_usage_metrics = each.value.myVpcs_vpc_vpc_enable_network_address_usage_metrics
  vpc_vpc_enable_dns_hostnames                 = each.value.myVpcs_vpc_vpc_enable_dns_hostnames
  vpc_vpc_assign_generated_ipv6_cidr_block     = each.value.myVpcs_vpc_vpc_assign_generated_ipv6_cidr_block
  vpc_vpc_tags                                 = each.value.myVpcs_vpc_vpc_tags
}

# My Route Tables
module "myRouteTables" {
  source = "../../../modules/aws/route_table"

  for_each = var.myRouteTables_route_table_settings
  route_table_route_table_vpc_id = (
    each.value.myRouteTables_is_new_route_table ?
    module.myVpcs[each.value.myRouteTables_new_route_table_id].vpc_id :
    each.value.myRouteTables_existing_route_table_id
  )
  route_table_route_table_route            = each.value.myRouteTables_route_table_route_table_route
  route_table_route_table_tags             = each.value.myRouteTables_route_table_route_table_tags
  route_table_route_table_propagating_vgws = each.value.myRouteTables_route_table_route_table_propagating_vgws
}

# My Internet Gateways
module "myInternetGateways" {
  source = "../../../modules/aws/internet_gateway"

  for_each = var.myInternetGateways_internet_gateway_settings
  internet_gateway_internet_gateway_vpc_id = (
    each.value.myInternetGateways_is_new_vpc ?
    module.myVpcs[each.value.myInternetGateways_new_vpc_id].vpc_id :
    each.value.myInternetGateways_existing_vpc_id
  )
  internet_gateway_internet_gateway_tags = each.value.myInternetGateways_internet_gateway_internet_gateway_tags
}

# My EIPs
module "myEIPs" {
  source = "../../../modules/aws/eip"

  for_each                          = var.myEIPs_eip_settings
  eip_eip_address                   = each.value.myEIPs_eip_eip_address
  eip_eip_associate_with_private_ip = each.value.myEIPs_eip_eip_associate_with_private_ip
  eip_eip_customer_owned_ipv4_pool  = each.value.myEIPs_eip_eip_customer_owned_ipv4_pool
  eip_eip_domain                    = each.value.myEIPs_eip_eip_domain
  eip_eip_instance                  = each.value.myEIPs_eip_eip_instance
  eip_eip_network_border_group      = each.value.myEIPs_eip_eip_network_border_group
  eip_eip_network_interface         = each.value.myEIPs_eip_eip_network_interface
  eip_eip_public_ipv4_pool          = each.value.myEIPs_eip_eip_public_ipv4_pool
  eip_eip_tags                      = each.value.myEIPs_eip_eip_tags
}
