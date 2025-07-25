resource "aws_security_group" "tfer--Base-0020-DevOps-0020-Rules_sg-0bfe687fda9ec8bc4" {
  description = "Base DevOps Rules"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "128.103.224.79/32", "128.103.24.79/32"]
    description = "OIS TUNNEL"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS TUNNEL"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS TUNNEL"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS TUNNEL"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/26", "10.34.64.128/26", "10.34.64.64/26", "140.247.35.189/32", "69.25.43.168/32", "69.25.43.169/32"]
    description = "Logicmonitor"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/26", "10.34.64.128/26", "10.34.64.64/26"]
    description = "Logicmonitor"
    from_port   = "-1"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/26", "10.34.64.128/26", "10.34.64.64/26"]
    description = "Logicmonitor"
    from_port   = "161"
    protocol    = "udp"
    self        = "false"
    to_port     = "161"
  }

  ingress {
    cidr_blocks = ["128.103.147.138/32"]
    description = "From ldi-1 for testing"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["140.247.35.189/32", "69.25.43.168/32", "69.25.43.169/32"]
    description = "Logicmonitor"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "Base DevOps Rules"

  tags = {
    Name = "Base DevOps Rules"
  }

  tags_all = {
    Name = "Base DevOps Rules"
  }

  vpc_id = "vpc-0bcfb266cd91122dd"
}

resource "aws_security_group" "tfer--EFS-Access_sg-070d403f64f102dc8" {
  description = "Access to K8 and DRS EFS"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s LZP Nodes"
    from_port   = "2049"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2049"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "LDI-3"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["128.103.147.145/32"]
    description = "Doyle"
    from_port   = "2049"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2049"
  }

  name = "EFS-Access"

  tags = {
    Name = "efs-access"
  }

  tags_all = {
    Name = "efs-access"
  }

  vpc_id = "vpc-0bcfb266cd91122dd"
}

resource "aws_security_group" "tfer--Infrasecops-sg_sg-049b4098814d0bee4" {
  description = "Infrasecops-sg"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.0.0.0/8"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.209.0/24"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "Infrasecops-sg"
  vpc_id = "vpc-0bcfb266cd91122dd"
}

resource "aws_security_group" "tfer--alb_console_sg_lzp_sg-03af33414b61dd80a" {
  description = "Allow incoming traffic to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "Allow all inbound traffic"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "alb_console_sg_lzp"
  vpc_id = "vpc-0bcfb266cd91122dd"
}

resource "aws_security_group" "tfer--alb_deployment_sg_lzp_sg-069c7c1ead7b77d97" {
  description = "Allow incoming traffic to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "128.103.224.79/32", "128.103.24.79/32"]
    description = "Allow all inbound traffic"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "alb_deployment_sg_lzp"
  vpc_id = "vpc-0bcfb266cd91122dd"
}

resource "aws_security_group" "tfer--alb_logging_lzp_sg-0e1e1f4cd81ab6732" {
  description = "Allow incoming traffic to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "128.103.224.79/32", "128.103.24.79/32"]
    description = "Allow all inbound traffic"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "alb_logging_lzp"
  vpc_id = "vpc-0bcfb266cd91122dd"
}

