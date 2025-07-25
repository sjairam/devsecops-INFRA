resource "aws_lb" "fts" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/fts-dev-lib-harvard-edu/39685f3030f7c9cb"
  arn_suffix                                                   = "app/fts-dev-lib-harvard-edu/39685f3030f7c9cb"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "internal-fts-dev-lib-harvard-edu-721896443.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/fts-dev-lib-harvard-edu/39685f3030f7c9cb"
  idle_timeout                                                 = 60
  internal                                                     = true
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "fts-dev-lib-harvard-edu"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-01ee7ddb7c9f3d2be",
    "sg-af8031d3",
    "sg-e127009b",
  ]
  subnets                                                      = [
    "subnet-b005c19d",
    "subnet-bce95ef5",
    "subnet-f87883a3",
  ]
  tags                                                         = {
    "product"  = "Full Text Search Service - FTS"
    "waf-type" = "internal-alb"
  }
  tags_all                                                     = {
    "product"  = "Full Text Search Service - FTS"
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
    subnet_id            = "subnet-b005c19d"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    outpost_id           = null
    private_ipv4_address = null
    subnet_id            = "subnet-bce95ef5"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    outpost_id           = null
    private_ipv4_address = null
    subnet_id            = "subnet-f87883a3"
  }
}

# aws_lb_listener.imported_listener:
resource "aws_lb_listener" "imported_listener" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/fts-dev-lib-harvard-edu/39685f3030f7c9cb/3b71036e407efdf9"
  id                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/fts-dev-lib-harvard-edu/39685f3030f7c9cb/3b71036e407efdf9"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/fts-dev-lib-harvard-edu/39685f3030f7c9cb"
  port              = 10088
  protocol          = "HTTP"
  ssl_policy        = null
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/fts-http-10088/b33024f74970fcc0"
    type             = "forward"

    forward {
      stickiness {
        duration = 0
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/fts-http-10088/b33024f74970fcc0"
        weight = 1
      }
    }
  }
}

# aws_lb_target_group.imported_tg:
resource "aws_lb_target_group" "imported_tg" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/fts-http-10087/995bdec93212311c"
  arn_suffix                        = "targetgroup/fts-http-10087/995bdec93212311c"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/fts-http-10087/995bdec93212311c"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/fts-dev-lib-harvard-edu/39685f3030f7c9cb",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "fts-http-10087"
  name_prefix                       = null
  port                              = 10087
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "product" = "Full Text Search Service - FTS"
  }
  tags_all                          = {
    "product" = "Full Text Search Service - FTS"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-d53f09b2"

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

  target_health_state {}
}
