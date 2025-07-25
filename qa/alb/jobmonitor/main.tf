resource "aws_lb" "jobmon-qa" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/jobmon-qa/71c9e6f1c54882a4"
  arn_suffix                                                   = "app/jobmon-qa/71c9e6f1c54882a4"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "internal-jobmon-qa-788101853.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/jobmon-qa/71c9e6f1c54882a4"
  idle_timeout                                                 = 60
  internal                                                     = true
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "jobmon-qa"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-02ff4b55737aa1542",
    "sg-8a042bf0",
    "sg-9d46bfe1",
  ]
  subnets                                                      = [
    "subnet-0628994f",
    "subnet-89de1ad2",
    "subnet-94b475b9",
  ]
  tags                                                         = {
    "product"  = "Job Monitor"
    "waf-type" = "internal-alb"
  }
  tags_all                                                     = {
    "product"  = "Job Monitor"
    "waf-type" = "internal-alb"
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
    subnet_id            = "subnet-89de1ad2"
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
  arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/jobmon-qa/71c9e6f1c54882a4/9ca619cf7ef9e876"
  certificate_arn   = "arn:aws:acm:us-east-1:847760228496:certificate/59ba609d-be7a-4b10-836a-e8fb1df8aa9c"
  id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/jobmon-qa/71c9e6f1c54882a4/9ca619cf7ef9e876"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/jobmon-qa/71c9e6f1c54882a4"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 0
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/jobmon-qa-https/767553567aa07b7c"
    type             = "forward"

    forward {
      stickiness {
        duration = 0
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/jobmon-qa-https/767553567aa07b7c"
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
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/jobmon-qa-https/767553567aa07b7c"
  arn_suffix                        = "targetgroup/jobmon-qa-https/767553567aa07b7c"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/jobmon-qa-https/767553567aa07b7c"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/jobmon-qa/71c9e6f1c54882a4",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "jobmon-qa-https"
  name_prefix                       = null
  port                              = 443
  protocol                          = "HTTPS"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "environment" = "Test"
    "product"     = "LTS Infrastructure"
  }
  tags_all                          = {
    "environment" = "Test"
    "product"     = "LTS Infrastructure"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-a60437c1"

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

  target_health_state {}
}
