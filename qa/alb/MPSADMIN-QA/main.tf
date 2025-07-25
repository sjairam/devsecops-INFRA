resource "aws_lb" "MPS-ADMIN-QA" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/MPS-ADMIN-QA/a49178452f77a0dc"
  arn_suffix                                                   = "app/MPS-ADMIN-QA/a49178452f77a0dc"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "MPS-ADMIN-QA-119330553.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/MPS-ADMIN-QA/a49178452f77a0dc"
  idle_timeout                                                 = 60
  internal                                                     = false
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "MPS-ADMIN-QA"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-09fded8965b056909",
    "sg-9d46bfe1",
  ]
  subnets                                                      = [
    "subnet-09fd828d5035cc79e",
    "subnet-0aac1d6d604bd0c71",
    "subnet-0f1a7b236c579a034",
  ]
  tags                                                         = {
    "Name"        = "MPS-ADMIN-QA"
    "environment" = "Test"
    "product"     = "Media Presentation Service - MPS"
    "waf-type"    = "external-alb"
  }
  tags_all                                                     = {
    "Name"        = "MPS-ADMIN-QA"
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
  arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/MPS-ADMIN-QA/a49178452f77a0dc/e2769c12aa8eb540"
  certificate_arn   = "arn:aws:acm:us-east-1:847760228496:certificate/93c554c8-ef38-40c7-81bf-b02e1e3ca495"
  id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/MPS-ADMIN-QA/a49178452f77a0dc/e2769c12aa8eb540"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/MPS-ADMIN-QA/a49178452f77a0dc"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/MPS-ADMIN-QA-HTTP-23004/3cc3fee3f3d8646e"
    type             = "forward"

    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/MPS-ADMIN-QA-HTTP-23004/3cc3fee3f3d8646e"
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
resource "aws_lb_target_group" "MPS-ADMIN-QA-HTTP-23004" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/MPS-ADMIN-QA-HTTP-23004/3cc3fee3f3d8646e"
  arn_suffix                        = "targetgroup/MPS-ADMIN-QA-HTTP-23004/3cc3fee3f3d8646e"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/MPS-ADMIN-QA-HTTP-23004/3cc3fee3f3d8646e"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/MPS-ADMIN-QA/a49178452f77a0dc",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "MPS-ADMIN-QA-HTTP-23004"
  name_prefix                       = null
  port                              = 23004
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
    path                = "/admin/ingest/healthcheck"
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