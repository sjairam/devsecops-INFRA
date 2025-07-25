provider "aws" {
  region = "us-west-1" # Change to your region
}

resource "aws_security_group" "example" {
  name        = "example"
  description = "Example Security Group"
  vpc_id      = "vpc-0d1a887bbc1aef59d" # Replace with your VPC ID

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
