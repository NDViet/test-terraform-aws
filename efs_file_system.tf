# aws_efs_file_system.test_automation1:
resource "aws_efs_file_system" "test_automation1" {
  availability_zone_id            = null
  availability_zone_name          = null
  creation_token                  = "quickCreated-a2adf8aa-fb47-4491-9221-425088764a71"
  encrypted                       = true
  kms_key_id                      = "arn:aws:kms:ap-southeast-1:202410010000:key/294ac2f1-775a-4b04-b60a-2dcea8ef6b06"
  performance_mode                = "generalPurpose"
  provisioned_throughput_in_mibps = 0
  tags = {
    "Name" = "test-automation1"
  }
  tags_all = {
    "Name" = "test-automation1"
  }
  throughput_mode = "elastic"

  lifecycle_policy {
    transition_to_archive               = null
    transition_to_ia                    = "AFTER_30_DAYS"
    transition_to_primary_storage_class = null
  }
  lifecycle_policy {
    transition_to_archive               = "AFTER_90_DAYS"
    transition_to_ia                    = null
    transition_to_primary_storage_class = null
  }

  protection {
    replication_overwrite = "ENABLED"
  }
}

# aws_efs_file_system.test_automation2:
resource "aws_efs_file_system" "test_automation2" {
  availability_zone_id            = null
  availability_zone_name          = null
  creation_token                  = "console-772d6334-bd04-48ca-8f89-27a2b4b1a845"
  encrypted                       = true
  kms_key_id                      = "arn:aws:kms:ap-southeast-1:202410010000:key/294ac2f1-775a-4b04-b60a-2dcea8ef6b06"
  performance_mode                = "generalPurpose"
  provisioned_throughput_in_mibps = 0
  tags = {
    "Name" = "test-automation2"
  }
  tags_all = {
    "Name" = "test-automation2"
  }
  throughput_mode = "elastic"

  lifecycle_policy {
    transition_to_archive               = null
    transition_to_ia                    = "AFTER_30_DAYS"
    transition_to_primary_storage_class = null
  }
  lifecycle_policy {
    transition_to_archive               = "AFTER_90_DAYS"
    transition_to_ia                    = null
    transition_to_primary_storage_class = null
  }

  protection {
    replication_overwrite = "ENABLED"
  }
}
