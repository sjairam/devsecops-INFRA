resource "aws_lb" "MPS-DEV" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/MPS-DEV/13d6601354017e1e"
  arn_suffix                                                   = "app/MPS-DEV/13d6601354017e1e"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "MPS-DEV-1261734884.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = true
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/MPS-DEV/13d6601354017e1e"
  idle_timeout                                                 = 60
  internal                                                     = false
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "MPS-DEV"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-0f9b271d82739da5e",
    "sg-af8031d3",
  ]
  subnets                                                      = [
    "subnet-0b8640b7636601be8",
    "subnet-0e582fc74b4873145",
    "subnet-0ee298b3924dedb4c",
  ]
  tags                                                         = {
    "product"  = "Media Presentation Service - MPS"
    "waf-type" = "external-alb"
  }
  tags_all                                                     = {
    "product"  = "Media Presentation Service - MPS"
    "waf-type" = "external-alb"
  }
  vpc_id                                                       = "vpc-d53f09b2"
  xff_header_processing_mode                                   = "append"
  zone_id                                                      = "Z35SXDOTRQ7X7K"

  access_logs {
    bucket  = "mpstesting123"
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
    subnet_id            = "subnet-0b8640b7636601be8"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    outpost_id           = null
    private_ipv4_address = null
    subnet_id            = "subnet-0e582fc74b4873145"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    outpost_id           = null
    private_ipv4_address = null
    subnet_id            = "subnet-0ee298b3924dedb4c"
  }
}

# aws_lb_listener.imported_listener:
resource "aws_lb_listener" "imported_listener" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/MPS-DEV/13d6601354017e1e/27045587484648e0"
  certificate_arn   = "arn:aws:acm:us-east-1:217428790895:certificate/1ecd3e7c-868e-4a1c-86d0-6aeb6698780d"
  id                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/MPS-DEV/13d6601354017e1e/27045587484648e0"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/MPS-DEV/13d6601354017e1e"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {
    "product" = "Media Presentation Service - MPS"
  }
  tags_all          = {
    "product" = "Media Presentation Service - MPS"
  }

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/MPS-DEV-23000/c4d4fee23d0ef0bb"
    type             = "forward"

    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/MPS-DEV-23000/c4d4fee23d0ef0bb"
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
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/ACCESS-HTTP-23023/28eb3915f84f08db"
  arn_suffix                        = "targetgroup/ACCESS-HTTP-23023/28eb3915f84f08db"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/ACCESS-HTTP-23023/28eb3915f84f08db"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/MPS-DEV/13d6601354017e1e",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "ACCESS-HTTP-23023"
  name_prefix                       = null
  port                              = 23023
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "product" = "Access Management Service - AMS"
  }
  tags_all                          = {
    "product" = "Access Management Service - AMS"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-d53f09b2"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/healthcheck"
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