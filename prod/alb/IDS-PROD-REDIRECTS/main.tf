# aws_lb.example:
resource "aws_lb" "example" {
    arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/IDS-PROD-REDIRECTS/276ad969062b7fc3"
    arn_suffix                                                   = "app/IDS-PROD-REDIRECTS/276ad969062b7fc3"
    client_keep_alive                                            = 3600
    customer_owned_ipv4_pool                                     = null
    desync_mitigation_mode                                       = "defensive"
    dns_name                                                     = "internal-IDS-PROD-REDIRECTS-749209701.us-east-1.elb.amazonaws.com"
    drop_invalid_header_fields                                   = false
    enable_cross_zone_load_balancing                             = true
    enable_deletion_protection                                   = false
    enable_http2                                                 = true
    enable_tls_version_and_cipher_suite_headers                  = false
    enable_waf_fail_open                                         = false
    enable_xff_client_port                                       = false
    enforce_security_group_inbound_rules_on_private_link_traffic = null
    id                                                           = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/IDS-PROD-REDIRECTS/276ad969062b7fc3"
    idle_timeout                                                 = 60
    internal                                                     = true
    ip_address_type                                              = "ipv4"
    load_balancer_type                                           = "application"
    name                                                         = "IDS-PROD-REDIRECTS"
    name_prefix                                                  = null
    preserve_host_header                                         = false
    security_groups                                              = [
        "sg-887b86f4",
        "sg-9d46bfe1",
    ]
    subnets                                                      = [
        "subnet-0628994f",
        "subnet-89de1ad2",
        "subnet-94b475b9",
    ]
    tags                                                         = {
        "Name"     = "Prod IDS Redirects"
        "product"  = "Image Delivery Service - IDS"
        "waf-type" = "internal-alb"
    }
    tags_all                                                     = {
        "Name"     = "Prod IDS Redirects"
        "product"  = "Image Delivery Service - IDS"
        "waf-type" = "internal-alb"
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
    arn               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/IDS-PROD-REDIRECTS/276ad969062b7fc3/639d06d236c32eaa"
    certificate_arn   = "arn:aws:acm:us-east-1:847760228496:certificate/4a5b00a9-11ff-4d1c-92d7-b97a74cae178"
    id                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/IDS-PROD-REDIRECTS/276ad969062b7fc3/639d06d236c32eaa"
    load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/IDS-PROD-REDIRECTS/276ad969062b7fc3"
    port              = 443
    protocol          = "HTTPS"
    ssl_policy        = "ELBSecurityPolicy-2016-08"
    tags              = {}
    tags_all          = {}

    default_action {
        order            = 1
        target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/IDS-REDIRECTS-PROD-HTTP-23019/25e4dc778197cab8"
        type             = "forward"

        forward {
            stickiness {
                duration = 3600
                enabled  = false
            }
            target_group {
                arn    = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/IDS-REDIRECTS-PROD-HTTP-23019/25e4dc778197cab8"
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
    arn                               = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/IDS-REDIRECTS-PROD-HTTP-23019/25e4dc778197cab8"
    arn_suffix                        = "targetgroup/IDS-REDIRECTS-PROD-HTTP-23019/25e4dc778197cab8"
    deregistration_delay              = "300"
    id                                = "arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/IDS-REDIRECTS-PROD-HTTP-23019/25e4dc778197cab8"
    ip_address_type                   = "ipv4"
    load_balancer_arns                = [
        "arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/IDS-PROD-REDIRECTS/276ad969062b7fc3",
    ]
    load_balancing_algorithm_type     = "round_robin"
    load_balancing_anomaly_mitigation = "off"
    load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
    name                              = "IDS-REDIRECTS-PROD-HTTP-23019"
    name_prefix                       = null
    port                              = 23019
    protocol                          = "HTTP"
    protocol_version                  = "HTTP1"
    slow_start                        = 0
    tags                              = {
        "product" = "Image Delivery Service - IDS"
    }
    tags_all                          = {
        "product" = "Image Delivery Service - IDS"
    }
    target_type                       = "instance"
    vpc_id                            = "vpc-a60437c1"

    health_check {
        enabled             = true
        healthy_threshold   = 5
        interval            = 30
        matcher             = "200"
        path                = "/redirects/healthcheck"
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

