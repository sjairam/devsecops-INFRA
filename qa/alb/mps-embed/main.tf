resource "aws_lb" "mps-embeded-qa" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/mps-embeded-qa/e75d1c11cace6987"
  arn_suffix                                                   = "app/mps-embeded-qa/e75d1c11cace6987"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "mps-embeded-qa-1072023831.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/mps-embeded-qa/e75d1c11cace6987"
  idle_timeout                                                 = 60
  internal                                                     = false
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "mps-embeded-qa"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-0f0494d1ed56ac040",
    "sg-887b86f4",
    "sg-9d46bfe1",
  ]
  subnets                                                      = [
    "subnet-09fd828d5035cc79e",
    "subnet-0aac1d6d604bd0c71",
    "subnet-0f1a7b236c579a034",
  ]
  tags                                                         = {
    "Name"        = "mps-embeded-qa"
    "app-type"    = "Stand-alone"
    "environment" = "Test"
    "product"     = "Media Presentation Service - MPS"
    "waf-type"    = "external-alb"
  }
  tags_all                                                     = {
    "Name"        = "mps-embeded-qa"
    "app-type"    = "Stand-alone"
    "environment" = "Test"
    "product"     = "Media Presentation Service - MPS"
    "waf-type"    = "external-alb"
  }
  vpc_id                                                       = "vpc-a60437c1"
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
    subnet_id            = "subnet-09fd828d5035cc79e"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    outpost_id           = null
    private_ipv4_address = null
    subnet_id            = "subnet-0aac1d6d604bd0c71"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    outpost_id           = null
    private_ipv4_address = null
    subnet_id            = "subnet-0f1a7b236c579a034"
  }
}

# aws_lb_listener.imported_listener:
resource "aws_lb_listener" "imported_listener" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/mps-embeded-qa/e75d1c11cace6987/53618cfa9ab9d162"
  certificate_arn   = "arn:aws:acm:us-east-1:847760228496:certificate/264da707-5bbf-4b5e-b6a7-84f291e7bb6d"
  id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/mps-embeded-qa/e75d1c11cace6987/53618cfa9ab9d162"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/mps-embeded-qa/e75d1c11cace6987"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/mps-embeded-qa-http-23018/c3d6fbad41f4f59f"
    type             = "forward"

    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/mps-embeded-qa-http-23018/c3d6fbad41f4f59f"
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
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/mps-embeded-qa-http-23018/c3d6fbad41f4f59f"
  arn_suffix                        = "targetgroup/mps-embeded-qa-http-23018/c3d6fbad41f4f59f"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/mps-embeded-qa-http-23018/c3d6fbad41f4f59f"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/mps-embeded-qa/e75d1c11cace6987",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "mps-embeded-qa-http-23018"
  name_prefix                       = null
  port                              = 23018
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "product" = "Media Presentation Service - MPS"
  }
  tags_all                          = {
    "product" = "Media Presentation Service - MPS"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-a60437c1"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200,302"
    path                = "/healtcheck"
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