resource "aws_security_group" "tfer--allow_vpn_ingress_to_rke-676771_sg-0d88ee2c62f00d488" {
  description = "Allow inbound traffic from vpn to rke instances"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.143.25.128/25"]
    description = "Any source that needs to be able to use the Rancher UI or API"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.143.25.128/25"]
    description = "DNS internal 1"
    from_port   = "6783"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6783"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.143.25.128/25"]
    description = "DNS internal 2"
    from_port   = "6784"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6784"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.143.25.128/25"]
    description = "DNS"
    from_port   = "53"
    protocol    = "tcp"
    self        = "false"
    to_port     = "53"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.143.25.128/25"]
    description = "DNS"
    from_port   = "53"
    protocol    = "udp"
    self        = "false"
    to_port     = "53"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.143.25.128/25"]
    description = "Load balancer/proxy that does external SSL termination"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.143.25.128/25"]
    description = "NodePort port range"
    from_port   = "10250"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10250"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.143.25.128/25"]
    description = "NodePort port range"
    from_port   = "30000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "32767"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.143.25.128/25"]
    description = "NodePort port range"
    from_port   = "30000"
    protocol    = "udp"
    self        = "false"
    to_port     = "32767"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.143.25.128/25"]
    description = "RKE2 server and agent nodes"
    from_port   = "8472"
    protocol    = "udp"
    self        = "false"
    to_port     = "8472"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.143.25.128/25"]
    description = "RKE2 server needs port 6443 for accessible by other nodes in the cluster"
    from_port   = "6443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.143.25.128/25"]
    description = "RKE2 server needs port 9345 for accessible by other nodes in the cluster"
    from_port   = "9345"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9345"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.143.25.128/25"]
    description = "RKE2 server needs port 9796 for rancher monitoring scraping"
    from_port   = "9796"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9796"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.143.25.128/25"]
    description = "Req for K8S"
    from_port   = "10254"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10254"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.143.25.128/25"]
    description = "Req for K8S"
    from_port   = "2376"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2376"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.143.25.128/25"]
    description = "Req for K8S"
    from_port   = "9091"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9091"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.143.25.128/25"]
    description = "etcd peer communication and etcd client requests"
    from_port   = "2379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2380"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "SSH inbound from VPN"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.166.22/32"]
    description = "qa k8 for testing"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/24"]
    description = "Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Access from Ansible Tower for patching"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/26", "10.34.64.128/26", "10.34.64.64/26"]
    description = "SNMP access for Logicmonitor"
    from_port   = "161"
    protocol    = "tcp"
    self        = "false"
    to_port     = "161"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/26", "10.34.64.128/26", "10.34.64.64/26"]
    description = "ping access for Logicmonitor"
    from_port   = "-1"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  ingress {
    cidr_blocks = ["10.143.24.128/25", "10.143.26.128/25"]
    description = "ArgoCD port to ALB"
    from_port   = "30446"
    protocol    = "tcp"
    self        = "false"
    to_port     = "30446"
  }

  ingress {
    cidr_blocks = ["10.143.24.128/25", "10.143.26.128/25"]
    description = "DNS internal 1"
    from_port   = "6783"
    protocol    = "udp"
    self        = "false"
    to_port     = "6783"
  }

  ingress {
    cidr_blocks = ["10.143.24.128/25", "10.143.26.128/25"]
    description = "DNS internal 2"
    from_port   = "6784"
    protocol    = "udp"
    self        = "false"
    to_port     = "6784"
  }

  ingress {
    cidr_blocks = ["10.143.24.128/25", "10.143.26.128/25"]
    description = "HTTPS access from ALB to nodes"
    from_port   = "32001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "32004"
  }

  ingress {
    cidr_blocks = ["10.143.24.128/25", "10.143.26.128/25"]
    description = "Load Balancer access to the Rancher UI or API"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.143.24.128/25", "10.143.26.128/25"]
    description = "NodePort port range"
    from_port   = "31380"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31380"
  }

  name = "allow_vpn_ingress_to_rke-676771"

  tags = {
    Name = "Worker Subnets"
  }

  tags_all = {
    Name = "Worker Subnets"
  }

  vpc_id = "vpc-0bcfb266cd91122dd"
}

resource "aws_security_group" "tfer--bostonlzlts-prod-vpc-GlobalSecurityGroup-aoA6LhYzfd2a_sg-0f96947da7ac32840" {
  description = "Linux \u0026 Windows Infrastructure-shared-global-security-group-prod-vpc-0bcfb266cd91122dd"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.209.0/24"]
    description = "Allow all traffic for UNSGADMIN"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.11.134.0/24"]
    description = "Allow all traffic for SocDbaAdmin"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.11.22.0/24"]
    description = "Allow all traffic for CloudAdmin"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name = "bostonlzlts-prod-vpc-GlobalSecurityGroup-aoA6LhYzfd2a"

  tags = {
    Name        = "infrastructure-shared-global-security-group-vpc-0bcfb266cd91122dd"
    environment = "prod"
  }

  tags_all = {
    Name        = "infrastructure-shared-global-security-group-vpc-0bcfb266cd91122dd"
    environment = "prod"
  }

  vpc_id = "vpc-0bcfb266cd91122dd"
}

