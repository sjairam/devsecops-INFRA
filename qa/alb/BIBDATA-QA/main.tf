resource "aws_lb" "BIBDATA-QA" {
  //arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/BIBDATA/6c64aaa7f020618c"
  //id                                                           = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/BIBDATA/6c64aaa7f020618c"
  //zone_id                                                      = "Z35SXDOTRQ7X7K"
  //arn_suffix                                                   = "app/BIBDATA/6c64aaa7f020618c"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  //dns_name                                                     = "BIBDATA-QA.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null

  idle_timeout                                                 = 60
  internal                                                     = false
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "BIBDATA-QA"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-03875524880300f2a",
    "sg-050549705cd17077c",
    "sg-063f9c84b91827acc",
    "sg-0deaa8d4f5d59c900",
    "sg-9d46bfe1",
  ]
  subnets                                                      = [
    "subnet-94b475b9",
    "subnet-89de1ad2",
    "subnet-0628994f",
  ]
  tags                                                         = {
    "environment" = "QA"
    "product"     = "Alma"
    "waf-type"    = "external-alb"
  }
  tags_all                                                     = {
    "environment" = "QA"
    "product"     = "Alma"
    "waf-type"    = "external-alb"
  }

  xff_header_processing_mode                                   = "append"


#   access_logs {
#     bucket  = null
#     enabled = false
#     prefix  = null
#   }
#
#   connection_logs {
#     bucket  = null
#     enabled = false
#     prefix  = null
#   }

#   subnet_mapping {
#     allocation_id        = null
#     ipv6_address         = null
#     outpost_id           = null
#     private_ipv4_address = null
#     subnet_id            = "subnet-032a437aca921258e"
#   }
#   subnet_mapping {
#     allocation_id        = null
#     ipv6_address         = null
#     outpost_id           = null
#     private_ipv4_address = null
#     subnet_id            = "subnet-068aa5efe2c83ca0e"
#   }
#   subnet_mapping {
#     allocation_id        = null
#     ipv6_address         = null
#     outpost_id           = null
#     private_ipv4_address = null
#     subnet_id            = "subnet-0aac1d6d604bd0c71"
#   }
}

# aws_lb_listener.imported_listener:
resource "aws_lb_listener" "BIBDATA-QA" {
  //arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/BIBDATA/6c64aaa7f020618c/4ad53380613287bd"
  //id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/BIBDATA/6c64aaa7f020618c/4ad53380613287bd"
  //load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/BIBDATA/6c64aaa7f020618c"
  certificate_arn   = "arn:aws:acm:us-east-1:847760228496:certificate/49f108cd-12dc-4876-86fc-9d648ea52f92"

  load_balancer_arn = aws_lb.BIBDATA-QA.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = aws_lb_target_group.bibdata-tg.arn
    type             = "forward"

#     forward {
#       stickiness {
#         duration = 0
#         enabled  = false
#       }
#       target_group {
#         arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/BIBDATA/8ede5d4bb50ed54e"
#         weight = 1
#       }
#     }
  }

  mutual_authentication {
    ignore_client_certificate_expiry = false
    mode                             = "off"
    trust_store_arn                  = null
  }
}

# aws_lb_target_group.imported_tg:
resource "aws_lb_target_group" "bibdata-tg" {
  //arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/BIBDATA/8ede5d4bb50ed54e"
  //arn_suffix                        = "targetgroup/BIBDATA/8ede5d4bb50ed54e"
  deregistration_delay              = "300"
  //id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/BIBDATA/8ede5d4bb50ed54e"
  ip_address_type                   = "ipv4"
#   load_balancer_arns                = [
#     "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/BIBDATA/6c64aaa7f020618c",
#   ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "BIBDATA-QA-K8S"
  name_prefix                       = null
  port                              = 32001
  protocol                          = "HTTPS"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "environment" = "Production"
    "product"     = "Alma"
  }
  tags_all                          = {
    "environment" = "Production"
    "product"     = "Alma"
  }
  target_type                       = "ip"
  vpc_id                            = "vpc-a60437c1"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/healthcheck"
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

#   target_failover {}

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

#   target_health_state {}
}

resource "aws_lb_target_group_attachment" "front_end_https" {
  # TODO :  Add ingress variables
  for_each            = toset(["10.137.167.20", "10.137.167.28", "10.137.167.22", "10.137.167.24", "10.137.167.29","10.137.167.30","10.137.166.26","10.137.166.27","10.137.166.22"])
  target_group_arn    = aws_lb_target_group.bibdata-tg.arn
  target_id           = each.value
}