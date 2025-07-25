# aws_lb.example:
resource "aws_lb" "drsmdsrv-dev" {
    arn                                                          = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/drsmdsrv-dev/5ba248fcf06f61d3"
    arn_suffix                                                   = "app/drsmdsrv-dev/5ba248fcf06f61d3"
    client_keep_alive                                            = 3600
    customer_owned_ipv4_pool                                     = null
    desync_mitigation_mode                                       = "defensive"
    dns_name                                                     = "internal-drsmdsrv-dev-2138004235.us-east-1.elb.amazonaws.com"
    drop_invalid_header_fields                                   = false
    enable_cross_zone_load_balancing                             = true
    enable_deletion_protection                                   = false
    enable_http2                                                 = true
    enable_tls_version_and_cipher_suite_headers                  = false
    enable_waf_fail_open                                         = false
    enable_xff_client_port                                       = false
    enforce_security_group_inbound_rules_on_private_link_traffic = null
    id                                                           = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/drsmdsrv-dev/5ba248fcf06f61d3"
    idle_timeout                                                 = 60
    internal                                                     = true
    ip_address_type                                              = "ipv4"
    load_balancer_type                                           = "application"
    name                                                         = "drsmdsrv-dev"
    name_prefix                                                  = null
    preserve_host_header                                         = false
    security_groups                                              = [
        "sg-0310d30bbdfcfd5f9",
        "sg-6f935d1c",
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
        subnet_id            = "subnet-b205c19f"
    }
    subnet_mapping {
        allocation_id        = null
        ipv6_address         = null
        outpost_id           = null
        private_ipv4_address = null
        subnet_id            = "subnet-bee95ef7"
    }
    subnet_mapping {
        allocation_id        = null
        ipv6_address         = null
        outpost_id           = null
        private_ipv4_address = null
        subnet_id            = "subnet-ff7883a4"
    }
}

# aws_lb_listener.imported_listener:
resource "aws_lb_listener" "imported_listener" {
    arn               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/drsmdsrv-dev/5ba248fcf06f61d3/2809baa61c0e53e8"
    certificate_arn   = "arn:aws:acm:us-east-1:217428790895:certificate/32c89f17-ae71-4e40-8702-b24e5e5f6e5b"
    id                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/drsmdsrv-dev/5ba248fcf06f61d3/2809baa61c0e53e8"
    load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/drsmdsrv-dev/5ba248fcf06f61d3"
    port              = 443
    protocol          = "HTTPS"
    ssl_policy        = "ELBSecurityPolicy-2016-08"
    tags              = {}
    tags_all          = {}

    default_action {
        order            = 1
        target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/drsmdsrv-dev-http/e1d5e3322eb8ab91"
        type             = "forward"

        forward {
            stickiness {
                duration = 3600
                enabled  = false
            }
            target_group {
                arn    = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/drsmdsrv-dev-http/e1d5e3322eb8ab91"
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
    arn                               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/drsmdsrv-dev-http/e1d5e3322eb8ab91"
    arn_suffix                        = "targetgroup/drsmdsrv-dev-http/e1d5e3322eb8ab91"
    deregistration_delay              = "300"
    id                                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:targetgroup/drsmdsrv-dev-http/e1d5e3322eb8ab91"
    ip_address_type                   = "ipv4"
    load_balancer_arns                = [
        "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/drsmdsrv-dev/5ba248fcf06f61d3",
    ]
    load_balancing_algorithm_type     = "round_robin"
    load_balancing_anomaly_mitigation = "off"
    load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
    name                              = "drsmdsrv-dev-http"
    name_prefix                       = null
    port                              = 80
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

