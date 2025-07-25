# aws_lb.example:
resource "aws_lb" "example" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/cluster-console-qa-internal/7b12fa39c72cf635"
  arn_suffix                                                   = "app/cluster-console-qa-internal/7b12fa39c72cf635"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "internal-cluster-console-qa-internal-1415947715.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enable_zonal_shift                                           = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/cluster-console-qa-internal/7b12fa39c72cf635"
  idle_timeout                                                 = 60
  internal                                                     = true
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "cluster-console-qa-internal"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-02fffe695921a9388",
  ]
  subnets                                                      = [
    "subnet-0428994d",
    "subnet-8dde1ad6",
    "subnet-98b475b5",
  ]
  tags                                                         = {
    "waf-type" = "internal-alb"
  }
  tags_all                                                     = {
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
    subnet_id            = "subnet-0428994d"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    outpost_id           = null
    private_ipv4_address = null
    subnet_id            = "subnet-8dde1ad6"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    outpost_id           = null
    private_ipv4_address = null
    subnet_id            = "subnet-98b475b5"
  }
}

# aws_lb_listener.imported_listener:
resource "aws_lb_listener" "imported_listener" {
  arn                                                                   = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/cluster-console-qa-internal/7b12fa39c72cf635/fc0a750e17efb97b"
  certificate_arn                                                       = "arn:aws:acm:us-east-1:847760228496:certificate/c575cd1c-8db3-4def-b4b7-e0cb4328d70b"
  id                                                                    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/cluster-console-qa-internal/7b12fa39c72cf635/fc0a750e17efb97b"
  load_balancer_arn                                                     = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/cluster-console-qa-internal/7b12fa39c72cf635"
  port                                                                  = 443
  protocol                                                              = "HTTPS"
  routing_http_request_x_amzn_mtls_clientcert_header_name               = null
  routing_http_request_x_amzn_mtls_clientcert_issuer_header_name        = null
  routing_http_request_x_amzn_mtls_clientcert_leaf_header_name          = null
  routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name = null
  routing_http_request_x_amzn_mtls_clientcert_subject_header_name       = null
  routing_http_request_x_amzn_mtls_clientcert_validity_header_name      = null
  routing_http_request_x_amzn_tls_cipher_suite_header_name              = null
  routing_http_request_x_amzn_tls_version_header_name                   = null
  routing_http_response_access_control_allow_credentials_header_value   = null
  routing_http_response_access_control_allow_headers_header_value       = null
  routing_http_response_access_control_allow_methods_header_value       = null
  routing_http_response_access_control_allow_origin_header_value        = null
  routing_http_response_access_control_expose_headers_header_value      = null
  routing_http_response_access_control_max_age_header_value             = null
  routing_http_response_content_security_policy_header_value            = null
  routing_http_response_server_enabled                                  = true
  routing_http_response_strict_transport_security_header_value          = null
  routing_http_response_x_content_type_options_header_value             = null
  routing_http_response_x_frame_options_header_value                    = null
  ssl_policy                                                            = "ELBSecurityPolicy-TLS13-1-2-2021-06"
  tags                                                                  = {}
  tags_all                                                              = {}

  default_action {
    order            = 0
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/cluster-https-qa-internal/32d2b6ba2aa57f27"
    type             = "forward"

    forward {
      stickiness {
        duration = 0
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/cluster-https-qa-internal/32d2b6ba2aa57f27"
        weight = 1
      }
    }
  }

  mutual_authentication {
    advertise_trust_store_ca_names   = null
    ignore_client_certificate_expiry = false
    mode                             = "off"
    trust_store_arn                  = null
  }
}

# aws_lb_target_group.imported_tg:
resource "aws_lb_target_group" "imported_tg" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/cluster-https-qa-internal/32d2b6ba2aa57f27"
  arn_suffix                        = "targetgroup/cluster-https-qa-internal/32d2b6ba2aa57f27"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/cluster-https-qa-internal/32d2b6ba2aa57f27"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/cluster-console-qa-internal/7b12fa39c72cf635",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "cluster-https-qa-internal"
  name_prefix                       = null
  port                              = 443
  protocol                          = "HTTPS"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {}
  tags_all                          = {}
  target_type                       = "ip"
  vpc_id                            = "vpc-a60437c1"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 6
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