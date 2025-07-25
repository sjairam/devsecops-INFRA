resource "aws_lb" "drs2-dev" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/drs2-dev/95b224a4bf08ae6a"
  arn_suffix                                                   = "app/drs2-dev/95b224a4bf08ae6a"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "internal-drs2-dev-1545390439.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = true
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/drs2-dev/95b224a4bf08ae6a"
  idle_timeout                                                 = 90
  internal                                                     = true
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "drs2-dev"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-01ee7ddb7c9f3d2be",
    "sg-0456e2978c05d744b",
    "sg-af8031d3",
    "sg-e127009b",
  ]
  subnets                                                      = [
    "subnet-b205c19f",
    "subnet-ff7883a4",
  ]
  tags                                                         = {
    "name"     = "drs2-dev ALB"
    "product"  = "Digital Preservation Repository - DRS"
    "waf-type" = "internal-alb"
  }
  tags_all                                                     = {
    "name"     = "drs2-dev ALB"
    "product"  = "Digital Preservation Repository - DRS"
    "waf-type" = "internal-alb"
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
    subnet_id            = "subnet-ff7883a4"
  }
}

# aws_lb_listener.imported_listener:
resource "aws_lb_listener" "drs2-dev-https" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/drs2-dev/95b224a4bf08ae6a/3be8c6f3754af965"
  certificate_arn   = "arn:aws:acm:us-east-1:217428790895:certificate/356dfaa2-6a2c-464e-9149-e9bc9d7b4167"
  id                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/drs2-dev/95b224a4bf08ae6a/3be8c6f3754af965"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/drs2-dev/95b224a4bf08ae6a"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/drs2-dev-https/9f32422a73139a99"
    type             = "forward"

    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/drs2-dev-https/9f32422a73139a99"
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
resource "aws_lb_target_group" "drs2-dev-https" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/drs2-dev-https/9f32422a73139a99"
  arn_suffix                        = "targetgroup/drs2-dev-https/9f32422a73139a99"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/drs2-dev-https/9f32422a73139a99"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/drs2-dev/95b224a4bf08ae6a",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "drs2-dev-https"
  name_prefix                       = null
  port                              = 10400
  protocol                          = "HTTPS"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "product" = "Digital Preservation Repository - DRS"
  }
  tags_all                          = {
    "product" = "Digital Preservation Repository - DRS"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-d53f09b2"

  health_check {
    enabled             = true
    healthy_threshold   = 3
    interval            = 30
    matcher             = "200"
    path                = "/drs2_webadmin/healthcheck"
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