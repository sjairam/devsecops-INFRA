resource "aws_lb" "example" {
  name               = "example-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["sg-1234567890abcdef0"]
  subnets            = ["subnet-1234567890abcdef0", "subnet-0987654321fedcba0"]

  enable_deletion_protection = true

  tags = {
    Environment = "production"
  }
}

resource "aws_lb_target_group" "imported_tg" {
  name = "existing-target-group-name"
  # Other attributes will be filled in after import
}

resource "aws_lb_listener" "imported_listener1" {
  load_balancer_arn = aws_lb.imported_alb.arn
  port              = 80  # or the appropriate port
  # Other attributes will be filled in after import
}

resource "aws_lb_listener" "imported_listener2" {
  load_balancer_arn = aws_lb.imported_alb.arn
  port              = 80  # or the appropriate port
  # Other attributes will be filled in after import
}

resource "aws_lb_listener" "imported_listener3" {
  load_balancer_arn = aws_lb.imported_alb.arn
  port              = 80  # or the appropriate port
  # Other attributes will be filled in after import
}