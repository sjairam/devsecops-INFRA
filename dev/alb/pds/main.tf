resource "aws_lb" "PDS-Docker-Dev" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/PDS-Docker-Dev/692a36cb4d450293"
  arn_suffix                                                   = "app/PDS-Docker-Dev/692a36cb4d450293"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "internal-PDS-Docker-Dev-74803359.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = true
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/PDS-Docker-Dev/692a36cb4d450293"
  idle_timeout                                                 = 60
  internal                                                     = true
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "PDS-Docker-Dev"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-01ee7ddb7c9f3d2be",
    "sg-6f935d1c",
    "sg-9b0543e9",
    "sg-af8031d3",
  ]
  subnets                                                      = [
    "subnet-b205c19f",
    "subnet-bee95ef7",
    "subnet-ff7883a4",
  ]
  tags                                                         = {
    "TargetType" = "Docker"
    "product"    = "Page Delivery Service - PDS"
    "waf-type"   = "internal-alb"
  }
  tags_all                                                     = {
    "TargetType" = "Docker"
    "product"    = "Page Delivery Service - PDS"
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
  arn               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/PDS-Docker-Dev/692a36cb4d450293/de33f9d9c927c3dc"
  id                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/PDS-Docker-Dev/692a36cb4d450293/de33f9d9c927c3dc"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/PDS-Docker-Dev/692a36cb4d450293"
  port              = 80
  protocol          = "HTTP"
  ssl_policy        = null
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/pds-http-dev/30dbd382848615a5"
    type             = "forward"

    forward {
      stickiness {
        duration = 0
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/pds-http-dev/30dbd382848615a5"
        weight = 1
      }
    }
  }
}

# aws_lb_listener.imported_listener2:
resource "aws_lb_listener" "imported_listener2" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/PDS-Docker-Dev/692a36cb4d450293/f6090860f593a2dd"
  certificate_arn   = "arn:aws:acm:us-east-1:217428790895:certificate/d32d13fe-a49d-45c8-8986-1d5134b03b3a"
  id                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/PDS-Docker-Dev/692a36cb4d450293/f6090860f593a2dd"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/PDS-Docker-Dev/692a36cb4d450293"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/pds-dev-https2/56ebb228edc2109f"
    type             = "forward"

    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/pds-dev-https2/56ebb228edc2109f"
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
resource "aws_lb_target_group" "pds-dev-https2" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/pds-dev-https2/56ebb228edc2109f"
  arn_suffix                        = "targetgroup/pds-dev-https2/56ebb228edc2109f"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/pds-dev-https2/56ebb228edc2109f"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/PDS-Docker-Dev/692a36cb4d450293",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "pds-dev-https2"
  name_prefix                       = null
  port                              = 10006
  protocol                          = "HTTPS"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "product" = "Page Delivery Service - PDS"
  }
  tags_all                          = {
    "product" = "Page Delivery Service - PDS"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-d53f09b2"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/health/"
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

# aws_lb_target_group.imported_tg2:
resource "aws_lb_target_group" "pds-http-dev" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/pds-http-dev/30dbd382848615a5"
  arn_suffix                        = "targetgroup/pds-http-dev/30dbd382848615a5"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/pds-http-dev/30dbd382848615a5"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/PDS-Docker-Dev/692a36cb4d450293",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "pds-http-dev"
  name_prefix                       = null
  port                              = 10005
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "product" = "Page Delivery Service - PDS"
  }
  tags_all                          = {
    "product" = "Page Delivery Service - PDS"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-d53f09b2"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/health/"
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