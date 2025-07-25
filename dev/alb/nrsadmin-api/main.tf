resource "aws_lb" "nrsadmin-api-dev" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/nrsadmin-api-dev/a6cc8e1a42eba863"
  arn_suffix                                                   = "app/nrsadmin-api-dev/a6cc8e1a42eba863"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "internal-nrsadmin-api-dev-190964439.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/nrsadmin-api-dev/a6cc8e1a42eba863"
  idle_timeout                                                 = 60
  internal                                                     = true
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "nrsadmin-api-dev"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-af8031d3",
    "sg-fe9b618f",
  ]
  subnets                                                      = [
    "subnet-b205c19f",
    "subnet-bee95ef7",
    "subnet-ff7883a4",
  ]
  tags                                                         = {
    "Name"     = "nrsadmin-api-dev"
    "product"  = "Naming Service - NRS"
    "waf-type" = "internal-alb"
  }
  tags_all                                                     = {
    "Name"     = "nrsadmin-api-dev"
    "product"  = "Naming Service - NRS"
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
resource "aws_lb_listener" "nrsadmin-api-dev" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/nrsadmin-api-dev/a6cc8e1a42eba863/74dc9288596c4009"
  certificate_arn   = "arn:aws:acm:us-east-1:217428790895:certificate/aeeef261-9764-41de-afa8-e7304f6e4ef1"
  id                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/nrsadmin-api-dev/a6cc8e1a42eba863/74dc9288596c4009"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/nrsadmin-api-dev/a6cc8e1a42eba863"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/nrsadmin-api-dev-https/ac8a8a391db10a9c"
    type             = "forward"

    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/nrsadmin-api-dev-https/ac8a8a391db10a9c"
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
resource "aws_lb_target_group" "nrsadmin-api-dev-https" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/nrsadmin-api-dev-https/ac8a8a391db10a9c"
  arn_suffix                        = "targetgroup/nrsadmin-api-dev-https/ac8a8a391db10a9c"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/nrsadmin-api-dev-https/ac8a8a391db10a9c"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/nrsadmin-api-dev/a6cc8e1a42eba863",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "nrsadmin-api-dev-https"
  name_prefix                       = null
  port                              = 12882
  protocol                          = "HTTPS"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "product" = "Naming Service - NRS"
  }
  tags_all                          = {
    "product" = "Naming Service - NRS"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-d53f09b2"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/nrs-admin-api/heartbeat"
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