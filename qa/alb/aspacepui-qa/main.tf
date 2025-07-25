resource "aws_lb" "aspace-pui-qa" {
  //arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/aspace-pui-qa/4ead73230c8ef72b"
  //arn_suffix                                                   = "app/aspace-pui-qa/4ead73230c8ef72b"
  //dns_name                                                     = "internal-aspace-pui-qa-329513297.us-east-1.elb.amazonaws.com"
  //id                                                           = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/aspace-pui-qa/4ead73230c8ef72b"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  idle_timeout                                                 = 60
  internal                                                     = true
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "aspace-pui-qa"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-0317e090254f0a3a2",
    "sg-062fa7bb177142525",
    "sg-9d46bfe1",
    "sg-b39296c5",
  ]
  subnets                                                      = [
    "subnet-0628994f",
    "subnet-89de1ad2",
    "subnet-94b475b9",
  ]
  tags                                                         = {
    "environment" = "Test"
    "product"     = "ArchivesSpace"
    "waf-type"    = "internal-alb"
  }
  tags_all                                                     = {
    "environment" = "Test"
    "product"     = "ArchivesSpace"
    "waf-type"    = "internal-alb"
  }
#   vpc_id                                                       = "vpc-a60437c1"
  xff_header_processing_mode                                   = "append"
#   zone_id                                                      = "Z35SXDOTRQ7X7K"

#   access_logs {
#     bucket  = null
#     enabled = false
#     prefix  = null
#   }

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
#     subnet_id            = "subnet-0628994f"
#   }
#   subnet_mapping {
#     allocation_id        = null
#     ipv6_address         = null
#     outpost_id           = null
#     private_ipv4_address = null
#     subnet_id            = "subnet-89de1ad2"
#   }
#   subnet_mapping {
#     allocation_id        = null
#     ipv6_address         = null
#     outpost_id           = null
#     private_ipv4_address = null
#     subnet_id            = "subnet-94b475b9"
#   }
}

# aws_lb_listener.imported_listener:
resource "aws_lb_listener" "aspace-pui-qa-k8s" {
  //arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/aspace-pui-qa/4ead73230c8ef72b/fc80f5d2177d82a0"
  certificate_arn   = "arn:aws:acm:us-east-1:847760228496:certificate/f6f17d82-f84a-4d46-acca-344acf2bd8ca"
  //id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/aspace-pui-qa/4ead73230c8ef72b/fc80f5d2177d82a0"
  load_balancer_arn = aws_lb.aspace-pui-qa.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    //target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/Curiosity-dev-K8S/2458ce9f859596b3"
    target_group_arn = aws_lb_target_group.aspace-pui-qa-k8s.arn
    type             = "forward"
  }

#   default_action {
#     order            = 1
#     target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/aspace-pui-qa-k8s/ad0b0393f4a96961"
#     type             = "forward"
#
#     forward {
#       stickiness {
#         duration = 3600
#         enabled  = false
#       }
#       target_group {
#         arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/aspace-pui-qa-k8s/ad0b0393f4a96961"
#         weight = 1
#       }
#     }
#  }

  mutual_authentication {
    ignore_client_certificate_expiry = false
    mode                             = "off"
    trust_store_arn                  = null
  }
}

# aws_lb_target_group.imported_tg:
resource "aws_lb_target_group" "aspace-pui-qa-k8s" {
  //arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/aspace-pui-qa-k8s/ad0b0393f4a96961"
  //id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/aspace-pui-qa-k8s/ad0b0393f4a96961"
  //arn_suffix                        = "targetgroup/aspace-pui-qa-k8s/ad0b0393f4a96961"

  deregistration_delay              = "300"
  ip_address_type                   = "ipv4"
  #   load_balancer_arn = aws_lb.aspace-pui-qa.arn
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "aspace-pui-qa-k8s"
  name_prefix                       = null
  port                              = 32001
  protocol                          = "HTTPS"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {}
  tags_all                          = {}
  target_type                       = "ip"
  vpc_id                            = "vpc-a60437c1"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200,404"
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
#
#   target_failover {}
#
#   target_health_state {}
}

resource "aws_lb_target_group_attachment" "front_end_https" {
  # TODO :  Add ingress variables
  for_each            = toset(["10.137.167.20", "10.137.167.28", "10.137.167.22", "10.137.167.24", "10.137.167.29","10.137.167.30","10.137.166.26","10.137.166.27","10.137.166.22"])
  target_group_arn    = aws_lb_target_group.aspace-pui-qa-k8s.arn
  target_id           = each.value
}