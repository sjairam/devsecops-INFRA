resource "aws_lb" "GEO-DATA-Restricted" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/GEODATA-DEV-RESTRICTED/91cc72497ee30e20"
  arn_suffix                                                   = "app/GEODATA-DEV-RESTRICTED/91cc72497ee30e20"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "GEODATA-DEV-RESTRICTED-233069220.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/GEODATA-DEV-RESTRICTED/91cc72497ee30e20"
  idle_timeout                                                 = 60
  internal                                                     = false
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "GEODATA-DEV-RESTRICTED"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-0f184e9259cae441d",
    "sg-af8031d3",
  ]
  subnets                                                      = [
    "subnet-0a8ff32e01d24713f",
    "subnet-0b8640b7636601be8",
    "subnet-0e582fc74b4873145",
  ]
  tags                                                         = {
    "product"  = "Harvard Geospatial Library - HGL"
    "waf-type" = "external-alb"
  }
  tags_all                                                     = {
    "product"  = "Harvard Geospatial Library - HGL"
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
resource "aws_lb_listener" "front_443" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/GEODATA-DEV-RESTRICTED/91cc72497ee30e20/364ce959ce00c26f"
  certificate_arn   = "arn:aws:acm:us-east-1:217428790895:certificate/d812d637-194c-4f96-8493-cbfec9f747a9"
  id                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/GEODATA-DEV-RESTRICTED/91cc72497ee30e20/364ce959ce00c26f"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/GEODATA-DEV-RESTRICTED/91cc72497ee30e20"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/GEODATA-K8-DEV/157e2b11f321e732"
    type             = "forward"

    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/GEODATA-K8-DEV/157e2b11f321e732"
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
resource "aws_lb_target_group" "GEODATA-K8-DEV" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/GEODATA-K8-DEV/157e2b11f321e732"
  arn_suffix                        = "targetgroup/GEODATA-K8-DEV/157e2b11f321e732"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/GEODATA-K8-DEV/157e2b11f321e732"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/GEODATA-DEV-RESTRICTED/91cc72497ee30e20",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "GEODATA-K8-DEV"
  name_prefix                       = null
  port                              = 32001
  protocol                          = "HTTPS"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {}
  tags_all                          = {}
  target_type                       = "ip"
  vpc_id                            = "vpc-d53f09b2"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/"
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