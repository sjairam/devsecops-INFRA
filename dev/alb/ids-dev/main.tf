resource "aws_lb" "ids-dev" {
  // arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/ids-dev/ecf5c0dcb191fc1e"
  // arn_suffix                                                   = "app/ids-dev/ecf5c0dcb191fc1e"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  // dns_name                                                     = "internal-ids-dev-1578162141.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  // id                                                           = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/ids-dev/ecf5c0dcb191fc1e"
  idle_timeout                                                 = 60
  internal                                                     = true
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "ids-dev"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-af8031d3",
    "sg-f7030385",
  ]
  subnets                                                      = ["subnet-b205c19f", "subnet-bee95ef7"]

  tags                                                         = {
    "Name"     = "IDS-Dev"
    "product"  = "Image Delivery Service - IDS"
    "waf-type" = "internal-alb"
  }
  tags_all                                                     = {
    "Name"     = "IDS-Dev"
    "product"  = "Image Delivery Service - IDS"
    "waf-type" = "internal-alb"
  }
  // vpc_id                                                       = "vpc-d53f09b2"
  // xff_header_processing_mode                                   = "append"
  // zone_id                                                      = "Z35SXDOTRQ7X7K"

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
#     subnet_id            = "subnet-b205c19f"
#   }
#   subnet_mapping {
#     allocation_id        = null
#     ipv6_address         = null
#     outpost_id           = null
#     private_ipv4_address = null
#     subnet_id            = "subnet-bee95ef7"
#   }
}

# aws_lb_listener.imported_listener:
resource "aws_lb_listener" "ids-dev" {
  //arn               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/ids-dev/ecf5c0dcb191fc1e/b2aaea8eda213311"
  certificate_arn   = "arn:aws:acm:us-east-1:217428790895:certificate/c1fa5210-e9cf-4429-abcd-db35e5f38e86"
  // id                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/ids-dev/ecf5c0dcb191fc1e/b2aaea8eda213311"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/ids-dev/ecf5c0dcb191fc1e"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    //target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/ids-dev-http/cf70ef520c3d78d7"
    target_group_arn = aws_lb_target_group.ids-dev-http.arn
    type             = "forward"

#     forward {
#       stickiness {
#         duration = 3600
#         enabled  = false
#       }
#       target_group {
#         arn= aws_lb_target_group.ids-dev-http.arn
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
resource "aws_lb_target_group" "ids-dev-http" {
  #Automatic
  // arn                               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/ids-dev-http/cf70ef520c3d78d7"
  // arn_suffix                        = "targetgroup/ids-dev-http/cf70ef520c3d78d7"
  deregistration_delay              = "300"
  // id                                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/ids-dev-http/cf70ef520c3d78d7"
  ip_address_type                   = "ipv4"
#   load_balancer_arns                = [
#     "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/ids-dev/ecf5c0dcb191fc1e",
#   ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "ids-dev-http"
  name_prefix                       = null
  port                              = 9001
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "product" = "Image Delivery Service - IDS"
  }
  tags_all                          = {
    "product" = "Image Delivery Service - IDS"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-d53f09b2"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/ids/static/css/slicknav.min.css"
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

#   target_failover {}
#
#   target_health_state {}
}
