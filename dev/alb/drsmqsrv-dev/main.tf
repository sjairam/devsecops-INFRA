# aws_lb.example:
resource "aws_lb" "drsmqsrv-dev" {
    arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/drsmqsrv-dev/8dd500d4ac9dea2e"
    arn_suffix                                                   = "app/drsmqsrv-dev/8dd500d4ac9dea2e"
    client_keep_alive                                            = 3600
    customer_owned_ipv4_pool                                     = [90mnull[0m[0m
    desync_mitigation_mode                                       = "defensive"
    dns_name                                                     = "internal-drsmqsrv-dev-1865899702.us-east-1.elb.amazonaws.com"
    drop_invalid_header_fields                                   = false
    enable_cross_zone_load_balancing                             = true
    enable_deletion_protection                                   = false
    enable_http2                                                 = true
    enable_tls_version_and_cipher_suite_headers                  = false
    enable_waf_fail_open                                         = false
    enable_xff_client_port                                       = false
    enforce_security_group_inbound_rules_on_private_link_traffic = [90mnull[0m[0m
    id                                                           = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/drsmqsrv-dev/8dd500d4ac9dea2e"
    idle_timeout                                                 = 60
    internal                                                     = true
    ip_address_type                                              = "ipv4"
    load_balancer_type                                           = "application"
    name                                                         = "drsmqsrv-dev"
    name_prefix                                                  = [90mnull[0m[0m
    preserve_host_header                                         = false
    security_groups                                              = [
        "sg-0e814fc37dff36524",
        "sg-af8031d3",
    ]
    subnets                                                      = [
        "subnet-b205c19f",
        "subnet-bee95ef7",
        "subnet-ff7883a4",
    ]
    tags                                                         = {
        "TargetType" = "Docker"
        "product"    = "Digital Preservation Repository - DRS"
        "waf-type"   = "internal-alb"
    }
    tags_all                                                     = {
        "TargetType" = "Docker"
        "product"    = "Digital Preservation Repository - DRS"
        "waf-type"   = "internal-alb"
    }
    vpc_id                                                       = "vpc-d53f09b2"
    xff_header_processing_mode                                   = "append"
    zone_id                                                      = "Z35SXDOTRQ7X7K"

    access_logs {
        bucket  = [90mnull[0m[0m
        enabled = false
        prefix  = [90mnull[0m[0m
    }

    connection_logs {
        bucket  = [90mnull[0m[0m
        enabled = false
        prefix  = [90mnull[0m[0m
    }

    subnet_mapping {
        allocation_id        = [90mnull[0m[0m
        ipv6_address         = [90mnull[0m[0m
        outpost_id           = [90mnull[0m[0m
        private_ipv4_address = [90mnull[0m[0m
        subnet_id            = "subnet-b205c19f"
    }
    subnet_mapping {
        allocation_id        = [90mnull[0m[0m
        ipv6_address         = [90mnull[0m[0m
        outpost_id           = [90mnull[0m[0m
        private_ipv4_address = [90mnull[0m[0m
        subnet_id            = "subnet-bee95ef7"
    }
    subnet_mapping {
        allocation_id        = [90mnull[0m[0m
        ipv6_address         = [90mnull[0m[0m
        outpost_id           = [90mnull[0m[0m
        private_ipv4_address = [90mnull[0m[0m
        subnet_id            = "subnet-ff7883a4"
    }
}

# aws_lb_listener.imported_listener:
resource "aws_lb_listener" "imported_listener" {
    arn               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/drsmqsrv-dev/8dd500d4ac9dea2e/5c7de96409b22947"
    id                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/drsmqsrv-dev/8dd500d4ac9dea2e/5c7de96409b22947"
    load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/drsmqsrv-dev/8dd500d4ac9dea2e"
    port              = 80
    protocol          = "HTTP"
    ssl_policy        = [90mnull[0m[0m
    tags              = {}
    tags_all          = {}

    default_action {
        order            = 1
        target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/drsmqsrv-dev/b888a0b16276802a"
        type             = "forward"

        forward {
            stickiness {
                duration = 0
                enabled  = false
            }
            target_group {
                arn    = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/drsmqsrv-dev/b888a0b16276802a"
                weight = 1
            }
        }
    }
}

# aws_lb_target_group.imported_tg:
resource "aws_lb_target_group" "drsmqsrv-dev" {
    arn                               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/drsmqsrv-dev/b888a0b16276802a"
    arn_suffix                        = "targetgroup/drsmqsrv-dev/b888a0b16276802a"
    deregistration_delay              = "300"
    id                                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/drsmqsrv-dev/b888a0b16276802a"
    ip_address_type                   = "ipv4"
    load_balancer_arns                = [
        "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/drsmqsrv-dev/8dd500d4ac9dea2e",
    ]
    load_balancing_algorithm_type     = "round_robin"
    load_balancing_anomaly_mitigation = "off"
    load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
    name                              = "drsmqsrv-dev"
    name_prefix                       = [90mnull[0m[0m
    port                              = 10880
    protocol                          = "HTTP"
    protocol_version                  = "HTTP1"
    slow_start                        = 0
    tags                              = {
        "product" = "Digital Preservation Repository - DRS"
    }
    tags_all                          = {
        "product" = "Digital Preservation Repository - DRS"
    }
    target_type                       = "instance"
    vpc_id                            = "vpc-d53f09b2"

    health_check {
        enabled             = true
        healthy_threshold   = 5
        interval            = 30
        matcher             = "200"
        path                = "/drs2_activemq/rest/heartbeat"
        port                = "10880"
        protocol            = "HTTP"
        timeout             = 5
        unhealthy_threshold = 2
    }

    stickiness {
        cookie_duration = 86400
        cookie_name     = [90mnull[0m[0m
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
