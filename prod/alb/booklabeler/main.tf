resource "aws_lb" "booklabeler-prod" {
  // arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/booklabeler-prod/3415b18946ebcacc"
  // arn_suffix                                                   = "app/booklabeler-prod/3415b18946ebcacc"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "internal-booklabeler-prod-749945611.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  // id                                                           = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/booklabeler-prod/3415b18946ebcacc"
  idle_timeout                                                 = 120
  internal                                                     = true
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "booklabeler-prod"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-0ff1db7f15240e928",
    "sg-3af29a45",
    "sg-9d46bfe1",
  ]
  subnets                                                      = [
    "subnet-0628994f",
    "subnet-88de1ad3",
    "subnet-94b475b9",
  ]
  tags                                                         = {
    "environment" = "Production"
    "product"     = "Book Label Generator - WPC"
    "waf-type"    = "internal-alb"
  }
  tags_all                                                     = {
    "environment" = "Production"
    "product"     = "Book Label Generator - WPC"
    "waf-type"    = "internal-alb"
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
    subnet_id            = "subnet-0628994f"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    outpost_id           = null
    private_ipv4_address = null
    subnet_id            = "subnet-88de1ad3"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    outpost_id           = null
    private_ipv4_address = null
    subnet_id            = "subnet-94b475b9"
  }
}

# aws_lb_listener.imported_listener:
resource "aws_lb_listener" "imported_listener" {
  // arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/booklabeler-prod/3415b18946ebcacc/af4731bb46d23640"
  certificate_arn   = "arn:aws:acm:us-east-1:847760228496:certificate/653008bd-f23f-4b59-a9f5-afa549e017c3"
  id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/booklabeler-prod/3415b18946ebcacc/af4731bb46d23640"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/booklabeler-prod/3415b18946ebcacc"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 0
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/Booklabeler-prod/52ea5eda4fb146c5"
    type             = "forward"

    forward {
      stickiness {
        duration = 0
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/Booklabeler-prod/52ea5eda4fb146c5"
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
  // arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/Booklabeler-prod/52ea5eda4fb146c5"
  // arn_suffix                        = "targetgroup/Booklabeler-prod/52ea5eda4fb146c5"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/Booklabeler-prod/52ea5eda4fb146c5"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/booklabeler-prod/3415b18946ebcacc",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "Booklabeler-prod"
  name_prefix                       = null
  port                              = 13008
  protocol                          = "HTTPS"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "environment" = "Production"
    "product"     = "Book Label Generator - WPC"
  }
  tags_all                          = {
    "environment" = "Production"
    "product"     = "Book Label Generator - WPC"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-a60437c1"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 121
    matcher             = "200"
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTPS"
    timeout             = 120
    unhealthy_threshold = 2
  }

  stickiness {
    cookie_duration = 86400
    cookie_name     = null
    enabled         = false
    type            = "lb_cookie"
  }

  target_failover {}

  target_health_state {}
}