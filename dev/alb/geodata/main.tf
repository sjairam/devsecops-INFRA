resource "aws_lb_listener" "imported_listener" {
  arn               = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/GEODATA-DEV/4c40a1de12840dc9/24ab530c37a4e092"
  certificate_arn   = "arn:aws:acm:us-east-1:217428790895:certificate/d812d637-194c-4f96-8493-cbfec9f747a9"
  id                = "arn:aws:elasticloadbalancing:us-east-1:217428790895:listener/app/GEODATA-DEV/4c40a1de12840dc9/24ab530c37a4e092"
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:217428790895:loadbalancer/app/GEODATA-DEV/4c40a1de12840dc9"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-2021-06"
  tags              = {
    "Name"        = "Geodata-dev"
    "environment" = "Development"
  }
  tags_all          = {
    "Name"        = "Geodata-dev"
    "environment" = "Development"
  }

  default_action {
    order            = 1
    target_group_arn = null
    type             = "redirect"

    redirect {
      host        = "geodata-dev-restricted.lib.harvard.edu"
      path        = "/#{path}"
      port        = "443"
      protocol    = "HTTPS"
      query       = "#{query}"
      status_code = "HTTP_302"
    }
  }

  mutual_authentication {
    ignore_client_certificate_expiry = false
    mode                             = "off"
    trust_store_arn                  = null
  }
}
