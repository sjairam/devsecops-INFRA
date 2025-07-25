# aws_lb.example:
resource "aws_lb" "DASH-QA" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/DASH-QA/8b1553ea9626b134"
  arn_suffix                                                   = "app/DASH-QA/8b1553ea9626b134"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "DASH-QA-40994430.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enable_zonal_shift                                           = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/DASH-QA/8b1553ea9626b134"
  idle_timeout                                                 = 60
  internal                                                     = false
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "DASH-QA"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-063b8998c99eec363",
    "sg-5c622c20",
    "sg-9d46bfe1",
  ]
  subnets                                                      = [
    "subnet-09fd828d5035cc79e",
    "subnet-0aac1d6d604bd0c71",
    "subnet-0f1a7b236c579a034",
  ]
  tags                                                         = {
    "app-type"    = "Stand-alone"
    "environment" = "Test"
    "name"        = "DASH-QA"
    "product"     = "DASH"
    "waf-type"    = "external-alb"
  }
  tags_all                                                     = {
    "app-type"    = "Stand-alone"
    "environment" = "Test"
    "name"        = "DASH-QA"
    "product"     = "DASH"
    "waf-type"    = "external-alb"
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
  arn                                                                   = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/DASH-QA/8b1553ea9626b134/aeb5116b32759de8"
  certificate_arn                                                       = "arn:aws:acm:us-east-1:847760228496:certificate/27bc2bff-f8fe-45aa-b7b1-6ebc62addf3b"
  id                                                                    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/DASH-QA/8b1553ea9626b134/aeb5116b32759de8"
  load_balancer_arn                                                     = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/DASH-QA/8b1553ea9626b134"
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
  ssl_policy                                                            = "ELBSecurityPolicy-2016-08"
  tags                                                                  = {}
  tags_all                                                              = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/DASH-QA-PROXY/b73ae733a022aa63"
    type             = "forward"

    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/DASH-QA-PROXY/b73ae733a022aa63"
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
