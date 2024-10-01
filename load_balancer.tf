# Register the instances with the load balancer
resource "aws_autoscaling_attachment" "test-automation1" {
  depends_on = [
    aws_eks_node_group.test-automation1,
    aws_elb.test-automation1,
  ]
  autoscaling_group_name = aws_eks_node_group.test-automation1.resources[0].autoscaling_groups[0].name
  elb                    = aws_elb.test-automation1.name
}

resource "aws_autoscaling_attachment" "test-automation2" {
  depends_on = [
    aws_eks_node_group.test-automation2,
    aws_elb.test-automation2,
  ]
  autoscaling_group_name = aws_eks_node_group.test-automation2.resources[0].autoscaling_groups[0].name
  elb                    = aws_elb.test-automation2.name
}

# aws_elb.test-automation1:
resource "aws_elb" "test-automation1" {
  connection_draining         = true
  connection_draining_timeout = 300
  cross_zone_load_balancing   = true
  desync_mitigation_mode      = "monitor"
  idle_timeout                = 4000
  instances                   = []
  internal                    = true
  name                        = "test-automation1"
  name_prefix                 = null
  security_groups             = aws_eks_cluster.test-automation1.vpc_config[0].security_group_ids
  source_security_group       = ""
  subnets = [
    "subnet-0e5aad24cc2949436",
    "subnet-55be7319",
    "subnet-726cf11a",
  ]
  tags     = {}
  tags_all = {}

  health_check {
    healthy_threshold   = 2
    interval            = 30
    target              = "TCP:80"
    timeout             = 5
    unhealthy_threshold = 10
  }

  listener {
    instance_port      = 18080
    instance_protocol  = "http"
    lb_port            = 18079
    lb_protocol        = "http"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 2181
    instance_protocol  = "tcp"
    lb_port            = 2181
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 30008
    instance_protocol  = "tcp"
    lb_port            = 30008
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 30080
    instance_protocol  = "tcp"
    lb_port            = 30080
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 30081
    instance_protocol  = "tcp"
    lb_port            = 30081
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 30494
    instance_protocol  = "tcp"
    lb_port            = 30494
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 30844
    instance_protocol  = "tcp"
    lb_port            = 30844
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 30881
    instance_protocol  = "tcp"
    lb_port            = 30881
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 32680
    instance_protocol  = "tcp"
    lb_port            = 32680
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 32681
    instance_protocol  = "tcp"
    lb_port            = 32681
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 32682
    instance_protocol  = "tcp"
    lb_port            = 32682
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 32683
    instance_protocol  = "tcp"
    lb_port            = 32683
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 3306
    instance_protocol  = "tcp"
    lb_port            = 3306
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 4335
    instance_protocol  = "tcp"
    lb_port            = 4335
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 443
    instance_protocol  = "tcp"
    lb_port            = 443
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 4447
    instance_protocol  = "tcp"
    lb_port            = 4447
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 5445
    instance_protocol  = "tcp"
    lb_port            = 5445
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 5601
    instance_protocol  = "tcp"
    lb_port            = 5601
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 6512
    instance_protocol  = "tcp"
    lb_port            = 6512
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 6513
    instance_protocol  = "tcp"
    lb_port            = 6513
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 6514
    instance_protocol  = "tcp"
    lb_port            = 6514
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 6515
    instance_protocol  = "tcp"
    lb_port            = 6515
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 8080
    instance_protocol  = "tcp"
    lb_port            = 8080
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 80
    instance_protocol  = "tcp"
    lb_port            = 80
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 8443
    instance_protocol  = "tcp"
    lb_port            = 8443
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 9093
    instance_protocol  = "tcp"
    lb_port            = 9093
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 9200
    instance_protocol  = "tcp"
    lb_port            = 9200
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
}

# aws_elb.test-automation2:
resource "aws_elb" "test-automation2" {
  connection_draining         = true
  connection_draining_timeout = 300
  cross_zone_load_balancing   = true
  desync_mitigation_mode      = "monitor"
  idle_timeout                = 4000
  instances                   = []
  internal                    = true
  name                        = "test-automation2"
  name_prefix                 = null
  security_groups             = aws_eks_cluster.test-automation2.vpc_config[0].security_group_ids
  source_security_group       = ""
  subnets = [
    "subnet-0e5aad24cc2949436",
    "subnet-55be7319",
    "subnet-726cf11a",
  ]
  tags     = {}
  tags_all = {}

  health_check {
    healthy_threshold   = 2
    interval            = 30
    target              = "TCP:80"
    timeout             = 5
    unhealthy_threshold = 10
  }

  listener {
    instance_port      = 18080
    instance_protocol  = "http"
    lb_port            = 18079
    lb_protocol        = "http"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 2181
    instance_protocol  = "tcp"
    lb_port            = 2181
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 30008
    instance_protocol  = "tcp"
    lb_port            = 30008
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 30080
    instance_protocol  = "tcp"
    lb_port            = 30080
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 30081
    instance_protocol  = "tcp"
    lb_port            = 30081
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 30494
    instance_protocol  = "tcp"
    lb_port            = 30494
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 30844
    instance_protocol  = "tcp"
    lb_port            = 30844
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 30881
    instance_protocol  = "tcp"
    lb_port            = 30881
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 32680
    instance_protocol  = "tcp"
    lb_port            = 32680
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 32681
    instance_protocol  = "tcp"
    lb_port            = 32681
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 32682
    instance_protocol  = "tcp"
    lb_port            = 32682
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 32683
    instance_protocol  = "tcp"
    lb_port            = 32683
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 3306
    instance_protocol  = "tcp"
    lb_port            = 3306
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 4335
    instance_protocol  = "tcp"
    lb_port            = 4335
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 443
    instance_protocol  = "tcp"
    lb_port            = 443
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 4447
    instance_protocol  = "tcp"
    lb_port            = 4447
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 5445
    instance_protocol  = "tcp"
    lb_port            = 5445
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 6512
    instance_protocol  = "tcp"
    lb_port            = 6512
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 6513
    instance_protocol  = "tcp"
    lb_port            = 6513
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 6514
    instance_protocol  = "tcp"
    lb_port            = 6514
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 6515
    instance_protocol  = "tcp"
    lb_port            = 6515
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 8080
    instance_protocol  = "tcp"
    lb_port            = 8080
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 80
    instance_protocol  = "tcp"
    lb_port            = 80
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 8443
    instance_protocol  = "tcp"
    lb_port            = 8443
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
  listener {
    instance_port      = 9093
    instance_protocol  = "tcp"
    lb_port            = 9093
    lb_protocol        = "tcp"
    ssl_certificate_id = null
  }
}