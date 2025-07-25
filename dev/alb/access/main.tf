resource "aws_lb" "Access-Dev" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/Access-Dev/75cf4b8ef4f4d8c9"
  arn_suffix                                                   = "app/Access-Dev/75cf4b8ef4f4d8c9"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "Access-Dev-183544124.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/Access-Dev/75cf4b8ef4f4d8c9"
  idle_timeout                                                 = 60
  internal                                                     = false
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "Access-Dev"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-06c4b58e3d031e8f5",
    "sg-af8031d3",
  ]
  subnets                                                      = [
    "subnet-0a8ff32e01d24713f",
    "subnet-0b8640b7636601be8",
    "subnet-0e582fc74b4873145",
  ]
  tags                                                         = {
    "Name"     = "Access Dev"
    "product"  = "Access Management Service - AMS"
    "waf-type" = "external-alb"
  }
  tags_all                                                     = {
    "Name"     = "Access Dev"
    "product"  = "Access Management Service - AMS"
    "waf-type" = "external-alb"
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
    subnet_id            = "subnet-0a8ff32e01d24713f"
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
}

# aws_lb_listener.imported_listener:
resource "aws_lb_listener" "imported_listener" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/Access-Dev/75cf4b8ef4f4d8c9/041021519ab87cb1"
  id                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/Access-Dev/75cf4b8ef4f4d8c9/041021519ab87cb1"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/Access-Dev/75cf4b8ef4f4d8c9"
  port              = 80
  protocol          = "HTTP"
  ssl_policy        = null
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = null
    type             = "redirect"

    redirect {
      host        = "#{host}"
      path        = "/#{path}"
      port        = "443"
      protocol    = "HTTPS"
      query       = "#{query}"
      status_code = "HTTP_301"
    }
  }
}

# aws_lb_listener.imported_listener2:
resource "aws_lb_listener" "imported_listener2" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/Access-Dev/75cf4b8ef4f4d8c9/15238135d1666666"
  certificate_arn   = "arn:aws:acm:us-east-1:217428790895:certificate/cb18d655-9c73-45d7-8944-b8275ef2722f"
  id                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/Access-Dev/75cf4b8ef4f4d8c9/15238135d1666666"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/Access-Dev/75cf4b8ef4f4d8c9"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/access-dev-http-23016/aa7c22057d69e83a"
    type             = "forward"

    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/access-dev-http-23016/aa7c22057d69e83a"
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

# aws_lb_listener.imported_listener3:
resource "aws_lb_listener" "imported_listener3" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/Access-Dev/75cf4b8ef4f4d8c9/9fbb80a15a69cec8"
  certificate_arn   = "arn:aws:acm:us-east-1:217428790895:certificate/cb18d655-9c73-45d7-8944-b8275ef2722f"
  id                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/Access-Dev/75cf4b8ef4f4d8c9/9fbb80a15a69cec8"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/Access-Dev/75cf4b8ef4f4d8c9"
  port              = 8091
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/access-dev-http-23016/aa7c22057d69e83a"
    type             = "forward"

    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/access-dev-http-23016/aa7c22057d69e83a"
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
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/access-dev-http-23016/aa7c22057d69e83a"
  arn_suffix                        = "targetgroup/access-dev-http-23016/aa7c22057d69e83a"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/access-dev-http-23016/aa7c22057d69e83a"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/Access-Dev/75cf4b8ef4f4d8c9",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "access-dev-http-23016"
  name_prefix                       = null
  port                              = 23016
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
    matcher             = "200,302"
    path                = "/redirects/healthcheck"
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