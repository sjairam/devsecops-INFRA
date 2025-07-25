# aws_lb.example:
resource "aws_lb" "TALKWITHHOLLIS-QA" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/TALKWITHHOLLIS-QA/882e3aaf57ef91ee"
  arn_suffix                                                   = "app/TALKWITHHOLLIS-QA/882e3aaf57ef91ee"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "TALKWITHHOLLIS-QA-70913787.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/TALKWITHHOLLIS-QA/882e3aaf57ef91ee"
  idle_timeout                                                 = 60
  internal                                                     = false
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "TALKWITHHOLLIS-QA"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-019858ff21b1d9019",
    "sg-9d46bfe1",
  ]
  subnets                                                      = [
    "subnet-09fd828d5035cc79e",
    "subnet-0aac1d6d604bd0c71",
    "subnet-0f1a7b236c579a034",
  ]
  tags                                                         = {
    "waf-type" = "external-alb"
  }
  tags_all                                                     = {
    "waf-type" = "external-alb"
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
resource "aws_lb_listener" "TALKWITHHOLLIS-UI-QA-23050" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/TALKWITHHOLLIS-QA/882e3aaf57ef91ee/35aec86b408751bf"
  certificate_arn   = "arn:aws:acm:us-east-1:847760228496:certificate/c83109fc-74da-4eba-a501-35d9add0dd5d"
  id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/TALKWITHHOLLIS-QA/882e3aaf57ef91ee/35aec86b408751bf"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/TALKWITHHOLLIS-QA/882e3aaf57ef91ee"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-2021-06"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/TALKWITHHOLLIS-UI-QA-23050/a1a7f0b99067e44d"
    type             = "forward"

    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/TALKWITHHOLLIS-UI-QA-23050/a1a7f0b99067e44d"
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
resource "aws_lb_target_group" "TALKWITHHOLLIS-API-QA-23051" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/TALKWITHHOLLIS-API-QA-23051/f84664e3609f5c9e"
  arn_suffix                        = "targetgroup/TALKWITHHOLLIS-API-QA-23051/f84664e3609f5c9e"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/TALKWITHHOLLIS-API-QA-23051/f84664e3609f5c9e"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/TALKWITHHOLLIS-QA/882e3aaf57ef91ee",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "TALKWITHHOLLIS-API-QA-23051"
  name_prefix                       = null
  port                              = 23051
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {}
  tags_all                          = {}
  target_type                       = "instance"
  vpc_id                            = "vpc-a60437c1"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200,302"
    path                = "/"
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
resource "aws_lb_target_group" "TALKWITHHOLLIS-UI-QA-23050" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/TALKWITHHOLLIS-UI-QA-23050/a1a7f0b99067e44d"
  arn_suffix                        = "targetgroup/TALKWITHHOLLIS-UI-QA-23050/a1a7f0b99067e44d"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/TALKWITHHOLLIS-UI-QA-23050/a1a7f0b99067e44d"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/TALKWITHHOLLIS-QA/882e3aaf57ef91ee",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "TALKWITHHOLLIS-UI-QA-23050"
  name_prefix                       = null
  port                              = 23050
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {}
  tags_all                          = {}
  target_type                       = "instance"
  vpc_id                            = "vpc-a60437c1"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/"
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