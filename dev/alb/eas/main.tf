resource "aws_lb" "eas-dev" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/eas-dev/7d975dc442028e8c"
  arn_suffix                                                   = "app/eas-dev/7d975dc442028e8c"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "internal-eas-dev-631399178.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/eas-dev/7d975dc442028e8c"
  idle_timeout                                                 = 60
  internal                                                     = true
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "eas-dev"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-6f935d1c",
    "sg-af8031d3",
  ]
  subnets                                                      = [
    "subnet-019905b0e012c8d62",
    "subnet-0f6e32ff04309064f",
  ]
  tags                                                         = {
    "product"  = "EASi"
    "waf-type" = "internal-alb"
  }
  tags_all                                                     = {
    "product"  = "EASi"
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
    subnet_id            = "subnet-019905b0e012c8d62"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    outpost_id           = null
    private_ipv4_address = null
    subnet_id            = "subnet-0f6e32ff04309064f"
  }
}

# aws_lb_listener.imported_listener:
resource "aws_lb_listener" "eas-dev" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/eas-dev/7d975dc442028e8c/cd15a7bda704afe6"
  certificate_arn   = "arn:aws:acm:us-east-1:217428790895:certificate/7dd70092-38c3-4e52-91b1-36a019960d6f"
  id                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/eas-dev/7d975dc442028e8c/cd15a7bda704afe6"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/eas-dev/7d975dc442028e8c"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/eas-dev-https-10043/68c1a3104a7085e4"
    type             = "forward"

    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/eas-dev-https-10043/68c1a3104a7085e4"
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
resource "aws_lb_target_group" "eas-dev-https-10043" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/eas-dev-https-10043/68c1a3104a7085e4"
  arn_suffix                        = "targetgroup/eas-dev-https-10043/68c1a3104a7085e4"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/eas-dev-https-10043/68c1a3104a7085e4"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/eas-dev/7d975dc442028e8c",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "eas-dev-https-10043"
  name_prefix                       = null
  port                              = 10043
  protocol                          = "HTTPS"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "product" = "EASi"
  }
  tags_all                          = {
    "product" = "EASi"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-d53f09b2"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "302"
    path                = "/easi"
    port                = "traffic-port"
    protocol            = "HTTPS"
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

  target_group_health {
    dns_failover {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }
    unhealthy_state_routing {
      minimum_healthy_targets_count      = 1
      minimum_healthy_targets_percentage = "off"
    }
  }

  target_health_state {}
}