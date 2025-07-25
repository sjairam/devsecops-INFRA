resource "aws_lb" "NRSADMIN-API-QA" {
    arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/NRSADMIN-API-QA/d095788a4aaf7e03"
    arn_suffix                                                   = "app/NRSADMIN-API-QA/d095788a4aaf7e03"
    client_keep_alive                                            = 3600
    customer_owned_ipv4_pool                                     = null
    desync_mitigation_mode                                       = "defensive"
    dns_name                                                     = "NRSADMIN-API-QA-305812870.us-east-1.elb.amazonaws.com"
    drop_invalid_header_fields                                   = false
    enable_cross_zone_load_balancing                             = true
    enable_deletion_protection                                   = false
    enable_http2                                                 = true
    enable_tls_version_and_cipher_suite_headers                  = false
    enable_waf_fail_open                                         = false
    enable_xff_client_port                                       = false
    enforce_security_group_inbound_rules_on_private_link_traffic = null
    id                                                           = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/NRSADMIN-API-QA/d095788a4aaf7e03"
    idle_timeout                                                 = 60
    internal                                                     = false
    ip_address_type                                              = "ipv4"
    load_balancer_type                                           = "application"
    name                                                         = "NRSADMIN-API-QA"
    name_prefix                                                  = null
    preserve_host_header                                         = false
    security_groups                                              = [
        "sg-0b560754c47e4b372",
        "sg-9d46bfe1",
    ]
    subnets                                                      = [
        "subnet-09fd828d5035cc79e",
        "subnet-0aac1d6d604bd0c71",
        "subnet-0f1a7b236c579a034",
    ]
    tags                                                         = {
        "app-type" = "Docker"
        "name"     = "NRSADMIN-API-QA"
        "product"  = "Naming Service - NRS"
        "waf-type" = "external-alb"
    }
    tags_all                                                     = {
        "app-type" = "Docker"
        "name"     = "NRSADMIN-API-QA"
        "product"  = "Naming Service - NRS"
        "waf-type" = "external-alb"
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
    arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/NRSADMIN-API-QA/d095788a4aaf7e03/b78a50f3ebe1c621"
    certificate_arn   = "arn:aws:acm:us-east-1:847760228496:certificate/3f1c1a7f-05c3-4d22-8d42-2703cb9508b7"
    id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/NRSADMIN-API-QA/d095788a4aaf7e03/b78a50f3ebe1c621"
    load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/NRSADMIN-API-QA/d095788a4aaf7e03"
    port              = 443
    protocol          = "HTTPS"
    ssl_policy        = "ELBSecurityPolicy-2016-08"
    tags              = {}
    tags_all          = {}

    default_action {
        order            = 0
        target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/NRSADMIN-API-QA-HTTPS/05da9e9ebed0a187"
        type             = "forward"

        forward {
            stickiness {
                duration = 0
                enabled  = false
            }
            target_group {
                arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/NRSADMIN-API-QA-HTTPS/05da9e9ebed0a187"
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
    arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/NRSADMIN-API-QA-HTTPS/05da9e9ebed0a187"
    arn_suffix                        = "targetgroup/NRSADMIN-API-QA-HTTPS/05da9e9ebed0a187"
    deregistration_delay              = "300"
    id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/NRSADMIN-API-QA-HTTPS/05da9e9ebed0a187"
    ip_address_type                   = "ipv4"
    load_balancer_arns                = [
        "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/NRSADMIN-API-QA/d095788a4aaf7e03",
    ]
    load_balancing_algorithm_type     = "round_robin"
    load_balancing_anomaly_mitigation = "off"
    load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
    name                              = "NRSADMIN-API-QA-HTTPS"
    name_prefix                       = null
    port                              = 12882
    protocol                          = "HTTPS"
    protocol_version                  = "HTTP1"
    slow_start                        = 0
    tags                              = {
        "cs2"         = "True"
        "environment" = "Test"
        "product"     = "Naming Service - NRS"
    }
    tags_all                          = {
        "cs2"         = "True"
        "environment" = "Test"
        "product"     = "Naming Service - NRS"
    }
    target_type                       = "instance"
    vpc_id                            = "vpc-a60437c1"

    health_check {
        enabled             = true
        healthy_threshold   = 5
        interval            = 30
        matcher             = "200"
        path                = "/nrs-admin-api/heartbeat"
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
