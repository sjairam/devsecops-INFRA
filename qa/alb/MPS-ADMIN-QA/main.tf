
#ALB
resource "aws_lb" "MPS-ADMIN-QA" {
  client_keep_alive = "3600"


  desync_mitigation_mode                      = "defensive"
  drop_invalid_header_fields                  = "false"
  enable_cross_zone_load_balancing            = "true"
  enable_deletion_protection                  = "false"
  enable_http2                                = "true"
  enable_tls_version_and_cipher_suite_headers = "false"
  enable_waf_fail_open                        = "false"
  enable_xff_client_port                      = "false"
  idle_timeout                                = "60"
  internal                                    = "false"
  ip_address_type                             = "ipv4"
  load_balancer_type                          = "application"
  name                                        = "MPS-ADMIN-QA"
  preserve_host_header                        = "false"
  security_groups                             = [aws_security_group.mps-qa-https_sg.arn, "sg-9d46bfe1"]
  subnets = ["subnet-09fd828d5035cc79e", "subnet-0aac1d6d604bd0c71", "subnet-0f1a7b236c579a034"]

  tags = {
    Name        = "MPS-ADMIN-QA"
    environment = "Test"
    product     = "Media Presentation Service - MPS"
    waf-type    = "external-alb"
  }

  xff_header_processing_mode = "append"
}

#Listener
resource "aws_lb_listener" "MPS-ADMIN-QA" {
  certificate_arn = "arn:aws:acm:us-east-1:847760228496:certificate/93c554c8-ef38-40c7-81bf-b02e1e3ca495"
  load_balancer_arn = aws_lb.MPS-ADMIN-QA.arn
  port       = "443"
  protocol   = "HTTPS"
  ssl_policy = "ELBSecurityPolicy-2016-08"

  default_action {
    order            = 1
    target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-22100.arn
    type             = "forward"
  }
}

