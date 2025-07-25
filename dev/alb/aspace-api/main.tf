resource "aws_lb" "aspace-api-dev" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/aspace-api-dev/0d54f6aa6bf50a8c"
  arn_suffix                                                   = "app/aspace-api-dev/0d54f6aa6bf50a8c"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "internal-aspace-api-dev-85804627.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/aspace-api-dev/0d54f6aa6bf50a8c"
  idle_timeout                                                 = 60
  internal                                                     = true
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "aspace-api-dev"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-099ab47dd04cf0764",
    "sg-af8031d3",
  ]
  subnets                                                      = [
    "subnet-b205c19f",
    "subnet-bee95ef7",
    "subnet-ff7883a4",
  ]
  tags                                                         = {
    "waf-type" = "internal-alb"
  }
  tags_all                                                     = {
    "waf-type" = "internal-alb"
  }
  vpc_id                                                       = "vpc-d53f09b2"
  xff_header_processing_mode                                   = "append"
  zone_id                                                      = "Z35SXDOTRQ7X7K"

  access_logs {
    bucket  = null
    enabled = false
    prefix  = null
  }

  connection_logs {
    bucket  = null
    enabled = false
    prefix  = null
  }

  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    outpost_id           = null
    private_ipv4_address = null
    subnet_id            = "subnet-b205c19f"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    outpost_id           = null
    private_ipv4_address = null
    subnet_id            = "subnet-bee95ef7"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    outpost_id           = null
    private_ipv4_address = null
    subnet_id            = "subnet-ff7883a4"
  }
}

# aws_lb_listener.imported_listener:
resource "aws_lb_listener" "imported_listener" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/aspace-api-dev/0d54f6aa6bf50a8c/2c1069a1280ab486"
  certificate_arn   = "arn:aws:acm:us-east-1:217428790895:certificate/47c42a47-d137-4652-b769-9cea221c510d"
  id                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/aspace-api-dev/0d54f6aa6bf50a8c/2c1069a1280ab486"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/aspace-api-dev/0d54f6aa6bf50a8c"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-2021-06"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 0
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/aspace-api-dev/fcf52645117e8b3b"
    type             = "forward"

    forward {
      stickiness {
        duration = 0
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/aspace-api-dev/fcf52645117e8b3b"
        weight = 1
      }
    }
  }

  mutual_authentication {
    ignore_client_certificate_expiry = false
    mode                             = "off"
    trust_store_arn                  = null
  }
}

# aws_lb_target_group.imported_tg:
resource "aws_lb_target_group" "imported_tg" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/aspace-api-dev/fcf52645117e8b3b"
  arn_suffix                        = "targetgroup/aspace-api-dev/fcf52645117e8b3b"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/aspace-api-dev/fcf52645117e8b3b"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/aspace-api-dev/0d54f6aa6bf50a8c",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "aspace-api-dev"
  name_prefix                       = null
  port                              = 19123
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "product" = "ArchivesSpace"
  }
  tags_all                          = {
    "product" = "ArchivesSpace"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-d53f09b2"

  health_check {
    enabled             = true
    healthy_threshold   = 3
    interval            = 20
    matcher             = "200"
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 2
  }

  stickiness {
    cookie_duration = 86400
    cookie_name     = null
    enabled         = false
    type            = "lb_cookie"
  }

  target_failover {}

  target_health_state {}
}