resource "aws_security_group" "tfer--default_sg-049ca32e6a1be798e" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  vpc_id = "vpc-0bcfb266cd91122dd"
}

resource "aws_security_group" "tfer--logic-monitor-ext-web-ips-shared-security-group-vpc-0bcfb266cd91122dd_sg-03b3e427ee1c5f5f8" {
  description = "Logic Monitor External Web Check IP Addresses for vpc-0bcfb266cd91122dd"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["149.5.93.0/24", "18.139.118.192/26", "212.118.245.0/24", "3.106.118.64/26", "34.223.95.64/26", "38.100.37.0/24", "38.134.126.0/24", "52.202.255.64/26", "52.215.168.128/26", "52.52.63.0/26", "54.193.15.255/32", "54.194.232.54/32", "54.209.7.170/32", "54.254.224.41/32", "69.25.43.0/24", "74.201.65.0/24"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["149.5.93.0/24", "18.139.118.192/26", "212.118.245.0/24", "3.106.118.64/26", "34.223.95.64/26", "38.100.37.0/24", "38.134.126.0/24", "52.202.255.64/26", "52.215.168.128/26", "52.52.63.0/26", "54.193.15.255/32", "54.194.232.54/32", "54.209.7.170/32", "54.254.224.41/32", "69.25.43.0/24", "74.201.65.0/24"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "logic-monitor-ext-web-ips-shared-security-group-vpc-0bcfb266cd91122dd"

  tags = {
    Name = "logic-monitor-ext-web-ips-shared-security-group-vpc-0bcfb266cd91122dd"
  }

  tags_all = {
    Name = "logic-monitor-ext-web-ips-shared-security-group-vpc-0bcfb266cd91122dd"
  }

  vpc_id = "vpc-0bcfb266cd91122dd"
}

resource "aws_security_group" "tfer--lzp_alb_sg_priv_sg-0bad3ea8f3afe8b16" {
  description = "Allow incoming traffic to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.0.0.0/8"]
    description = "All Internal Traffic"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL Tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24", "10.143.25.140/32", "10.143.25.141/32", "10.143.25.142/32", "10.143.25.150/32", "10.143.25.151/32", "10.143.25.152/32", "10.40.13.110/32"]
    description = "Allow all inbound traffic"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.124.128/25", "128.103.224.0/24", "128.103.24.0/24", "4.78.42.16/28"]
    description = "For webadmin"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.147.145/32"]
    description = "Doyle"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.199.208/32", "140.247.199.209/32"]
    description = "MPS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.35.189/32", "69.25.43.168/32", "69.25.43.169/32"]
    description = "logicmonitor"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.69.134/32", "140.247.69.143/32", "140.247.69.195/32", "140.247.69.227/32"]
    description = "Baker"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.69.218/32"]
    description = "Weidner Webadmin"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["199.94.1.0/24"]
    description = "For webadmin from HBS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "lzp_alb_sg_priv"
  vpc_id = "vpc-0bcfb266cd91122dd"
}

resource "aws_security_group" "tfer--lzp_alb_sg_sg-0bd5bc3ec4c82d823" {
  description = "Allow incoming traffic to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.0.0.0/8"]
    description = "For internal VPN connections"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.143.25.140/32", "10.143.25.141/32", "10.143.25.142/32", "10.143.25.150/32", "10.143.25.151/32", "10.143.25.152/32"]
    description = "Allow all inbound traffic"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    description = "For external VPN connections"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["199.94.1.0/24"]
    description = "HBS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "lzp_alb_sg"
  vpc_id = "vpc-0bcfb266cd91122dd"
}

resource "aws_security_group" "tfer--lzp_alb_sg_srv_sg-07dd48f363f1a9dd4" {
  description = "Allow incoming traffic to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "Allow all inbound traffic"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "lzp_alb_sg_srv"
  vpc_id = "vpc-0bcfb266cd91122dd"
}

resource "aws_security_group" "tfer--lzp_plg_mysql_sg-0806a29451e601677" {
  description = "K8 access to PLG MySQL DB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s Cluster"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "lzp_plg_mysql"

  tags = {
    Name = "lzp_plg_mysql"
  }

  tags_all = {
    Name = "lzp_plg_mysql"
  }

  vpc_id = "vpc-0bcfb266cd91122dd"
}
