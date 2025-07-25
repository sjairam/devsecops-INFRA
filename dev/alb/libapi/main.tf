# aws_lb.example:
resource "aws_lb" "libapi" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/libapi-dev/18600e0e7c3715c3"
  arn_suffix                                                   = "app/libapi-dev/18600e0e7c3715c3"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "internal-libapi-dev-39993887.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = true
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enable_zonal_shift                                           = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/libapi-dev/18600e0e7c3715c3"
  idle_timeout                                                 = 60
  internal                                                     = true
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "libapi-dev"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  region                                                       = "us-east-1"
  security_groups                                              = [
    "sg-0252277e65014662e",
    "sg-6f935d1c",
    "sg-af8031d3",
  ]
  subnets                                                      = [
    "subnet-b005c19d",
    "subnet-bce95ef5",
  ]
  tags                                                         = {
    "product"  = "Alma"
    "waf-type" = "internal-alb"
  }
  tags_all                                                     = {
    "product"  = "Alma"
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
}

# aws_lb_listener.imported_listener:
resource "aws_lb_listener" "imported_listener" {
  arn                                                                   = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/libapi-dev/18600e0e7c3715c3/701e1e021618698e"
  certificate_arn                                                       = "arn:aws:acm:us-east-1:217428790895:certificate/f440de9a-befe-4b85-bfd5-901f6ea18f90"
  id                                                                    = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/libapi-dev/18600e0e7c3715c3/701e1e021618698e"
  load_balancer_arn                                                     = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/libapi-dev/18600e0e7c3715c3"
  port                                                                  = 443
  protocol                                                              = "HTTPS"
  region                                                                = "us-east-1"
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
  ssl_policy                                                            = "ELBSecurityPolicy-2016-08"
  tags                                                                  = {}
  tags_all                                                              = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/libapi-dev/07c81cb66ef0a912"
    type             = "forward"

    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/libapi-dev/07c81cb66ef0a912"
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
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/libapi-dev/07c81cb66ef0a912"
  arn_suffix                        = "targetgroup/libapi-dev/07c81cb66ef0a912"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/libapi-dev/07c81cb66ef0a912"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/libapi-dev/18600e0e7c3715c3",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "libapi-dev"
  name_prefix                       = null
  port                              = 5000
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  region                            = "us-east-1"
  slow_start                        = 0
  tags                              = {
    "product" = "Alma"
  }
  tags_all                          = {
    "product" = "Alma"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-d53f09b2"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/primoapi/health"
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