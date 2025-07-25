resource "aws_lb" "FTS-PROD" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/FTS-PROD/a99db61bde3fcc33"
  arn_suffix                                                   = "app/FTS-PROD/a99db61bde3fcc33"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "FTS-PROD-1162959568.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/FTS-PROD/a99db61bde3fcc33"
  idle_timeout                                                 = 60
  internal                                                     = false
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "FTS-PROD"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-0e293b2f4f01b3aee",
    "sg-887b86f4",
    "sg-9d46bfe1",
  ]
  subnets                                                      = [
    "subnet-09fd828d5035cc79e",
    "subnet-0aac1d6d604bd0c71",
    "subnet-0f1a7b236c579a034",
  ]
  tags                                                         = {
    "Name"        = "FTS PROD"
    "environment" = "Production"
    "product"     = "Full Text Search Service - FTS"
    "waf-type"    = "external-alb"
  }
  tags_all                                                     = {
    "Name"        = "FTS PROD"
    "environment" = "Production"
    "product"     = "Full Text Search Service - FTS"
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

# aws_lb_listener.imported_listener1:
resource "aws_lb_listener" "FTS-PROD-10087" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/FTS-PROD/a99db61bde3fcc33/68cc5eba036f3a63"
  certificate_arn   = "arn:aws:acm:us-east-1:847760228496:certificate/1ba602b2-a53c-4301-b9f6-341b383c279b"
  id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/FTS-PROD/a99db61bde3fcc33/68cc5eba036f3a63"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/FTS-PROD/a99db61bde3fcc33"
  port              = 8443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/FTS-PROD-10087/ebe57673dbf9c9ef"
    type             = "forward"

    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/FTS-PROD-10087/ebe57673dbf9c9ef"
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

# aws_lb_listener.imported_listener2:
resource "aws_lb_listener" "FTS-PROD" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/FTS-PROD/a99db61bde3fcc33/6d9c4a238f567226"
  certificate_arn   = "arn:aws:acm:us-east-1:847760228496:certificate/1ba602b2-a53c-4301-b9f6-341b383c279b"
  id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/FTS-PROD/a99db61bde3fcc33/6d9c4a238f567226"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/FTS-PROD/a99db61bde3fcc33"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/FTS-PROD/26d0f43bb17476e8"
    type             = "forward"

    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/FTS-PROD/26d0f43bb17476e8"
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

# aws_lb_target_group.imported_tg1:
resource "aws_lb_target_group" "FTS-PROD-10087" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/FTS-PROD-10087/ebe57673dbf9c9ef"
  arn_suffix                        = "targetgroup/FTS-PROD-10087/ebe57673dbf9c9ef"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/FTS-PROD-10087/ebe57673dbf9c9ef"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/FTS-PROD/a99db61bde3fcc33",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "FTS-PROD-10087"
  name_prefix                       = null
  port                              = 10087
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "Name"        = "FTS-PROD-10087"
    "environment" = "Production"
    "product"     = "Full Text Search Service - FTS"
  }
  tags_all                          = {
    "Name"        = "FTS-PROD-10087"
    "environment" = "Production"
    "product"     = "Full Text Search Service - FTS"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-a60437c1"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/fts/api/v2/health"
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

# aws_lb_target_group.imported_tg2:
resource "aws_lb_target_group" "FTS-PROD-10089" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/FTS-PROD-10089/d3a6a20909dde404"
  arn_suffix                        = "targetgroup/FTS-PROD-10089/d3a6a20909dde404"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/FTS-PROD-10089/d3a6a20909dde404"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/FTS-PROD/a99db61bde3fcc33",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "FTS-PROD-10089"
  name_prefix                       = null
  port                              = 10089
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "environment" = "Production"
    "product"     = "Full Text Search Service - FTS"
  }
  tags_all                          = {
    "environment" = "Production"
    "product"     = "Full Text Search Service - FTS"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-a60437c1"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/fts/api/v2/health"
    port                = "10087"
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