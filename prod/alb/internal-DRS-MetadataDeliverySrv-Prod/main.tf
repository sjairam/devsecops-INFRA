resource "aws_lb" "DRS-MetadataDeliverySrv-Prod" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/DRS-MetadataDeliverySrv-Prod/fe68a41c02a5035b"
  arn_suffix                                                   = "app/DRS-MetadataDeliverySrv-Prod/fe68a41c02a5035b"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "internal-DRS-MetadataDeliverySrv-Prod-1227130349.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/DRS-MetadataDeliverySrv-Prod/fe68a41c02a5035b"
  idle_timeout                                                 = 60
  internal                                                     = true
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "DRS-MetadataDeliverySrv-Prod"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-5c622c20",
    "sg-9d46bfe1",
    "sg-ca0372ba",
  ]
  subnets                                                      = [
    "subnet-0628994f",
    "subnet-89de1ad2",
    "subnet-94b475b9",
  ]
  tags                                                         = {
    "TargetType"  = "Docker"
    "environment" = "Production"
    "product"     = "Digital Preservation Repository - DRS"
    "waf-type"    = "internal-alb"
  }
  tags_all                                                     = {
    "TargetType"  = "Docker"
    "environment" = "Production"
    "product"     = "Digital Preservation Repository - DRS"
    "waf-type"    = "internal-alb"
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
    subnet_id            = "subnet-0628994f"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    outpost_id           = null
    private_ipv4_address = null
    subnet_id            = "subnet-89de1ad2"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    outpost_id           = null
    private_ipv4_address = null
    subnet_id            = "subnet-94b475b9"
  }
}

# aws_lb_listener.imported_listener:
resource "aws_lb_listener" "imported_listener" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/DRS-MetadataDeliverySrv-Prod/fe68a41c02a5035b/70e5820631bc5762"
  id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/DRS-MetadataDeliverySrv-Prod/fe68a41c02a5035b/70e5820631bc5762"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/DRS-MetadataDeliverySrv-Prod/fe68a41c02a5035b"
  port              = 80
  protocol          = "HTTP"
  ssl_policy        = null
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 0
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/drsmdsrv-prod-http/e56faf82a634f5b9"
    type             = "forward"

    forward {
      stickiness {
        duration = 0
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/drsmdsrv-prod-http/e56faf82a634f5b9"
        weight = 1
      }
    }
  }
}

# aws_lb_listener.imported_listener2:
resource "aws_lb_listener" "imported_listener2" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/DRS-MetadataDeliverySrv-Prod/fe68a41c02a5035b/de8a9005093fca90"
  certificate_arn   = "arn:aws:acm:us-east-1:847760228496:certificate/4fd56b33-5051-4b9e-a9c7-e0a7b6f3bc7c"
  id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/DRS-MetadataDeliverySrv-Prod/fe68a41c02a5035b/de8a9005093fca90"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/DRS-MetadataDeliverySrv-Prod/fe68a41c02a5035b"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/drsmdsrv-prod-https/a3aeba6e45a3dfde"
    type             = "forward"

    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/drsmdsrv-prod-https/a3aeba6e45a3dfde"
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
resource "aws_lb_target_group" "drsmdsrv-prod-http" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/drsmdsrv-prod-http/e56faf82a634f5b9"
  arn_suffix                        = "targetgroup/drsmdsrv-prod-http/e56faf82a634f5b9"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/drsmdsrv-prod-http/e56faf82a634f5b9"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/DRS-MetadataDeliverySrv-Prod/fe68a41c02a5035b",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "drsmdsrv-prod-http"
  name_prefix                       = null
  port                              = 80
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "environment" = "Production"
    "product"     = "Digital Preservation Repository - DRS"
  }
  tags_all                          = {
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
resource "aws_lb_target_group" "drsmdsrv-prod-https" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/drsmdsrv-prod-https/a3aeba6e45a3dfde"
  arn_suffix                        = "targetgroup/drsmdsrv-prod-https/a3aeba6e45a3dfde"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/drsmdsrv-prod-https/a3aeba6e45a3dfde"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/DRS-MetadataDeliverySrv-Prod/fe68a41c02a5035b",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "drsmdsrv-prod-https"
  name_prefix                       = null
  port                              = 443
  protocol                          = "HTTPS"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "environment" = "Production"
    "product"     = "Digital Preservation Repository - DRS"
  }
  tags_all                          = {
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