# aws_lb.example:
resource "aws_lb" "SDS-Cookie-Server" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/SDS-Cookie-Server/79cba3932574a796"
  arn_suffix                                                   = "app/SDS-Cookie-Server/79cba3932574a796"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "internal-SDS-Cookie-Server-1756565379.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/SDS-Cookie-Server/79cba3932574a796"
  idle_timeout                                                 = 60
  internal                                                     = true
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "SDS-Cookie-Server"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-af8031d3",
  ]
  subnets                                                      = [
    "subnet-b205c19f",
    "subnet-bae95ef3",
    "subnet-ff7883a4",
  ]
  tags                                                         = {
    "Name"       = "SDS Cookie Server"
    "TargetType" = "Docker"
    "product"    = "Streaming Delivery Service - SDS"
    "waf-type"   = "internal-alb"
  }
  tags_all                                                     = {
    "Name"       = "SDS Cookie Server"
    "TargetType" = "Docker"
    "product"    = "Streaming Delivery Service - SDS"
    "waf-type"   = "internal-alb"
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
    subnet_id            = "subnet-bae95ef3"
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
  arn               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/SDS-Cookie-Server/79cba3932574a796/aae529efbb13480a"
  certificate_arn   = "arn:aws:acm:us-east-1:217428790895:certificate/121c169a-940c-4ddd-947e-7b6d8d407337"
  id                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/SDS-Cookie-Server/79cba3932574a796/aae529efbb13480a"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/SDS-Cookie-Server/79cba3932574a796"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {
    "product" = "Streaming Delivery Service - SDS"
  }
  tags_all          = {
    "product" = "Streaming Delivery Service - SDS"
  }

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/SDS-Cookie-Server/e83d38cea726d8fd"
    type             = "forward"

    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/SDS-Cookie-Server/e83d38cea726d8fd"
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
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/SDS-Cookie-Server/e83d38cea726d8fd"
  arn_suffix                        = "targetgroup/SDS-Cookie-Server/e83d38cea726d8fd"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/SDS-Cookie-Server/e83d38cea726d8fd"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/SDS-Cookie-Server/79cba3932574a796",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "SDS-Cookie-Server"
  name_prefix                       = null
  port                              = 10443
  protocol                          = "HTTPS"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "product" = "Streaming Delivery Service - SDS"
  }
  tags_all                          = {
    "product" = "Streaming Delivery Service - SDS"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-d53f09b2"

  health_check {
    enabled             = true
    healthy_threshold   = 3
    interval            = 29
    matcher             = "200"
    path                = "/upstatus"
    port                = "10443"
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