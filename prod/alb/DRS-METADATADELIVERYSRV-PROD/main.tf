resource "aws_lb" "DRS-METADATADELIVERYSRV-PROD" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/DRS-METADATADELIVERYSRV-PROD/df5ff5fccdf80ac9"
  arn_suffix                                                   = "app/DRS-METADATADELIVERYSRV-PROD/df5ff5fccdf80ac9"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "DRS-METADATADELIVERYSRV-PROD-1168072586.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/DRS-METADATADELIVERYSRV-PROD/df5ff5fccdf80ac9"
  idle_timeout                                                 = 60
  internal                                                     = false
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "DRS-METADATADELIVERYSRV-PROD"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-5c622c20",
    "sg-9d46bfe1",
    "sg-ca0372ba",
  ]
  subnets                                                      = [
    "subnet-09fd828d5035cc79e",
    "subnet-0aac1d6d604bd0c71",
    "subnet-0f1a7b236c579a034",
  ]
  tags                                                         = {
    "app-type"    = "Docker"
    "environment" = "Production"
    "name"        = "DRS-METADATADELIVERYSRV-PROD"
    "product"     = "Digital Preservation Repository - DRS"
    "waf-type"    = "external-alb"
  }
  tags_all                                                     = {
    "app-type"    = "Docker"
    "environment" = "Production"
    "name"        = "DRS-METADATADELIVERYSRV-PROD"
    "product"     = "Digital Preservation Repository - DRS"
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
  arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/DRS-METADATADELIVERYSRV-PROD/df5ff5fccdf80ac9/c2ebbc8e945ae81d"
  id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/DRS-METADATADELIVERYSRV-PROD/df5ff5fccdf80ac9/c2ebbc8e945ae81d"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/DRS-METADATADELIVERYSRV-PROD/df5ff5fccdf80ac9"
  port              = 80
  protocol          = "HTTP"
  ssl_policy        = null
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/DRSMDSRV-PROD-HTTP/7f198f53beac586e"
    type             = "forward"

    forward {
      stickiness {
        duration = 0
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/DRSMDSRV-PROD-HTTP/7f198f53beac586e"
        weight = 1
      }
    }
  }
}

# aws_lb_listener.imported_listener2:
resource "aws_lb_listener" "imported_listener2" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/DRS-METADATADELIVERYSRV-PROD/df5ff5fccdf80ac9/e51ed90594c625b4"
  certificate_arn   = "arn:aws:acm:us-east-1:847760228496:certificate/4fd56b33-5051-4b9e-a9c7-e0a7b6f3bc7c"
  id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/DRS-METADATADELIVERYSRV-PROD/df5ff5fccdf80ac9/e51ed90594c625b4"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/DRS-METADATADELIVERYSRV-PROD/df5ff5fccdf80ac9"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/DRSMDSRV-PROD-HTTPS/7e433e2cb6684218"
    type             = "forward"

    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/DRSMDSRV-PROD-HTTPS/7e433e2cb6684218"
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
resource "aws_lb_target_group" "DRSMDSRV-PROD-HTTP" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/DRSMDSRV-PROD-HTTP/7f198f53beac586e"
  arn_suffix                        = "targetgroup/DRSMDSRV-PROD-HTTP/7f198f53beac586e"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/DRSMDSRV-PROD-HTTP/7f198f53beac586e"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/DRS-METADATADELIVERYSRV-PROD/df5ff5fccdf80ac9",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "DRSMDSRV-PROD-HTTP"
  name_prefix                       = null
  port                              = 80
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "cs2"         = "True"
    "environment" = "Production"
    "product"     = "Digital Preservation Repository - DRS"
  }
  tags_all                          = {
    "cs2"         = "True"
    "environment" = "Production"
    "product"     = "Digital Preservation Repository - DRS"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-a60437c1"

  health_check {
    enabled             = true
    healthy_threshold   = 4
    interval            = 30
    matcher             = "200"
    path                = "/drs_metadata/rest/heartbeat"
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

# aws_lb_target_group.imported_tg2:
resource "aws_lb_target_group" "DRSMDSRV-PROD-HTTPS" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/DRSMDSRV-PROD-HTTPS/7e433e2cb6684218"
  arn_suffix                        = "targetgroup/DRSMDSRV-PROD-HTTPS/7e433e2cb6684218"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/DRSMDSRV-PROD-HTTPS/7e433e2cb6684218"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/DRS-METADATADELIVERYSRV-PROD/df5ff5fccdf80ac9",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "DRSMDSRV-PROD-HTTPS"
  name_prefix                       = null
  port                              = 443
  protocol                          = "HTTPS"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "cs2"         = "True"
    "environment" = "Production"
    "product"     = "Digital Preservation Repository - DRS"
  }
  tags_all                          = {
    "cs2"         = "True"
    "environment" = "Production"
    "product"     = "Digital Preservation Repository - DRS"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-a60437c1"

  health_check {
    enabled             = true
    healthy_threshold   = 4
    interval            = 30
    matcher             = "200"
    path                = "/drs_metadata/rest/heartbeat"
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