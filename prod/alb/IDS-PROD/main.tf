# aws_lb.example:
resource "aws_lb" "example" {
    arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/IDS-PROD/4b906461106cc6de"
    arn_suffix                                                   = "app/IDS-PROD/4b906461106cc6de"
    client_keep_alive                                            = 3600
    customer_owned_ipv4_pool                                     = null
    desync_mitigation_mode                                       = "defensive"
    dns_name                                                     = "IDS-PROD-1353897373.us-east-1.elb.amazonaws.com"
    drop_invalid_header_fields                                   = false
    enable_cross_zone_load_balancing                             = true
    enable_deletion_protection                                   = true
    enable_http2                                                 = true
    enable_tls_version_and_cipher_suite_headers                  = false
    enable_waf_fail_open                                         = false
    enable_xff_client_port                                       = false
    enforce_security_group_inbound_rules_on_private_link_traffic = null
    id                                                           = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/IDS-PROD/4b906461106cc6de"
    idle_timeout                                                 = 60
    internal                                                     = false
    ip_address_type                                              = "ipv4"
    load_balancer_type                                           = "application"
    name                                                         = "IDS-PROD"
    name_prefix                                                  = null
    preserve_host_header                                         = false
    security_groups                                              = [
        "sg-279a3a51",
        "sg-887b86f4",
        "sg-9d46bfe1",
    ]
    subnets                                                      = [
        "subnet-09fd828d5035cc79e",
        "subnet-0aac1d6d604bd0c71",
        "subnet-0f1a7b236c579a034",
    ]
    tags                                                         = {
        "app-type" = "Docker"
        "name"     = "IDS-PROD"
        "product"  = "Image Delivery Service - IDS"
        "waf-type" = "external-alb"
    }
    tags_all                                                     = {
        "app-type" = "Docker"
        "name"     = "IDS-PROD"
        "product"  = "Image Delivery Service - IDS"
        "waf-type" = "external-alb"
    }
    vpc_id                                                       = "vpc-a60437c1"
    xff_header_processing_mode                                   = "append"
    zone_id                                                      = "Z35SXDOTRQ7X7K"

    access_logs {
        bucket  = "idsdebuglogs"
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
    arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/IDS-PROD/4b906461106cc6de/dcf73c6aae22cd12"
    certificate_arn   = "arn:aws:acm:us-east-1:847760228496:certificate/4b89cecd-6ed3-4182-ac87-91f808fc3838"
    id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/IDS-PROD/4b906461106cc6de/dcf73c6aae22cd12"
    load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/IDS-PROD/4b906461106cc6de"
    port              = 443
    protocol          = "HTTPS"
    ssl_policy        = "ELBSecurityPolicy-2016-08"
    tags              = {}
    tags_all          = {}

    default_action {
        order            = 1
        target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/IDS-PROD-HTTPS/933408ad117398a8"
        type             = "forward"

        forward {
            stickiness {
                duration = 0
                enabled  = false
            }
            target_group {
                arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/IDS-PROD-HTTPS/933408ad117398a8"
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
resource "aws_lb_target_group" "imported_tg" {
    arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/IDS-PROD-HTTPS/933408ad117398a8"
    arn_suffix                        = "targetgroup/IDS-PROD-HTTPS/933408ad117398a8"
    deregistration_delay              = "300"
    id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/IDS-PROD-HTTPS/933408ad117398a8"
    ip_address_type                   = "ipv4"
    load_balancer_arns                = [
        "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/IDS-PROD/4b906461106cc6de",
    ]
    load_balancing_algorithm_type     = "round_robin"
    load_balancing_anomaly_mitigation = "off"
    load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
    name                              = "IDS-PROD-HTTPS"
    name_prefix                       = null
    port                              = 443
    protocol                          = "HTTPS"
    protocol_version                  = "HTTP1"
    slow_start                        = 0
    tags                              = {
        "environment" = "Production"
        "product"     = "Image Delivery Service - IDS"
    }
    tags_all                          = {
        "environment" = "Production"
        "product"     = "Image Delivery Service - IDS"
    }
    target_type                       = "instance"
    vpc_id                            = "vpc-a60437c1"

    health_check {
        enabled             = true
        healthy_threshold   = 3
        interval            = 31
        matcher             = "200"
        path                = "/"
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

