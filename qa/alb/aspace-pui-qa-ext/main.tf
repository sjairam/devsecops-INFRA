# aws_lb.example:
resource "aws_lb" "aspace-pui-qa-ext-" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/aspace-pui-qa-ext/94c2070d69cd9eee"
  arn_suffix                                                   = "app/aspace-pui-qa-ext/94c2070d69cd9eee"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "aspace-pui-qa-ext-test"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enable_zonal_shift                                           = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  //id                                                           = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/aspace-pui-qa-ext/94c2070d69cd9eee"
  idle_timeout                                                 = 60
  internal                                                     = false
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "aspace-pui-qa-ext-test"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-0317e090254f0a3a2",
    "sg-06a05a784dfed2489",
    "sg-9d46bfe1",
    "sg-b39296c5",
  ]
  subnets                                                      = [
    "subnet-09fd828d5035cc79e",
    "subnet-0aac1d6d604bd0c71",
    "subnet-0f1a7b236c579a034",
  ]
  tags                                                         = {
    "waf-type" = "external-alb"
  }
  tags_all                                                     = {
    "waf-type" = "external-alb"
  }
  //vpc_id                                                       = "vpc-a60437c1"
  xff_header_processing_mode                                   = "append"
  //zone_id                                                      = "Z35SXDOTRQ7X7K"

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
  arn                                                                   = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/aspace-pui-qa-ext/94c2070d69cd9eee/7e6b56be5c400eef"
  certificate_arn                                                       = "arn:aws:acm:us-east-1:847760228496:certificate/b6c029ba-6029-4572-aa4f-4dec67ef20e1"
  id                                                                    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/aspace-pui-qa-ext/94c2070d69cd9eee/7e6b56be5c400eef"
  load_balancer_arn                                                     = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/aspace-pui-qa-ext/94c2070d69cd9eee"
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
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/aspace-pui-qa-k8s/aaabda2caee86818"
    type             = "forward"

    forward {
      stickiness {
        duration = 0
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/aspace-pui-qa-k8s/aaabda2caee86818"
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
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/aspace-pui-qa-k8s/aaabda2caee86818"
  arn_suffix                        = "targetgroup/aspace-pui-qa-k8s/aaabda2caee86818"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/aspace-pui-qa-k8s/aaabda2caee86818"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/aspace-pui-qa-ext/94c2070d69cd9eee",
  ]
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