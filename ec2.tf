resource "aws_instance" "nat_bridge" {
  launch_template {
    id = "lt-0fd66da1528b87303"
  }
  ami                                  = "ami-0b8a83c274c0fd9d2"
  associate_public_ip_address          = false
  availability_zone                    = "ap-southeast-1b"
  disable_api_stop                     = false
  disable_api_termination              = false
  ebs_optimized                        = false
  get_password_data                    = false
  hibernation                          = false
  host_id                              = null
  instance_initiated_shutdown_behavior = "stop"
  instance_lifecycle                   = null
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "inside-eks-natsetup"
  monitoring                           = false
  outpost_arn                          = null
  password_data                        = null
  placement_group                      = null
  placement_partition_number           = 0
  public_dns                           = null
  public_ip                            = null
  secondary_private_ips                = []
  security_groups                      = []
  source_dest_check                    = false
  spot_instance_request_id             = null
  subnet_id                            = "subnet-55be7319"
  tags = {
    "Name" = "nat_bridge"
  }
  tags_all = {
    "Name" = "nat_bridge"
  }
  tenancy = "default"
  vpc_security_group_ids = [
    "sg-0c051fd541df9a34e",
  ]

  credit_specification {
    cpu_credits = "standard"
  }

  enclave_options {
    enabled = false
  }


  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    tags                  = {}
    tags_all              = {}
    throughput            = 0
    volume_size           = 8
  }
}