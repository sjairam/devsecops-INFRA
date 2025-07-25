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