# Target Groups
resource "aws_lb_target_group" "MPS-ADMIN-QA-HTTP-23004" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "5"
    interval            = "30"
    matcher             = "200,302"
    path                = "/admin/ingest/healthcheck"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "2"
  }

  ip_address_type                   = "ipv4"
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "MPS-ADMIN-QA-HTTP-23004"
  port                              = "23004"
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    product = "Media Presentation Service - MPS"
  }

  target_group_health {
    dns_failover {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }

    unhealthy_state_routing {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }
  }
  
  target_type = "instance"
  vpc_id      = "vpc-a60437c1"
}
resource "aws_lb_target_group" "MPS-ADMIN-QA-HTTP-23039" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "5"
    interval            = "30"
    matcher             = "200"
    path                = "/mps-cache-populator/healthcheck"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "2"
  }

  ip_address_type                   = "ipv4"
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "MPS-ADMIN-QA-HTTP-23039"
  port                              = "23039"
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    product = "Media Presentation Service - MPS"
  }

  target_group_health {
    dns_failover {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }

    unhealthy_state_routing {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }
  }

  target_type = "instance"
  vpc_id      = "vpc-a60437c1"
}
resource "aws_lb_target_group" "MPS-ADMIN-QA-HTTP-23012" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "5"
    interval            = "30"
    matcher             = "200,302"
    path                = "/mps_asset_cache_manager/healthcheck"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "2"
  }

  ip_address_type                   = "ipv4"
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "MPS-ADMIN-QA-HTTP-23012"
  port                              = "23012"
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    product = "Media Presentation Service - MPS"
  }

  target_group_health {
    dns_failover {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }

    unhealthy_state_routing {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }
  }

  target_type = "instance"
  vpc_id      = "vpc-a60437c1"
}
resource "aws_lb_target_group" "MPS-ADMIN-QA-HTTP-23003" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "5"
    interval            = "30"
    matcher             = "200,302"
    path                = "/assets/lookup/healthcheck"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "2"
  }


  ip_address_type                   = "ipv4"
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "MPS-ADMIN-QA-HTTP-23003"
  port                              = "23003"
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    product = "Media Presentation Service - MPS"
  }


  target_group_health {
    dns_failover {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }

    unhealthy_state_routing {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }
  }

  target_type = "instance"
  vpc_id      = "vpc-a60437c1"
}
resource "aws_lb_target_group" "MPS-ADMIN-QA-HTTP-23013" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "5"
    interval            = "30"
    matcher             = "200,302"
    path                = "/multi_asset_ingest_worker/healthcheck"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "2"
  }

  ip_address_type                   = "ipv4"
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "MPS-ADMIN-PROD-HTTP-23013"
  port                              = "23013"
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    product = "Media Presentation Service - MPS"
  }

  target_group_health {
    dns_failover {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }

    unhealthy_state_routing {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }
  }

  target_type = "instance"
  vpc_id      = "vpc-a60437c1"
}
resource "aws_lb_target_group" "MPS-ADMIN-QA-HTTP-22100" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "5"
    interval            = "30"
    matcher             = "200,302"
    path                = "/iiif_services/healthcheck"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "2"
  }

  ip_address_type                   = "ipv4"
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "MPS-ADMIN-QA-HTTP-22100"
  port                              = "22100"
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    product = "Media Presentation Service - MPS"
  }

  target_group_health {
    dns_failover {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }

    unhealthy_state_routing {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }
  }

  target_type = "instance"
  vpc_id      = "vpc-a60437c1"
}
resource "aws_lb_target_group" "MPS-ADMIN-DEV-QA-22300" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "5"
    interval            = "30"
    matcher             = "200,302"
    path                = "/iiif_validator/healthcheck"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "2"
  }

  ip_address_type                   = "ipv4"
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "MPS-ADMIN-DEV-QA-22300"
  port                              = "22300"
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    product = "Media Presentation Service - MPS"
  }

  tags_all = {
    product = "Media Presentation Service - MPS"
  }

  target_group_health {
    dns_failover {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }

    unhealthy_state_routing {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }
  }

  target_type = "instance"
  vpc_id      = "vpc-a60437c1"
}
resource "aws_lb_target_group" "MPS-ADMIN-QA-HTTP-23034" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "5"
    interval            = "30"
    matcher             = "200,302"
    path                = "/iiif_synchronizer_iterator/healthcheck"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "2"
  }

  ip_address_type                   = "ipv4"
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "MPS-ADMIN-QA-HTTP-23034"
  port                              = "23034"
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    product = "Media Presentation Service - MPS"
  }

  target_group_health {
    dns_failover {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }

    unhealthy_state_routing {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }
  }

  target_type = "instance"
  vpc_id      = "vpc-a60437c1"
}
resource "aws_lb_target_group" "MPS-ADMIN-QA-HTTP-23040" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "5"
    interval            = "30"
    matcher             = "200,302"
    path                = "/mps_queue_monitor/healthcheck"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "2"
  }

  ip_address_type                   = "ipv4"
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "MPS-ADMIN-QA-HTTP-23040"
  port                              = "23040"
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    product = "Media Presentation Service - MPS"
  }

  target_group_health {
    dns_failover {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }

    unhealthy_state_routing {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }
  }

  target_type = "instance"
  vpc_id      = "vpc-a60437c1"
}
resource "aws_lb_target_group" "MPS-ADMIN-QA-HTTP-22300" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "5"
    interval            = "30"
    matcher             = "200,302"
    path                = "/iiif_validator/healthcheck"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "2"
  }

  ip_address_type                   = "ipv4"
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "MPS-ADMIN-PROD-HTTP-22300"
  port                              = "22300"
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    product = "Media Presentation Service - MPS"
  }

  target_group_health {
    dns_failover {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }

    unhealthy_state_routing {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }
  }

  target_type = "instance"
  vpc_id      = "vpc-a60437c1"
}

# Rules

