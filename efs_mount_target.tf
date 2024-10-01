# aws_efs_mount_target.test_automation1_2:
resource "aws_efs_mount_target" "test_automation1_1" {
  depends_on = [
    aws_efs_file_system.test_automation1,
  ]
  file_system_id = aws_efs_file_system.test_automation1.id
  security_groups = [
    "sg-5b307c30",
  ]
  subnet_id = "subnet-0385724146fd0afb9"
}

# aws_efs_mount_target.test_automation1_3:
resource "aws_efs_mount_target" "test_automation1_2" {
  depends_on = [
    aws_efs_file_system.test_automation1,
  ]
  file_system_id = aws_efs_file_system.test_automation1.id
  security_groups = [
    "sg-5b307c30",
  ]
  subnet_id = "subnet-00b0c102e6ed49c6c"
}

# aws_efs_mount_target.test_automation2_1:
resource "aws_efs_mount_target" "test_automation2_1" {
  depends_on = [
    aws_efs_file_system.test_automation2,
  ]
  file_system_id = aws_efs_file_system.test_automation2.id
  security_groups = [
    "sg-5b307c30",
  ]
  subnet_id = "subnet-0385724146fd0afb9"
}

# aws_efs_mount_target.test_automation2_2:
resource "aws_efs_mount_target" "test_automation2_2" {
  depends_on = [
    aws_efs_file_system.test_automation2,
  ]
  file_system_id = aws_efs_file_system.test_automation2.id
  security_groups = [
    "sg-5b307c30",
  ]
  subnet_id = "subnet-00b0c102e6ed49c6c"
}

