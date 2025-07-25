# aws_lb.example:
resource "aws_lb" "example" {
    arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/MPS-EMBED-PROD/b7ebe65b8104cb4e"
    arn_suffix                                                   = "app/MPS-EMBED-PROD/b7ebe65b8104cb4e"
    client_keep_alive                                            = 3600
    customer_owned_ipv4_pool                                     = [90mnull[0m[0m
    desync_mitigation_mode                                       = "defensive"
    dns_name                                                     = "MPS-EMBED-PROD-860516027.us-east-1.elb.amazonaws.com"
    drop_invalid_header_fields                                   = false
    enable_cross_zone_load_balancing                             = true
    enable_deletion_protection                                   = false
    enable_http2                                                 = true
    enable_tls_version_and_cipher_suite_headers                  = false
    enable_waf_fail_open                                         = false
    enable_xff_client_port                                       = false
    enforce_security_group_inbound_rules_on_private_link_traffic = [90mnull[0m[0m
    id                                                           = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/MPS-EMBED-PROD/b7ebe65b8104cb4e"
    idle_timeout                                                 = 60
    internal                                                     = false
    ip_address_type                                              = "ipv4"
    load_balancer_type                                           = "application"
    name                                                         = "MPS-EMBED-PROD"
    name_prefix                                                  = [90mnull[0m[0m
    preserve_host_header                                         = false
    security_groups                                              = [
        "sg-050feca597ba4b587",
        "sg-887b86f4",
        "sg-9d46bfe1",
    ]
    subnets                                                      = [
        "subnet-09fd828d5035cc79e",
        "subnet-0aac1d6d604bd0c71",
        "subnet-0f1a7b236c579a034",
    ]
    tags                                                         = {
        "product"  = "Media Presentation Service - MPS"
        "waf-type" = "external-alb"
    }
    tags_all                                                     = {
        "product"  = "Media Presentation Service - MPS"
        "waf-type" = "external-alb"
    }
    vpc_id                                                       = "vpc-a60437c1"
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
        subnet_id            = "subnet-09fd828d5035cc79e"
    }
    subnet_mapping {
        allocation_id        = [90mnull[0m[0m
        ipv6_address         = [90mnull[0m[0m
        outpost_id           = [90mnull[0m[0m
        private_ipv4_address = [90mnull[0m[0m
        subnet_id            = "subnet-0aac1d6d604bd0c71"
    }
    subnet_mapping {
        allocation_id        = [90mnull[0m[0m
        ipv6_address         = [90mnull[0m[0m
        outpost_id           = [90mnull[0m[0m
        private_ipv4_address = [90mnull[0m[0m
        subnet_id            = "subnet-0f1a7b236c579a034"
    }
}

# aws_lb_listener.imported_listener:
resource "aws_lb_listener" "imported_listener" {
    arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/MPS-EMBED-PROD/b7ebe65b8104cb4e/7849de27f74af38e"
    certificate_arn   = "arn:aws:acm:us-east-1:847760228496:certificate/ca86b991-ef68-48cd-9d24-9d5f9032ed27"
    id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/MPS-EMBED-PROD/b7ebe65b8104cb4e/7849de27f74af38e"
    load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/MPS-EMBED-PROD/b7ebe65b8104cb4e"
    port              = 443
    protocol          = "HTTPS"
    ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-2021-06"
    tags              = {
        "product" = "Media Presentation Service - MPS"
    }
    tags_all          = {
        "product" = "Media Presentation Service - MPS"
    }

    default_action {
        order            = 0
        target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/MPS-EMBED-PROD/3472bccf77ffb3f2"
        type             = "forward"

        forward {
            stickiness {
                duration = 0
                enabled  = false
            }
            target_group {
                arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/MPS-EMBED-PROD/3472bccf77ffb3f2"
                weight = 1
            }
        }
    }

    mutual_authentication {
        ignore_client_certificate_expiry = false
        mode                             = "off"
        trust_store_arn                  = [90mnull[0m[0m
    }
}

# aws_lb_target_group.imported_tg:
resource "aws_lb_target_group" "imported_tg" {
    arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/MPS-EMBED-PROD/3472bccf77ffb3f2"
    arn_suffix                        = "targetgroup/MPS-EMBED-PROD/3472bccf77ffb3f2"
    deregistration_delay              = "300"
    id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/MPS-EMBED-PROD/3472bccf77ffb3f2"
    ip_address_type                   = "ipv4"
    load_balancer_arns                = [
        "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/MPS-EMBED-PROD/b7ebe65b8104cb4e",
    ]
    load_balancing_algorithm_type     = "round_robin"
    load_balancing_anomaly_mitigation = "off"
    load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
    name                              = "MPS-EMBED-PROD"
    name_prefix                       = [90mnull[0m[0m
    port                              = 23018
    protocol                          = "HTTPS"
    protocol_version                  = "HTTP1"
    slow_start                        = 0
    tags                              = {
        "product" = "Media Presentation Service - MPS"
    }
    tags_all                          = {
        "product" = "Media Presentation Service - MPS"
    }
    target_type                       = "instance"
    vpc_id                            = "vpc-a60437c1"

    health_check {
        enabled             = true
        healthy_threshold   = 5
        interval            = 30
        matcher             = "200"
        path                = "/healthcheck"
        port                = "traffic-port"
        protocol            = "HTTPS"
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
