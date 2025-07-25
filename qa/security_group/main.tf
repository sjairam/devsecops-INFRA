provider "aws" {
  region = "us-west-2" # Change to your region
}

resource "aws_security_group" "example" {
  name        = "example"
  description = "Example Security Group"
  vpc_id      = "vpc-12345678" # Replace with your VPC ID

  # Ingress and egress rules can be added here
  # Example:
  # ingress {
  #   from_port   = 80
  #   to_port     = 80
  #   protocol    = "tcp"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }
  #
  # egress {
  #   from_port   = 0
  #   to_port     = 0
  #   protocol    = "-1"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }
}
