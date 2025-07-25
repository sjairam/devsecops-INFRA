resource "aws_lb" "INLIB-ADM-PROD" {
  //arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/INLIB-ADM-PROD/c544c640a4b960d8"
  arn_suffix                                                   = "app/INLIB-ADM-PROD/c544c640a4b960d8"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "internal-INLIB-ADM-PROD-374904490.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  //id                                                           = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/INLIB-ADM-PROD/c544c640a4b960d8"
  idle_timeout                                                 = 60
  internal                                                     = true
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "INLIB-ADM-PROD"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-9d46bfe1",
  ]
  subnets                                                      = [
    "subnet-0628994f",
    "subnet-89de1ad2",
  ]
  tags                                                         = {
    "Name"        = "INLIB-ADM.LTS.HARVARD.EDU"
    "environment" = "Production"
    "product"     = "Access Management Service - AMS"
    "waf-type"    = "internal-alb"
  }
  tags_all                                                     = {
    "Name"        = "INLIB-ADM.LTS.HARVARD.EDU"
    "environment" = "Production"
    "product"     = "Access Management Service - AMS"
    "waf-type"    = "internal-alb"
  }
  //vpc_id                                                       = "vpc-a60437c1"
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
    subnet_id            = "subnet-0628994f"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    outpost_id           = null
    private_ipv4_address = null
    subnet_id            = "subnet-89de1ad2"
  }
}

# aws_lb_listener.imported_listener:
resource "aws_lb_listener" "imported_listener" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/INLIB-ADM-PROD/c544c640a4b960d8/5dab9300eeeacfd0"
  certificate_arn   = "arn:aws:acm:us-east-1:847760228496:certificate/5b096269-5d30-4464-83cc-354232610a9b"
  id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/INLIB-ADM-PROD/c544c640a4b960d8/5dab9300eeeacfd0"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/INLIB-ADM-PROD/c544c640a4b960d8"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 0
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/INLIB-ADM-PROD-23087/5cf549b034edd8d2"
    type             = "forward"

    forward {
      stickiness {
        duration = 0
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/INLIB-ADM-PROD-23087/5cf549b034edd8d2"
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
resource "aws_lb_target_group" "INLIB-ADM-PROD-23087" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/INLIB-ADM-PROD-23087/5cf549b034edd8d2"
  arn_suffix                        = "targetgroup/INLIB-ADM-PROD-23087/5cf549b034edd8d2"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/INLIB-ADM-PROD-23087/5cf549b034edd8d2"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/INLIB-ADM-PROD/c544c640a4b960d8",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "INLIB-ADM-PROD-23087"
  name_prefix                       = null
  port                              = 23087
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "Name"        = "inlib-adm-23087"
    "environment" = "Production"
    "product"     = "Access Management Service - AMS"
  }
  tags_all                          = {
    "Name"        = "inlib-adm-23087"
    "environment" = "Production"
    "product"     = "Access Management Service - AMS"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-a60437c1"

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