resource "aws_lb_listener_rule" "MPS-ADMIN-QA-HTTP-23004" {
  action {
    forward {
      stickiness {
        duration = "3600"
        enabled  = "false"
      }

      target_group {
        arn    = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23004.arn
        weight = "1"
      }
    }

    order            = "1"
    target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23004.arn
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/admin/ingest/*"]
    }
  }

  listener_arn = aws_lb_listener.MPS-ADMIN-QA.arn
  priority     = "1"
}
resource "aws_lb_listener_rule" "MPS-ADMIN-QA-HTTP-23039" {
  action {
    forward {
      stickiness {
        duration = "3600"
        enabled  = "false"
      }

      target_group {
        arn    = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23039.arn
        weight = "1"
        }
    }

    order            = "1"
    target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23039.arn
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/mps-cache-populator/*"]
    }
  }


  listener_arn = aws_lb_listener.MPS-ADMIN-QA.arn
  priority     = "2"

  tags = {
    Name = "mps-cache-populator"
  }
}
resource "aws_lb_listener_rule" "MPS-ADMIN-QA-HTTP-23012" {
  action {
    forward {
      stickiness {
        duration = "3600"
        enabled  = "false"
      }

      target_group {
        arn    = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23012.arn
        weight = "1"
      }
    }

    order            = "1"
    target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23012.arn
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/mps_asset_cache_manager/*"]
    }
  }

  listener_arn = aws_lb_listener.MPS-ADMIN-QA.arn
  priority     = "3"

  tags = {
    Name = "mps-asset-cache-mgr"
  }
}
resource "aws_lb_listener_rule" "MPS-ADMIN-QA-23003" {
  action {
    forward {
      stickiness {
        duration = "3600"
        enabled  = "false"
      }

      target_group {
        arn    = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23003.arn
        weight = "1"
      }
    }

    order            = "1"
    target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23003.arn
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/assets/lookup/*"]
    }
  }

  listener_arn = aws_lb_listener.MPS-ADMIN-QA.arn
  priority     = "4"

  tags = {
    Name = "mps-lookup"
  }

  tags_all = {
    Name = "mps-lookup"
  }
}
resource "aws_lb_listener_rule" "MPS-ADMIN-QA-HTTP-23013" {
  action {
    forward {
      stickiness {
        duration = "3600"
        enabled  = "false"
      }

      target_group {
        arn    = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23013.arn
        weight = "1"
      }
    }

    order            = "1"
    target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23013.arn
    type             = "forward"
  }


  condition {
    path_pattern {
      values = ["/multi_asset_ingest_worker/*"]
    }
  }
  
  listener_arn = aws_lb_listener.MPS-ADMIN-QA.arn
  priority     = "5"

  tags = {
    Name = "mps-multi-asset-ingest-worker"
  }
}
resource "aws_lb_listener_rule" "MPS-ADMIN-QA-22100" {
  action {
    forward {
      stickiness {
        duration = "3600"
        enabled  = "false"
      }

      target_group {
        arn    = aws_lb_target_group.MPS-ADMIN-QA-HTTP-22100.arn
        weight = "1"
      }
    
    }
    order            = "1"
    target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-22100.arn
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/iiif_services/*"]
    }
  }

  listener_arn = aws_lb_listener.MPS-ADMIN-QA.arn
  priority     = "6"

  tags = {
    Name = "iiif-services"
  }
}
resource "aws_lb_listener_rule" "MPS-ADMIN-DEV-QA-22300" {
  action {
    forward {
      stickiness {
        duration = "3600"
        enabled  = "false"
      }

      target_group {
        arn    = aws_lb_target_group.MPS-ADMIN-DEV-QA-22300.arn
        weight = "1"
      }
    }

    order            = "1"
    target_group_arn = aws_lb_target_group.MPS-ADMIN-DEV-QA-22300.arn
    type             = "forward"
  }


  condition {
    path_pattern {
      values = ["/iiif_validator/*"]
    }
  }

  listener_arn = aws_lb_listener.MPS-ADMIN-QA.arn
  priority     = "7"

  tags = {
    Name = "iiif-validator"
  }
}
resource "aws_lb_listener_rule" "MPS-ADMIN-QA-HTTP-23034" {
  action {
    forward {
      stickiness {
        duration = "3600"
        enabled  = "false"
      }

      target_group {
        arn    = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23034.arn
        weight = "1"
      }
    }

    order            = "1"
    target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23034.arn
    type             = "forward"
  }


  condition {
    path_pattern {
      values = ["/iiif_synchronizer_iterator/*"]
    }
  }
    listener_arn = aws_lb_listener.MPS-ADMIN-QA.arn
  priority     = "8"

  tags = {
    Name = "iiif-synchronizer-iterator"
  }
}
resource "aws_lb_listener_rule" "MPS-ADMIN-QA-HTTP-23040" {
  action {
    forward {
      stickiness {
        duration = "3600"
        enabled  = "false"
      }

      target_group {
        arn    = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23040.arn
        weight = "1"
      }
    }

    order            = "1"
    target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23040.arn
    type             = "forward"
  }


  condition {
    path_pattern {
      values = ["/mps_queue_monitor/*"]
    }
  }


  listener_arn = aws_lb_listener.MPS-ADMIN-QA.arn
  priority     = "9"

  tags = {
    Name = "mps-queue-monitor"
  }
}

# Target Group Attachments

resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-22100" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-22100.arn
  target_id        = "i-01f3e1457c4a90591"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-22100-1" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-22100.arn
  target_id        = "i-03031bcf7695b5ef9"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-22100-2" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-22100.arn
  target_id        = "i-03554dd700b7efaf2"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-22100-3" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-22100.arn
  target_id        = "i-06a39504b50a1d779"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-22100-4" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-22100.arn
  target_id        = "i-09edb60c8cfe0eb45"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23003" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23003.arn
  target_id        = "i-01f3e1457c4a90591"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23003-1" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23003.arn
  target_id        = "i-03031bcf7695b5ef9"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23003-2" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23003.arn
  target_id        = "i-03554dd700b7efaf2"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23003-3" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23003.arn
  target_id        = "i-06a39504b50a1d779"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23003-4" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23003.arn
  target_id        = "i-09edb60c8cfe0eb45"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23004" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23004.arn
  target_id        = "i-01f3e1457c4a90591"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23004-1" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23004.arn
  target_id        = "i-03031bcf7695b5ef9"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23004-2" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23004.arn
  target_id        = "i-03554dd700b7efaf2"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23004-3" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23004.arn
  target_id        = "i-06a39504b50a1d779"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23004-4" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23004.arn
  target_id        = "i-09edb60c8cfe0eb45"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23012" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23012.arn
  target_id        = "i-01f3e1457c4a90591"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23012-1" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23012.arn
  target_id        = "i-03031bcf7695b5ef9"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23012-2" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23012.arn
  target_id        = "i-03554dd700b7efaf2"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23012-3" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23012.arn
  target_id        = "i-06a39504b50a1d779"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23012-4" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23012.arn
  target_id        = "i-09edb60c8cfe0eb45"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23034-1" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23034.arn
  target_id        = "i-01f3e1457c4a90591"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23034-2" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23034.arn
  target_id        = "i-03031bcf7695b5ef9"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23034-3" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23034.arn
  target_id        = "i-03554dd700b7efaf2"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23034-4" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23034.arn
  target_id        = "i-06a39504b50a1d779"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23034-5" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23034.arn
  target_id        = "i-09edb60c8cfe0eb45"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23040" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23040.arn
  target_id        = "i-01f3e1457c4a90591"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23040-1" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23040.arn
  target_id        = "i-03031bcf7695b5ef9"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23040-2" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23040.arn
  target_id        = "i-03554dd700b7efaf2"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23040-3" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23040.arn
  target_id        = "i-06a39504b50a1d779"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-QA-HTTP-23040-4" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-QA-HTTP-23040.arn
  target_id        = "i-09edb60c8cfe0eb45"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-DEV-QA-22300" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-DEV-QA-22300.arn
  target_id        = "i-01f3e1457c4a90591"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-DEV-QA-22300-1" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-DEV-QA-22300.arn
  target_id        = "i-03031bcf7695b5ef9"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-DEV-QA-22300-2" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-DEV-QA-22300.arn
  target_id        = "i-03554dd700b7efaf2"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-DEV-QA-22300-3" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-DEV-QA-22300.arn
  target_id        = "i-06a39504b50a1d779"
}
resource "aws_lb_target_group_attachment" "MPS-ADMIN-DEV-QA-22300-4" {
  target_group_arn = aws_lb_target_group.MPS-ADMIN-DEV-QA-22300.arn
  target_id        = "i-09edb60c8cfe0eb45"
}


resource "aws_security_group" "mps-qa-https_sg" {
  description = "access to mps-qa-site"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.65.0/24", "128.103.224.65/32", "128.103.24.65/32"]
    description = "#webs vpn tunnel used by ATS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.86.0/24", "128.103.224.86/32", "128.103.24.86/32"]
    description = "#provost vpn tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["3.236.169.128/27"]
    description = "from prod VPC, as external access"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["3.236.67.96/27"]
    description = "Academic Technology test servers"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "mps-qa-https"

  tags = {
    Name    = "mps-qa-https"
    product = "Media Presentation Service - MPS"
  }

  vpc_id = "vpc-a60437c1"
}

