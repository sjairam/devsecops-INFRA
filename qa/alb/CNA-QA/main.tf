resource "aws_lb" "CNA-QA" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/CNA-QA/8bc175c9e777aa19"
  arn_suffix                                                   = "app/CNA-QA/8bc175c9e777aa19"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "CNA-QA-1839740003.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/CNA-QA/8bc175c9e777aa19"
  idle_timeout                                                 = 60
  internal                                                     = false
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "CNA-QA"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-5c622c20",
    "sg-887b86f4",
    "sg-9d46bfe1",
  ]
  subnets                                                      = [
    "subnet-09fd828d5035cc79e",
    "subnet-0aac1d6d604bd0c71",
    "subnet-0f1a7b236c579a034",
  ]
  tags                                                         = {
    "app-type"              = "Stand-alone"
    "environment"           = "Test"
    "name"                  = "CNA-QA"
    "product"               = "Colonial North America - CNA"
    "waf-custom"            = "exclude-xss"
    "waf-exception-request" = "INC04157125"
    "waf-type"              = "exception-alb"
  }
  tags_all                                                     = {
    "app-type"              = "Stand-alone"
    "environment"           = "Test"
    "name"                  = "CNA-QA"
    "product"               = "Colonial North America - CNA"
    "waf-custom"            = "exclude-xss"
    "waf-exception-request" = "INC04157125"
    "waf-type"              = "exception-alb"
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
  arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/CNA-QA/8bc175c9e777aa19/8ebe967549f20f5e"
  certificate_arn   = "arn:aws:acm:us-east-1:847760228496:certificate/06ce64b3-c120-4341-bde8-1912a4a4fcbb"
  id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/CNA-QA/8bc175c9e777aa19/8ebe967549f20f5e"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/CNA-QA/8bc175c9e777aa19"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/COLONIAL-NORTH-AMERICA-QA/dc6a21298482b93d"
    type             = "forward"

    forward {
      stickiness {
        duration = 0
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/COLONIAL-NORTH-AMERICA-QA/dc6a21298482b93d"
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

resource "aws_lb_target_group" "COLONIAL-NORTH-AMERICA-QA" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/COLONIAL-NORTH-AMERICA-QA/dc6a21298482b93d"
  arn_suffix                        = "targetgroup/COLONIAL-NORTH-AMERICA-QA/dc6a21298482b93d"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/COLONIAL-NORTH-AMERICA-QA/dc6a21298482b93d"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/CNA-QA/8bc175c9e777aa19",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "COLONIAL-NORTH-AMERICA-QA"
  name_prefix                       = null
  port                              = 21700
  protocol                          = "HTTPS"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "environment" = "Test"
    "product"     = "Colonial North America - CNA"
  }
  tags_all                          = {
    "environment" = "Test"
    "product"     = "Colonial North America - CNA"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-a60437c1"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 6
    matcher             = "200,302"
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