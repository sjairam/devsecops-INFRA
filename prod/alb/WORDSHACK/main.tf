resource "aws_lb" "WORDSHACK-PROD" {
  arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/WORDSHACK-PROD/5ae919796922eaa1"
  arn_suffix                                                   = "app/WORDSHACK-PROD/5ae919796922eaa1"
  client_keep_alive                                            = 3600
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_name                                                     = "WORDSHACK-PROD-1163922717.us-east-1.elb.amazonaws.com"
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  id                                                           = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/WORDSHACK-PROD/5ae919796922eaa1"
  idle_timeout                                                 = 60
  internal                                                     = false
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "WORDSHACK-PROD"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = [
    "sg-09f73741",
    "sg-887b86f4",
  ]
  subnets                                                      = [
    "subnet-09fd828d5035cc79e",
    "subnet-0aac1d6d604bd0c71",
    "subnet-0f1a7b236c579a034",
  ]
  tags                                                         = {
    "app-type"    = "Stand-alone"
    "environment" = "Production"
    "name"        = "WORDSHACK-PROD"
    "product"     = "DRS Wordshack"
    "waf-type"    = "external-alb"
  }
  tags_all                                                     = {
    "app-type"    = "Stand-alone"
    "environment" = "Production"
    "name"        = "WORDSHACK-PROD"
    "product"     = "DRS Wordshack"
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
  arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/WORDSHACK-PROD/5ae919796922eaa1/2517929e366d79f4"
  id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/WORDSHACK-PROD/5ae919796922eaa1/2517929e366d79f4"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/WORDSHACK-PROD/5ae919796922eaa1"
  port              = 80
  protocol          = "HTTP"
  ssl_policy        = null
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/WORDSHACK-PROD-9038-1/17594d802029bcd9"
    type             = "forward"

    forward {
      stickiness {
        duration = 0
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/WORDSHACK-PROD-9038-1/17594d802029bcd9"
        weight = 1
      }
    }
  }
}

# aws_lb_listener.imported_listener2:
resource "aws_lb_listener" "imported_listener2" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/WORDSHACK-PROD/5ae919796922eaa1/aad113c2d14e11a6"
  certificate_arn   = "arn:aws:acm:us-east-1:847760228496:certificate/a7c09ced-c36f-403a-8f39-cc2c04f83212"
  id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/WORDSHACK-PROD/5ae919796922eaa1/aad113c2d14e11a6"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/WORDSHACK-PROD/5ae919796922eaa1"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-2021-06"
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/WORDSHACK-PROD-9038/22764e7737ddb12e"
    type             = "forward"

    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/WORDSHACK-PROD-9038/22764e7737ddb12e"
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

# aws_lb_listener.imported_listener3:
resource "aws_lb_listener" "imported_listener3" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/WORDSHACK-PROD/5ae919796922eaa1/b77a3853442ff7f1"
  id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/WORDSHACK-PROD/5ae919796922eaa1/b77a3853442ff7f1"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/WORDSHACK-PROD/5ae919796922eaa1"
  port              = 9038
  protocol          = "HTTP"
  ssl_policy        = null
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/WORDSHACK-PROD-9038/22764e7737ddb12e"
    type             = "forward"

    forward {
      stickiness {
        duration = 0
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/WORDSHACK-PROD-9038/22764e7737ddb12e"
        weight = 1
      }
    }
  }
}

# aws_lb_listener.imported_listener4:
resource "aws_lb_listener" "imported_listener4" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/WORDSHACK-PROD/5ae919796922eaa1/d29169fe0b8923ff"
  id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/WORDSHACK-PROD/5ae919796922eaa1/d29169fe0b8923ff"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/WORDSHACK-PROD/5ae919796922eaa1"
  port              = 9338
  protocol          = "HTTP"
  ssl_policy        = null
  tags              = {}
  tags_all          = {}

  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/WORDSHACK-PROD/2bccc31b04954e32"
    type             = "forward"

    forward {
      stickiness {
        duration = 0
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/WORDSHACK-PROD/2bccc31b04954e32"
        weight = 1
      }
    }
  }
}

# aws_lb_target_group.imported_tg:
resource "aws_lb_target_group" "WORDSHACK-PROD" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/WORDSHACK-PROD/2bccc31b04954e32"
  arn_suffix                        = "targetgroup/WORDSHACK-PROD/2bccc31b04954e32"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/WORDSHACK-PROD/2bccc31b04954e32"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/WORDSHACK-PROD/5ae919796922eaa1",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "WORDSHACK-PROD"
  name_prefix                       = null
  port                              = 9338
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "cs2"         = "True"
    "environment" = "Production"
    "product"     = "DRS Wordshack"
  }
  tags_all                          = {
    "cs2"         = "True"
    "environment" = "Production"
    "product"     = "DRS Wordshack"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-a60437c1"

  health_check {
    enabled             = true
    healthy_threshold   = 3
    interval            = 10
    matcher             = "200"
    path                = "/wordshack/rest/term/software/1"
    port                = "9038"
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
resource "aws_lb_target_group" "WORDSHACK-PROD-9038" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/WORDSHACK-PROD-9038/22764e7737ddb12e"
  arn_suffix                        = "targetgroup/WORDSHACK-PROD-9038/22764e7737ddb12e"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/WORDSHACK-PROD-9038/22764e7737ddb12e"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/WORDSHACK-PROD/5ae919796922eaa1",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "WORDSHACK-PROD-9038"
  name_prefix                       = null
  port                              = 80
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "environment" = "Production"
    "product"     = "DRS Wordshack"
  }
  tags_all                          = {
    "environment" = "Production"
    "product"     = "DRS Wordshack"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-a60437c1"

  health_check {
    enabled             = true
    healthy_threshold   = 3
    interval            = 6
    matcher             = "200"
    path                = "/wordshack/rest/term/software/1"
    port                = "9038"
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

# aws_lb_target_group.imported_tg3:
resource "aws_lb_target_group" "WORDSHACK-PROD-9038-1" {
  arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/WORDSHACK-PROD-9038-1/17594d802029bcd9"
  arn_suffix                        = "targetgroup/WORDSHACK-PROD-9038-1/17594d802029bcd9"
  deregistration_delay              = "300"
  id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/WORDSHACK-PROD-9038-1/17594d802029bcd9"
  ip_address_type                   = "ipv4"
  load_balancer_arns                = [
    "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/WORDSHACK-PROD/5ae919796922eaa1",
  ]
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "WORDSHACK-PROD-9038-1"
  name_prefix                       = null
  port                              = 9038
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0
  tags                              = {
    "environment" = "Production"
    "product"     = "DRS Wordshack"
  }
  tags_all                          = {
    "environment" = "Production"
    "product"     = "DRS Wordshack"
  }
  target_type                       = "instance"
  vpc_id                            = "vpc-a60437c1"

  health_check {
    enabled             = true
    healthy_threshold   = 3
    interval            = 30
    matcher             = "200"
    path                = "/wordshack/rest/term/software/1"
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