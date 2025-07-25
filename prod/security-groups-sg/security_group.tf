resource "aws_security_group" "tfer--AMS-0020-Dev_sg-cf4a8fba" {
  description = "Access dev"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "8090"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8091"
  }

  ingress {
    cidr_blocks = ["10.137.0.0/16"]
    description = "ELB Health Check"
    from_port   = "8090"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8091"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    description = "OIS VPN external"
    from_port   = "8090"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8091"
  }

  name = "AMS Dev"

  tags = {
    product = "Access Management Service - AMS"
  }

  tags_all = {
    product = "Access Management Service - AMS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--AMS-0020-Prod_sg-9f025cea" {
  description = "Access Prod"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "open to world"
    from_port        = "443"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "443"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "open to world"
    from_port        = "80"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "80"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "9080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9081"
  }

  ingress {
    cidr_blocks = ["10.137.0.0/16"]
    description = "ELB Health Check"
    from_port   = "9080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9081"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    description = "OIS VPN external"
    from_port   = "9080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9081"
  }

  name = "AMS Prod"

  tags = {
    product = "Access Management Service - AMS"
  }

  tags_all = {
    product = "Access Management Service - AMS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--AMS-0020-QA_sg-d4a3dfa1" {
  description = "Access QA"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.203.0/24", "128.103.224.203/32", "128.103.24.203/32"]
    description = "SDRS VPN"
    from_port   = "8081"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8081"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "8081"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8081"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "8081"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8081"
  }

  ingress {
    cidr_blocks = ["10.137.0.0/16"]
    description = "ELB Health Check"
    from_port   = "8081"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8081"
  }

  ingress {
    cidr_blocks = ["10.137.165.193/32"]
    description = "PDS-QA"
    from_port   = "8081"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8081"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["12.21.149.130/32", "192.80.206.206/32", "207.56.64.194/32", "212.179.71.70/32", "64.74.237.197/32", "66.151.7.206/32", "66.151.7.225/32"]
    description = "ExLibris"
    from_port   = "8081"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8081"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    description = "Main Harvard Campus"
    from_port   = "8081"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8081"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    description = "OIS VPN external"
    from_port   = "8081"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8081"
  }

  ingress {
    cidr_blocks = ["173.174.87.112/32"]
    description = "Time Warner Contractor IP"
    from_port   = "8081"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8081"
  }

  ingress {
    cidr_blocks = ["199.94.1.17/32"]
    description = "Business School"
    from_port   = "8081"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8081"
  }

  ingress {
    cidr_blocks = ["4.34.96.180/30", "4.78.42.16/28"]
    from_port   = "8081"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8081"
  }

  ingress {
    cidr_blocks = ["50.241.102.129/32", "50.241.102.130/31", "50.241.102.132/32"]
    description = "Comcast - Buddhist center - unknown"
    from_port   = "8081"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8081"
  }

  ingress {
    cidr_blocks = ["68.98.212.84/32"]
    description = "Contractor IP - unknown"
    from_port   = "8081"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8081"
  }

  ingress {
    cidr_blocks = ["92.223.159.150/32"]
    description = "Italy"
    from_port   = "8081"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8081"
  }

  name = "AMS QA"

  tags = {
    product = "Access Management Service - AMS"
  }

  tags_all = {
    product = "Access Management Service - AMS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--ASPACE-API-PROD_sg-05d76a663742e10c9" {
  description = "allows access to prod Aspace API"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.128.0/24"]
    description = "#rad VPN (Schlesinger)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.144.136.0/22", "34.49.84.152/32", "34.85.219.184/32"]
    description = "apigee-x-prod  INC05362131"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    description = "Main Campus"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.230.0/24"]
    description = "Schlesinger Library"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.24.230/32"]
    description = "Harvard Art Museums"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["134.174.151.0/24"]
    description = "Countway Library"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.0.0/16"]
    description = "FAS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["18.211.114.237/32", "3.226.30.164/32", "52.200.202.98/32", "54.85.218.180/32"]
    description = "apigee"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["199.94.1.0/24"]
    description = "Baker Library"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "ASPACE-API-PROD"

  tags = {
    Name    = "ASPACE-API-PROD"
    product = "ArchivesSpace"
  }

  tags_all = {
    Name    = "ASPACE-API-PROD"
    product = "ArchivesSpace"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--ASPACE-STAFF-PROD_sg-0f97f158aa7516c22" {
  description = "allows access to prod Aspace staff site"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.116.0/24"]
    description = "Houghton VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.128.0/24"]
    description = "Schlesinger #rad VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.230.0/24"]
    description = "Art Museum VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24"]
    description = "Law School VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.61.0/24"]
    description = "Divinity VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.67.0/24"]
    description = "GSD VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.7.0/24"]
    description = "HKSITADMIN VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.84.0/24"]
    description = "GSE VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.11.111.0/24"]
    description = "HUIT ITS Admin VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.116.176.0/21"]
    description = "Countway VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    description = "Harvard central campus"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["134.174.0.0/16"]
    description = "Countway Medical area"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.0.0/16"]
    description = "FAS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["199.94.0.0/19", "199.94.32.0/20", "199.94.48.0/24"]
    description = "Biz School"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "ASPACE-STAFF-PROD"

  tags = {
    product = "ArchivesSpace"
  }

  tags_all = {
    product = "ArchivesSpace"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Acorn-QA_sg-04d641f6c7d936190" {
  description = "Acorn-QA"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "Acorn-QA"

  tags = {
    Name    = "Acorn-QA"
    product = "ACORN Database for the WPC"
  }

  tags_all = {
    Name    = "Acorn-QA"
    product = "ACORN Database for the WPC"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Acorn-prod_sg-0d1b2c5307b3c8693" {
  description = "Acorn Prod"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.0.0/16"]
    description = "most VPN tunnels"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16", "131.142.0.0/16", "131.142.144.0/24", "132.183.0.0/16", "134.174.0.0/16", "140.247.0.0/16", "155.52.0.0/16", "199.94.0.0/19", "199.94.1.0/24", "199.94.11.0/24", "199.94.32.0/20", "199.94.48.0/24", "199.94.8.0/24", "65.112.7.235/32"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "Acorn-prod"

  tags = {
    Name    = "Acorn-Prod"
    product = "ACORN Database for the WPC"
  }

  tags_all = {
    Name    = "Acorn-Prod"
    product = "ACORN Database for the WPC"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--All-0020-Non-WIFI-0020-Harvard-0020-Nets_sg-3af29a45" {
  description = "All Harvard non-wifi nets"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.108.69.0/24"]
    description = "HKS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.108.69.0/24"]
    description = "HKS"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16", "140.247.0.0/16", "199.94.0.0/19", "199.94.32.0/20", "199.94.48.0/24", "4.34.96.180/30", "4.78.42.16/28"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16", "140.247.0.0/16", "199.94.0.0/19", "199.94.32.0/20", "199.94.48.0/24", "4.34.96.180/30", "4.78.42.16/28"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "All Non-WIFI Harvard Nets"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Allow-0020-Prod-0020-K8-0020-Nodes_sg-0d1742fe95ba3015f" {
  description = "Allow K8 Prod nodes access to ALB"

  egress {
    cidr_blocks = ["10.137.167.0/24"]
    description = "Prod K8s node"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.10/32", "10.137.167.12/32", "10.137.167.15/32", "10.137.167.19/32", "10.137.167.23/32", "10.137.167.27/32"]
    description = "prod k8 worker node"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.198/32", "10.137.167.199/32", "10.137.167.200/32"]
    description = "prod k8 server node"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "Allow Prod K8 Nodes"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Allow-0020-Redis-0020-from-0020-RKE-0020-PROD_sg-0d40c1db0464c762b" {
  description = "All reds connection from RKE/Rancher PROD"

  ingress {
    cidr_blocks = ["10.137.167.10/32"]
    description = "RKE Worker 1"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.137.167.12/32"]
    description = "RKE Worker 2"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.137.167.15/32"]
    description = "RKE Worker 3"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.137.167.19/32"]
    description = "RKE Worker 4"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.137.167.198/32"]
    description = "RKE Control Node 1"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.137.167.199/32"]
    description = "RKE Control Node 2"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.137.167.200/32"]
    description = "RKE Control Node 3"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.137.167.23/32"]
    description = "RKE Worker 5"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.137.167.27/32"]
    description = "RKE Worker 6"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name = "Allow Redis from RKE PROD"

  tags = {
    Name = "Allow REDIS from PROD K8s"
  }

  tags_all = {
    Name = "Allow REDIS from PROD K8s"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Allow-0020-all-0020-internal-0020-traffic-002E-_sg-fd981781" {
  description = "allow all 10.x.x.x traffic"

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
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.0.0.0/8"]
    from_port   = "0"
    protocol    = "udp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "Allow all internal traffic."

  tags = {
    Name    = "Stop using this group"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "Stop using this group"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Alma-0020-dropbox-0020-QA-0020--0028-hegel-002E-lib-0029-_sg-0dac4031c71c9f036" {
  description = "Alma dropbox QA (hegel.lib)"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24", "10.137.173.0/24"]
    description = "open to the ELB"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "from ALB, for bibdata \u0026 webhooks apps"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8081"
  }

  ingress {
    cidr_blocks = ["10.137.160.81/32", "10.137.161.79/32"]
    description = "NLB Health Check"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.160/32"]
    description = "RKE2 server dev"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.22.100/32", "10.138.22.101/32", "10.138.22.102/32"]
    description = "K8S Dev"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.22.90/32", "10.138.22.91/32"]
    description = "RKE2 agent dev"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.143.17.140/32", "10.143.17.141/32", "10.143.17.142/32", "10.143.17.150/32", "10.143.17.151/32", "10.143.17.152/32"]
    description = "localzone k8"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.2.17.64/26", "10.2.18.64/26", "10.34.11.0/25"]
    description = "GSLB Health Check"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["216.147.208.128/27"]
    description = "Ex Libris"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "Alma dropbox QA (hegel.lib)"

  tags = {
    product = "Alma"
  }

  tags_all = {
    product = "Alma"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Alma-0020-dropbox-0020-Web-0020-access_sg-9684f3dd" {
  description = "access to ports 80 \u0026 443 on Alma dropbox"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.0.0/16"]
    description = "all Harvard VPN tunnels"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "#ois VPN"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8081"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "Cloud Shield"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8081"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24", "10.137.168.0/24", "10.137.169.0/24", "10.137.170.0/24"]
    description = "Webhooks handler"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["10.137.165.224/32"]
    description = "queue.lib.harvard.edu"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.143.17.140/32", "10.143.17.141/32", "10.143.17.142/32", "10.143.17.150/32", "10.143.17.151/32", "10.143.17.152/32"]
    description = "localzone k8"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16", "140.247.0.0/16", "199.94.0.0/19", "199.94.32.0/20", "199.94.48.0/24", "216.147.212.128/27", "216.147.212.20/30", "216.147.212.25/32", "216.147.212.64/27", "64.74.237.221/32", "64.74.237.229/32", "64.74.237.232/31", "66.151.14.129/32", "66.151.7.128/26", "66.151.7.192/28", "66.151.7.224/30", "66.151.7.236/32", "66.151.7.40/29", "74.217.12.128/27"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16", "140.247.0.0/16", "199.94.0.0/19", "199.94.32.0/20", "199.94.48.0/24"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["209.105.227.80/32"]
    description = "vendor hulmarymartin"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["216.147.209.0/27"]
    description = "Ex Libris"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["216.147.212.141/32"]
    description = "hvd-psb.alma.exlibrisgroup.com"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["3.234.88.62/32", "34.224.248.211/32", "34.224.92.68/32", "52.203.96.232/32", "52.204.241.226/32"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8081"
  }

  ingress {
    cidr_blocks = ["39.103.220.20/32"]
    description = "Zhenben INC05203482"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["66.151.7.182/32"]
    description = "test ip for web hooks"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "Alma dropbox Web access"

  tags = {
    product = "Alma"
  }

  tags_all = {
    product = "Alma"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Alma-0020-dropbox-0020-sftp-0020-access-0020-1_sg-c9176182" {
  description = "access to port 22 from Harvard, Ex Libris, some vendors"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["113.35.112.2/32", "219.104.120.155/32"]
    description = "JPT"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["122.160.103.31/32", "173.244.217.136/32", "173.244.217.140/32", "174.119.250.27/32", "181.229.1.65/32", "185.40.210.0/24", "185.40.210.188/32", "196.221.71.223/32", "200.0.233.130/32", "213.33.156.0/24", "213.33.219.186/32", "216.17.69.0/25", "217.141.200.4/32", "5.78.208.0/32", "72.143.100.34/32", "72.50.221.126/32", "79.177.227.221/32", "81.169.156.227/32", "85.103.128.172/32", "85.214.146.103/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["122.165.211.159/32", "203.125.146.134/32", "74.124.24.234/32", "74.124.24.240/32"]
    description = "Mary Martin"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["122.176.78.140/32"]
    description = "MARCNow"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["125.208.3.17/32"]
    description = "Zhenben"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    description = "Harvard Central Admin"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.134.146.185/32"]
    description = "Asian Culture Press"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["131.142.0.0/16"]
    description = "Harvard CFA"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["134.174.0.0/16"]
    description = "Harvard Med School"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["140.247.0.0/16"]
    description = "Harvard FAS"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["172.56.31.192/32"]
    description = "vendor Karno (hulkarno)"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["181.114.73.100/32"]
    description = "Inca (Libros Andinos)"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["181.229.16.33/32", "186.22.169.130/32"]
    description = "hulgar"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["193.92.181.231/32"]
    description = "Oionos"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["199.94.0.0/19", "199.94.32.0/20", "199.94.48.0/24"]
    description = "Harvard Biz School"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["218.49.77.210/32"]
    description = "PANMUN vendor"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["37.186.122.10/32"]
    description = "ATC Books"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["64.74.237.221/32", "64.74.237.229/32", "64.74.237.233/32", "66.151.14.129/32", "66.151.7.128/26", "66.151.7.192/28", "66.151.7.32/32", "66.151.7.49/32", "74.217.12.128/27"]
    description = "Ex Libris"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["65.112.8.132/32"]
    description = "HUP"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["66.66.132.225/32"]
    description = "Vendor: Worldwide Books (hulwwb)"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["67.1.183.184/32"]
    description = "Barlovento"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["80.94.226.241/32"]
    description = "MIPP"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["84.110.62.26/32"]
    description = "hulwein"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["85.60.0.0/16"]
    description = "Vendor: Digitalia"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["90.147.76.165/32"]
    description = "huliris_firenze"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["93.157.66.35/32"]
    description = "Lexicon"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["95.84.128.245/32"]
    description = "vendor Natasha"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["98.3.0.86/32"]
    description = "Worldwide"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "Alma dropbox sftp access 1"

  tags = {
    product = "Alma"
  }

  tags_all = {
    product = "Alma"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Alma-0020-dropbox-0020-sftp-0020-access-0020-2_sg-0aef7b580829128d5" {
  description = "Almas dropbox sftp access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.0.0/16"]
    description = "most VPN tunnels"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN Tunnel"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.161.145/32"]
    description = "ELB Health Check"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.165.102/32"]
    description = "docker prod 2"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.165.9/32"]
    description = "docker prod 5"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "for Docker dev servers"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.160/32", "10.138.21.161/32", "10.138.21.162/32", "10.138.22.100/32", "10.138.22.101/32", "10.138.22.102/32", "10.138.22.90/32", "10.138.22.91/32", "10.138.22.93/32", "5.148.147.0/24", "87.252.58.128/28"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "k8s lzp"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["106.120.121.162/32", "111.205.88.128/25", "219.142.128.0/25"]
    description = "Vendor: chnatpubbe"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["106.120.63.160/28", "106.38.43.16/29", "124.17.11.0/26", "202.205.9.0/26"]
    description = "CNPIEC (hulcnpiec) "
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["107.135.159.136/32"]
    description = "Vendor: Libros Andinos"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["113.209.136.172/32"]
    description = "hulbeijing / Zhenben"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["119.194.238.138/32"]
    description = "Vendor: Asian Culture Press"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["141.105.82.0/24"]
    description = "Vendor:  Sulaiman again"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["142.112.78.194/32", "72.143.82.190/32"]
    description = "Vendor: Persian Books"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["162.243.220.61/32"]
    description = "Vendor:  Berenguer"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["165.215.208.20/32", "165.215.216.0/24", "165.215.220.0/24"]
    description = "Proquest"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["167.60.92.86/32"]
    description = "Vendor: Linardi"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["172.56.30.12/32"]
    description = "Vendor:  Karno"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["172.56.31.192/32"]
    description = "Vendor: Karno"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["174.18.146.202/32", "63.225.32.225/32"]
    description = "Vendor: Barlovento"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["187.189.5.247/32"]
    description = "Vendor MEXBOOKS"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["196.218.245.220/32"]
    description = "Vendor: LEILA - INC05050559"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["196.221.50.210/32"]
    description = "Vendor: LEILA - possibly old IP - leaving for now"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["200.40.220.245/32", "200.40.30.45/32"]
    description = "Vendor: Retta"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["211.108.140.196/32"]
    description = "PANMUN"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["212.234.52.32/27", "37.61.243.98/31"]
    description = "Vendor: Digitalia"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["216.147.208.128/27", "216.147.209.0/27", "216.147.212.128/27", "216.147.212.20/30", "216.147.212.25/32", "216.147.212.64/27", "64.74.237.232/31", "66.151.7.224/30", "66.151.7.236/32", "66.151.7.40/29"]
    description = "Ex Libris"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["35.9.22.241/32"]
    description = "Temp for Law School Xfer"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["36.112.75.126/32"]
    description = "hulwanwu / BEIJING WANWU"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["61.219.144.12/32"]
    description = "Vendor: Airiti  (INC03908968)"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["68.41.110.44/32"]
    description = "Vendor: Sulaiman"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["74.102.179.2/32"]
    description = "MARCnow"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["78.189.171.26/32"]
    description = "Vendor: ISISTU"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["79.60.2.46/32"]
    description = "Italian consortium"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["82.223.11.254/32"]
    description = "Vendor:  IberoAmericana"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["89.123.114.222/32"]
    description = "Vendor  DEREX, hulderex INC04920611"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["92.62.171.0/24"]
    description = "Vendor:  Sulaiman"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "Alma dropbox sftp access 2"

  tags = {
    product = "Alma"
  }

  tags_all = {
    product = "Alma"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Alma-0020-dropbox-0020-sftp-0020-access-0020-3_sg-0355c6733452c5236" {
  description = "Allows SSH access to Dropboxes"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["39.103.220.20/32"]
    description = "Zhenben  INC05203482"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "Alma dropbox sftp access 3"

  tags = {
    Name = "Alma dropbox sftp access 3"
  }

  tags_all = {
    Name = "Alma dropbox sftp access 3"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Alumni-0020-EZP_sg-09ca50c6ce97d0fa5" {
  description = "Alumni EZP"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "#hul vpn tunnel"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.141.9.0/24"]
    description = "Allowing TPS DevOPS for SSH"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "Alumni EZP"

  tags = {
    Product = "EZProxy"
    product = "EzProxy"
  }

  tags_all = {
    Product = "EZProxy"
    product = "EzProxy"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Ansible-0020-Tower_sg-094cb77e1670e0160" {
  description = "Tower req ports"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Tower Cluster "
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "Ansible Tower"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Aspace-0020-API_sg-085e232ccab32de47" {
  description = "Aspace API access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.128.0/24"]
    description = "#rad VPN (Schlesinger)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.128.0/24"]
    description = "#rad VPN (Schlesinger)"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    description = "Main Campus"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    description = "Main Campus"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.230.0/24"]
    description = "Schlesinger Library"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.230.0/24"]
    description = "Schlesinger Library"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.24.230/32"]
    description = "Harvard Art Museums"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.24.230/32"]
    description = "Harvard Art Museums"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["134.174.151.0/24"]
    description = "Countway Library"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["134.174.151.0/24"]
    description = "Countway Library"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["140.247.0.0/16"]
    description = "FAS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.0.0/16"]
    description = "FAS"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["199.94.1.0/24"]
    description = "Baker Library"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["199.94.1.0/24"]
    description = "Baker Library"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "Aspace API"

  tags = {
    product = "ArchivesSpace"
  }

  tags_all = {
    product = "ArchivesSpace"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Aspace-staff-sandbox_sg-0d63f7db1bdd5f1ec" {
  description = "for the Aspace staff sandbox on the Docker QA hosts"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.116.0/24"]
    description = "CNS VPN for Houghton"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.116.0/24"]
    description = "CNS VPN for Houghton"
    from_port   = "8443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8443"
  }

  ingress {
    cidr_blocks = ["10.1.128.0/24"]
    description = "Schlesinger VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.128.0/24"]
    description = "Schlesinger VPN"
    from_port   = "8443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8443"
  }

  ingress {
    cidr_blocks = ["10.1.230.0/24"]
    description = "Art Museum VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.230.0/24"]
    description = "Art Museum VPN"
    from_port   = "8443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8443"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24"]
    description = "#LAW VPN"
    from_port   = "8443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "8443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8443"
  }

  ingress {
    cidr_blocks = ["10.1.7.0/24"]
    description = "HKITSADMIN VPN for Archives"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.7.0/24"]
    description = "HKITSADMIN VPN for Archives"
    from_port   = "8443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8443"
  }

  ingress {
    cidr_blocks = ["10.1.84.0/24", "128.103.224.0/24", "128.103.24.0/24"]
    from_port   = "8443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8443"
  }

  ingress {
    cidr_blocks = ["10.1.84.0/24", "128.103.224.0/24"]
    description = "GSE"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.128/32"]
    description = "RAD Public IP"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.24.128/32"]
    description = "RAD Public IP"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["134.174.151.0/24"]
    description = "for Jessica Sedgwick at HMS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["134.174.151.0/24"]
    description = "for Jessica Sedgwick at HMS"
    from_port   = "8443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8443"
  }

  ingress {
    cidr_blocks = ["199.94.1.0/24"]
    description = "for Ben Johnson at HBS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["199.94.1.0/24"]
    description = "for Ben Johnson at HBS"
    from_port   = "8443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8443"
  }

  name = "Aspace-staff-sandbox"

  tags = {
    product = "ArchivesSpace"
  }

  tags_all = {
    product = "ArchivesSpace"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Base-0020-DevOps-0020-Rules_sg-9d46bfe1" {
  description = "Opens base ports to the 151 and VPN"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "#hul VPN tunnel"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "hul tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "hul tunnel"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "Default tomcat over OIS VPN"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "Docker Portainer"
    from_port   = "9000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9000"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "HTTP to OIS VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "HTTPS to OIS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "Mongo Access"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "3389"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3389"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "SSH over OIS VPN"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "Solr over OIS VPN"
    from_port   = "8983"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8983"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "allt HTTPS open to ois"
    from_port   = "8443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "mysql to OIS VPN"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "ois VPN, for debugging"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.11.208.0/24"]
    description = "allow Adsysadmin vpn"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "CS2 Subnets"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
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
    cidr_blocks = ["10.2.17.64/26", "10.2.18.64/26"]
    description = "POSSIBLY DEPRICATED CLOUDSHELD 1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.2.17.64/26", "10.2.18.64/26"]
    description = "POSSIBLY DEPRICATED CLOUDSHELD 1"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.224.59/32"]
    description = "External Facing #hul VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.59/32"]
    description = "External Facing #hul VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    description = "External Facing OIS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    description = "External Facing OIS VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    description = "alt HTTPS port, for External Facing #ois VPN"
    from_port   = "8443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8443"
  }

  ingress {
    cidr_blocks = ["128.103.24.59/32"]
    description = "HUL VPN external IP"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
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
    Name    = "Base Devops Rules"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "Base Devops Rules"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--BibData_sg-03875524880300f2a" {
  description = "the BibData app supports the ReCAP project;  IPs \u0026 descriptions per Tim"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["3.233.139.124/32"]
    description = "Prod 3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["3.234.88.62/32"]
    description = "Development/Test -2 "
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["34.224.248.211/32"]
    description = "Prod 2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["34.224.92.68/32"]
    description = "Prod 1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["52.203.96.232/32"]
    description = "Development/Test -1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["52.204.241.226/32"]
    description = "UAT"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "BibData"

  tags = {
    Name    = "BibData"
    product = "Alma"
  }

  tags_all = {
    Name    = "BibData"
    product = "Alma"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--CNA-0020-QA_sg-0e034fe68b709f997" {
  description = "custom access for QA instance of CNA"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN tunnel"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.167.0/24"]
    description = "Load Balancer"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.167.0/24"]
    description = "Load Balancer"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "CNA QA"

  tags = {
    product = "Colonial North America - CNA"
  }

  tags_all = {
    product = "Colonial North America - CNA"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--CNA_sg-c3f79fbc" {
  description = "Colonial North America"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Open to VPC"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.167.247/32"]
    description = "ssh from cna-qa"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["50.199.221.209/32", "66.30.14.110/32"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["50.199.221.209/32", "66.30.14.110/32"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["50.199.221.209/32", "66.30.14.110/32"]
    from_port   = "8983"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8983"
  }

  name = "CNA"

  tags = {
    product = "Colonial North America - CNA"
  }

  tags_all = {
    product = "Colonial North America - CNA"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--ClassRequestTool-QA_sg-087851c0e6aaa2372" {
  description = "CRT QA "

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL Tunnel for testing. "
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL Tunnel for testing. "
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "ClassRequestTool-QA"

  tags = {
    Name    = "CRT QA"
    product = "Class Request Tool"
  }

  tags_all = {
    Name    = "CRT QA"
    product = "Class Request Tool"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Curiosity_sg-0cc0f60fb3c289a3f" {
  description = "For Curiosity related resources. "

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Postgres from Swarm"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Redis from Swarm "
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name = "Curiosity"

  tags = {
    Name    = "Curiosity"
    product = "CURIOSity"
  }

  tags_all = {
    Name    = "Curiosity"
    product = "CURIOSity"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--DAIS-PROD-Rabbit_sg-0691b9a84e4b5892d" {
  description = "DAIS Prod Rabbit MQ Access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24", "10.40.4.15/32", "10.40.4.17/32", "10.40.4.26/32", "10.40.4.27/32"]
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.143.17.128/25"]
    description = "K8s lzprod"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  name = "DAIS-PROD-Rabbit"

  tags = {
    Name    = "DAIS-PROD-Rabbit"
    product = "DAIS"
  }

  tags_all = {
    Name    = "DAIS-PROD-Rabbit"
    product = "DAIS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--DAIS_PROD_Rabbit_sg-0d10ca2bdb7e881e8" {
  description = "DAIS PROD Rabbit MQ"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.102/32", "10.137.165.9/32", "10.137.166.36/32", "10.137.166.92/32", "10.137.167.17/32", "10.137.167.213/32"]
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  name = "DAIS_PROD_Rabbit"

  tags = {
    Name    = "DAIS-PROD-Rabbit"
    product = "DAIS"
  }

  tags_all = {
    Name    = "DAIS-PROD-Rabbit"
    product = "DAIS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--DAIS_QA_Rabbit_sg-0146ee370552a92f1" {
  description = "DAIS QA Rabbit MQ"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32", "10.137.166.140/32", "10.137.166.154/32", "10.137.166.176/32", "10.137.167.224/32"]
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.40.4.15/32"]
    description = "LDI-7"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.40.4.17/32"]
    description = "LDI-8"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "LDI-3"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "LDI-4"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  name = "DAIS_QA_Rabbit"

  tags = {
    Name    = "DAIS_QA_Rabbit"
    product = "DAIS"
  }

  tags_all = {
    Name    = "DAIS_QA_Rabbit"
    product = "DAIS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--DRS-0020-Billing_sg-0ffad94d092cc406b" {
  description = "Allows ingres from SF servers"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.40.13.110/32"]
    description = "Starfish One"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "DRS Billing"

  tags = {
    Name    = "DRS Billing"
    product = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    Name    = "DRS Billing"
    product = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--DRS-0020-SOLR-0020--002F--0020-Zookeeper_sg-1a794b6b" {
  description = "allowed connections to prod DRS SOLR and/or Zookeeper"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "JMX to OIS VPN (Tuesday, April 28, 2020)"
    from_port   = "28280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "28280"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.163.0/24"]
    description = "prod VPC subnet"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.164.0/22"]
    description = "prod VPC subnets 164-167"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Advertise Zookeeper"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2181"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "2888"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2889"
  }

  ingress {
    cidr_blocks = ["10.137.165.245/32"]
    description = "pds-prod2"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.165.56/32"]
    description = "old libsearchzk1"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.166.10/32"]
    description = "libsearchzk3"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.166.129/32"]
    description = "new libsearchzk3"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.166.13/32"]
    description = "new libsearchzk3-qa"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.166.143/32"]
    description = "new libsearchzk1"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.166.15/32"]
    description = "new libsearchzk1-qa"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.166.16/32"]
    description = "libseach8-qa1 (TEMP)"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.166.17/32"]
    description = "old libsearchzk2-qa"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.166.176/32"]
    description = "ltsds-cloud-qa-1, for Aspace refresh"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.166.190/32"]
    description = "new libsearchzk2-qa"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.166.205/32"]
    description = "libsearch8-qa1, for Aspace refresh"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.166.51/32"]
    description = "old libsearchzk1-qa"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.166.97/32"]
    description = "old libsearchzk3-qa"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.167.109/32"]
    description = "pds-prod1"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.167.210/32"]
    description = "new libsearchzk2"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.167.78/32"]
    description = "old libsearchzk2"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.168.0/22"]
    description = "prod VPC subnets 168 -171"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "For Chip"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.138.21.37/32"]
    description = "for Chip"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.143.17.128/25"]
    description = "K8s LZPROD"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.143.17.128/25"]
    description = "K8s LZPROD"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2181"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s LZP"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s lzp"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2181"
  }

  ingress {
    cidr_blocks = ["10.32.192.3/32"]
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.32.192.3/32"]
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2181"
  }

  ingress {
    cidr_blocks = ["10.40.12.190/32"]
    description = "lts-sf-4"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.40.4.0/25"]
    description = "Summer Street segment"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.40.4.0/25"]
    description = "Summer Street segment"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2181"
  }

  ingress {
    cidr_blocks = ["128.103.147.128/26"]
    description = "on-prem prod segment"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["128.103.147.128/26"]
    description = "on-prem prod segment"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2181"
  }

  ingress {
    cidr_blocks = ["128.103.147.151/32"]
    description = "Huxley"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["128.103.147.157/32"]
    description = "lts-vip2.lib.harvard.edu"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["128.103.229.0/25"]
    description = "LTS Dev on prem"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["128.103.229.0/25"]
    description = "LTS Dev on prem"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2181"
  }

  name = "DRS SOLR / Zookeeper"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--DRS-0020-SOLR-002F--0020-Zookeeper-0020-ELB_sg-51b4e321" {
  description = "ELB security group for DRS SOLR and ZK"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "CS2 ALB"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.162.0/25", "10.137.162.128/25", "10.137.163.0/25", "10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24", "10.138.21.0/24"]
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "2888"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2889"
  }

  ingress {
    cidr_blocks = ["10.137.167.28/32", "10.137.167.51/32", "10.32.192.3/32", "10.40.4.0/24", "10.40.4.71/32", "128.103.147.211/32", "128.103.147.230/32", "128.103.149.52/32", "128.103.229.101/32"]
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2181"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    description = "From docker subnet..."
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.32.192.3/32"]
    description = "GSLB"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.40.4.0/25"]
    description = "Summer Street network segment"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["128.103.147.128/25"]
    description = "on-prem prod network segment"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["128.103.229.0/25"]
    description = "on-prem dev network segment"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  name = "DRS SOLR/ Zookeeper ELB"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--DVN-0020-HDC-0020-QA_sg-0365871f4567a2c6c" {
  description = "Access to DVN HDC QA"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.116.0.0/14"]
    description = "vpn_pat.med.harvard.edu"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.116.0.0/14"]
    description = "vpn_pat.med.harvard.edu"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "DVN HDC QA"

  tags = {
    product = "Harvard Data Commons - HDC"
  }

  tags_all = {
    product = "Harvard Data Commons - HDC"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--DVN_sg-05db1d77" {
  description = "DVN specific rules"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.32.4.216/32"]
    description = "old to new solr"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "DVN"

  tags = {
    product = "Dataverse"
  }

  tags_all = {
    product = "Dataverse"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Dash-0020-work-0020-Atmire_sg-f2ebe182" {
  description = "opening Atmire VPN to Dash QA. "

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN for consultant"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["52.208.38.163/32", "85.234.195.109/32", "86.39.200.115/32"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["52.208.38.163/32", "85.234.195.109/32", "86.39.200.115/32"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "Dash work Atmire"

  tags = {
    product = "DASH"
  }

  tags_all = {
    product = "DASH"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Dashv7-Demo_sg-06bbfdb84171eb687" {
  description = "Dash V 7 Demo access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN Tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24"]
    description = "LAW VPN Tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.84.0/24"]
    description = "GSE VPN Tunel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.11.30.0/24"]
    description = "HKS VPN Tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.15.30/32", "128.103.150.30/32"]
    description = "HKS VPN Tunnel -external"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.166/32", "128.103.24.166/32"]
    description = "HCL VPN Tunnel - external"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.29/32", "128.103.24.29/32"]
    description = "LAW VPN Tunnel - external"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.84/32", "128.103.24.84/32"]
    description = "GSE VPN Tunel - external"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "Dashv7-Demo"

  tags = {
    product = "DASH"
  }

  tags_all = {
    product = "DASH"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Docker-0020-Prod-0020-New_sg-0dd0aaff4dbd7f0ba" {
  description = "Refining docker security group. "

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.0.0/16", "10.137.168.0/24"]
    description = "HDforms"
    from_port   = "3000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3000"
  }

  ingress {
    cidr_blocks = ["10.137.163.0/24", "10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24", "10.137.168.0/24", "10.137.171.0/24"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.163.0/24", "10.137.167.0/24"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24", "10.137.168.0/24"]
    from_port   = "10250"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10250"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24", "10.137.168.0/24"]
    from_port   = "4789"
    protocol    = "udp"
    self        = "false"
    to_port     = "4789"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24", "10.137.168.0/24"]
    from_port   = "7946"
    protocol    = "udp"
    self        = "false"
    to_port     = "7946"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Std. Subnet"
    from_port   = "10880"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13880"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "3000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3000"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "6443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6444"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.168.0/24"]
    description = "Internally Open to usable subnets"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.168.0/24"]
    description = "Open to usable subnets"
    from_port   = "179"
    protocol    = "tcp"
    self        = "false"
    to_port     = "179"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.168.0/24"]
    description = "Open to usable subnets"
    from_port   = "18080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18080"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.168.0/24"]
    description = "Open to usable subnets"
    from_port   = "7946"
    protocol    = "tcp"
    self        = "false"
    to_port     = "7946"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.168.0/24"]
    description = "Port for control communication between swarm nodes"
    from_port   = "2376"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2377"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24"]
    description = "ucp-agent for swarm open to usable VPC"
    from_port   = "12000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13000"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24"]
    description = "SSH from LC control"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    from_port   = "12000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13000"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    from_port   = "179"
    protocol    = "tcp"
    self        = "false"
    to_port     = "179"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    from_port   = "18080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18080"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    from_port   = "2376"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2377"
  }

  ingress {
    cidr_blocks = ["10.137.168.0/24"]
    description = "ucp-agent for swarm"
    from_port   = "12000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13000"
  }

  ingress {
    cidr_blocks = ["10.137.168.0/24"]
    description = "ucp-agent for swarm"
    from_port   = "6443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6444"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    description = "ltsds-prod-N hosts"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "Docker Prod New"

  tags = {
    Name    = "Docker Prod New"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "Docker Prod New"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Docker-0020-Registry-0020-DB_sg-0a0c9428bf49112c3" {
  description = "Docker Registry DB to Docker Subnets"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["128.103.147.152/32"]
    description = "tattler"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "Docker Registry DB"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Docker-0020-Registry_sg-0b3a33cba2ced3a2c" {
  description = "Access for Docker Registry Only"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.163.0/24", "10.137.167.0/24"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.168.0/24"]
    description = "Registry Port for ALB"
    from_port   = "11884"
    protocol    = "tcp"
    self        = "false"
    to_port     = "11884"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24", "10.137.168.0/24"]
    description = "Internally Open to usable subnets"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.170.242/32"]
    description = "L4 Test"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    description = "ltsds-prod-N hosts (old)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "Docker Dev Subnet"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.140.210.0/26", "10.140.210.64/26"]
    description = "Sandbox Access"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.14/32"]
    description = "ldi-5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.15/32"]
    description = "ldi-7"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.16/32"]
    description = "ldi-6"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.17/32"]
    description = "ldi-8"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "ldi-3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "ldi-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "Docker Registry"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Docker-Prod-New-2_sg-010d74eb321975327" {
  description = "Docker Prod New 2"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "Listview to OIS VPN"
    from_port   = "13980"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13980"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "EADchecker ALB access to Dockerized EADchecker port"
    from_port   = "19127"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19127"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "EDA to CS2 Test"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "Listview to ALB subnet"
    from_port   = "13980"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13980"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "for FIG-PROD-DOCKER ALB"
    from_port   = "10020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10020"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24"]
    description = "geodata open to load balancer lts-prod-standard-lb-pub-1a"
    from_port   = "31000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31003"
  }

  ingress {
    cidr_blocks = ["10.137.161.0/24"]
    description = "geodata open to load balancer lts-prod-standard-lb-pub-1d"
    from_port   = "31000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31003"
  }

  ingress {
    cidr_blocks = ["10.137.162.0/25", "10.137.162.128/25", "10.137.163.0/25"]
    description = "INC05450764"
    from_port   = "23097"
    protocol    = "tcp"
    self        = "false"
    to_port     = "23097"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24", "10.137.171.0/24"]
    from_port   = "0"
    protocol    = "udp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Registry Container"
    from_port   = "11884"
    protocol    = "tcp"
    self        = "false"
    to_port     = "11884"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "all ports open to the VPC"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.168.0/24", "10.137.169.0/24", "10.137.170.0/24"]
    description = "for fsp-prod ALB"
    from_port   = "8099"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8099"
  }

  ingress {
    cidr_blocks = ["10.137.170.0/24"]
    description = "iiif"
    from_port   = "18080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18080"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    from_port   = "12000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13000"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    from_port   = "18080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18080"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    from_port   = "2376"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2377"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    from_port   = "4789"
    protocol    = "udp"
    self        = "false"
    to_port     = "4789"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    from_port   = "6443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6444"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    from_port   = "7946"
    protocol    = "tcp"
    self        = "false"
    to_port     = "7946"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    from_port   = "7946"
    protocol    = "udp"
    self        = "false"
    to_port     = "7946"
  }

  ingress {
    cidr_blocks = ["10.137.173.0/24"]
    description = "geodata open to load balancer lts-prod-standard-lb-pub-1c"
    from_port   = "31000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31003"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "Dev VPC"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24"]
    description = "DEV K8"
    from_port   = "33180"
    protocol    = "tcp"
    self        = "false"
    to_port     = "33180"
  }

  ingress {
    cidr_blocks = ["10.40.4.14/32"]
    description = "ldi-5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.16/32"]
    description = "LDI-6"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "ldi-3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "ldi-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.147.138/32"]
    description = "ldi-1"
    from_port   = "23097"
    protocol    = "tcp"
    self        = "false"
    to_port     = "23097"
  }

  ingress {
    cidr_blocks = ["128.103.147.145/32"]
    description = "10892"
    from_port   = "10892"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10892"
  }

  ingress {
    cidr_blocks = ["128.103.64.157/32"]
    description = "Doyle"
    from_port   = "23097"
    protocol    = "tcp"
    self        = "false"
    to_port     = "23097"
  }

  name = "Docker-Prod-New-2"

  tags = {
    Name    = "Docker-Prod-New-2"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "Docker-Prod-New-2"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--DockerQA_sg-6657871a" {
  description = "Docker QA rules"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "ois vpn"
    from_port   = "8899"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8899"
  }

  ingress {
    cidr_blocks = ["10.137.135.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/21", "10.137.168.0/22", "10.137.172.0/23"]
    description = "ALB to MPS QA"
    from_port   = "22000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "23050"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "Aspace to CS2  ALB"
    from_port   = "19120"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19120"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "CS2 Subnet"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "SDS Ports"
    from_port   = "10008"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10008"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "SF Whistle"
    from_port   = "10402"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10402"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    from_port   = "23004"
    protocol    = "tcp"
    self        = "false"
    to_port     = "23004"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24"]
    description = "open to lts-prod-standard-lb-pub-1a"
    from_port   = "31000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31006"
  }

  ingress {
    cidr_blocks = ["10.137.161.0/24"]
    description = "open to lts-prod-standard-lb-pub-1d"
    from_port   = "31000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31006"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "IIIF ports open to ALB"
    from_port   = "10105"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10106"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Std. Subnet"
    from_port   = "10880"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10880"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "aspace open to ALB"
    from_port   = "19120"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19126"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "nrsadmin-QA ALB"
    from_port   = "12880"
    protocol    = "tcp"
    self        = "false"
    to_port     = "12882"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24"]
    description = "Class Request Tool"
    from_port   = "8199"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8199"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    description = "Tmp EDA Solr"
    from_port   = "4983"
    protocol    = "tcp"
    self        = "false"
    to_port     = "4983"
  }

  ingress {
    cidr_blocks = ["10.137.168.0/24", "10.137.169.0/24", "10.137.170.0/24"]
    description = "for fsp-qa ALB"
    from_port   = "8099"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8099"
  }

  ingress {
    cidr_blocks = ["10.137.170.131/32"]
    from_port   = "10443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10443"
  }

  ingress {
    cidr_blocks = ["10.137.170.131/32"]
    from_port   = "18080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18080"
  }

  ingress {
    cidr_blocks = ["10.137.173.0/24"]
    description = "open to lts-prod-standard-lb-pub-1c"
    from_port   = "31000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31006"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "INC04844957"
    from_port   = "19124"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19124"
  }

  ingress {
    cidr_blocks = ["10.138.21.159/32"]
    description = "Jenkins"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.204/32"]
    description = "from dev"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.240.135.0/24"]
    from_port   = "0"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  ingress {
    cidr_blocks = ["10.40.4.14/32", "10.40.4.16/32", "10.40.4.27/32"]
    description = "SDS DRS2 Services QA"
    from_port   = "10007"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10007"
  }

  ingress {
    cidr_blocks = ["128.103.147.140/32"]
    description = "simon for testing"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.147.145/32"]
    description = "doyle"
    from_port   = "10892"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10892"
  }

  ingress {
    cidr_blocks = ["128.103.147.145/32"]
    description = "doyle"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.229.0/25"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  name = "DockerQA"

  tags = {
    Name    = "docker-qa"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "docker-qa"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Dockerhub-prod_sg-0218a3be9dcaea173" {
  description = "To allow servers to access docker hub.lts.harvard.edu"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "LTS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.163.123/32"]
    description = "ltsds-cloud-qa-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32"]
    description = "ltsds-cloud-qa-5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.131/32"]
    description = "qa-3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.154/32"]
    description = "ltsds-cloud-qa-3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.170/32"]
    description = "qa-5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.176/32"]
    description = "ltsds-cloud-qa-1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.37/32"]
    description = "qa-1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.224/32"]
    description = "ltsds-cloud-qa-2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.89/32"]
    description = "qa-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.171.153/32"]
    description = "ltsds-cloud-prod-3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.171.164/32"]
    description = "ltsds-cloud-prod-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.171.176/32"]
    description = "ltsds-cloud-prod-1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.171.186/32"]
    description = "ltsds-cloud-prod-2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.171.53/32"]
    description = "qa-2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.109/32"]
    description = "ltsds-cloud-dev-2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.170/32"]
    description = "ltsds-cloud-dev-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.204/32"]
    description = "ltsds-cloud-dev-1.lib.harvard.edu"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.43/32"]
    description = "ltsds-cloud-dev-3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.90/32"]
    description = "ltsds-cloud-dev-5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.14/32"]
    description = "ldi-5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "ldi-3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "ldi-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.147.138/32"]
    description = "ldi-1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.147.139/32"]
    description = "ldi-2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "Dockerhub-prod"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--DocumentDB_sg-067dd455c73374b31" {
  description = "DBD default port"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Std. VPC"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    description = "ltsds-cloud-prod-[1-4] hosts"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  name = "DocumentDB"

  tags = {
    Name    = "Document DB"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "Document DB"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--EAS-0020-QA-0020-database_sg-5322a423" {
  description = "allow access from haldeman"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.40.4.21/32", "10.40.4.26/32", "10.40.4.27/32", "10.40.4.69/32"]
    from_port   = "8222"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8222"
  }

  name = "EAS QA database"

  tags = {
    Name    = "EAS QA database"
    product = "EASi"
  }

  tags_all = {
    Name    = "EAS QA database"
    product = "EASi"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--EAS-0020-prod-0020-database_sg-674e3417" {
  description = "EAS prod database (access from tomlinson)"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.32.69.53/32", "10.40.4.26/32", "10.40.4.27/32", "128.103.69.53/32"]
    from_port   = "8000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9000"
  }

  name = "EAS prod database"

  tags = {
    Name    = "EAS prod database"
    product = "EASi"
  }

  tags_all = {
    Name    = "EAS prod database"
    product = "EASi"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--EDA-0020-QA_sg-0fd61f5a4c4e083b4" {
  description = "EDA QA"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "VPN OIS"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "4983"
    protocol    = "tcp"
    self        = "false"
    to_port     = "4983"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.167.0/24"]
    description = "From Standard Subnet"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24"]
    description = "From Std. Subnet"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["52.207.113.92/32"]
    description = "IMG server, internal call"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "EDA QA"

  tags = {
    Name    = "EDA QA"
    product = "Emily Dickinson Archive"
  }

  tags_all = {
    Name    = "EDA QA"
    product = "Emily Dickinson Archive"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--EDA-DMZ_sg-078b136927b1417ac" {
  description = "EDA ALB access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.172.128/25", "10.137.174.0/24", "10.137.175.0/24"]
    description = "L4 ALB"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name   = "EDA-DMZ"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--EDA-Prod_sg-09b33231b6bea3ffb" {
  description = "EDA Prod "

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "4983"
    protocol    = "tcp"
    self        = "false"
    to_port     = "4983"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "4983"
    protocol    = "tcp"
    self        = "false"
    to_port     = "4983"
  }

  name = "EDA-Prod"

  tags = {
    product = "Emily Dickinson Archive"
  }

  tags_all = {
    product = "Emily Dickinson Archive"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--EFS-0020-Access_sg-0d8d829f2c3919540" {
  description = "EFS Access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24", "10.137.168.0/24", "10.137.169.0/24", "10.137.170.0/24", "10.137.171.0/24"]
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24", "10.137.168.0/24", "10.137.169.0/24", "10.137.170.0/24", "10.137.171.0/24"]
    from_port   = "0"
    protocol    = "udp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.143.133.149/32"]
    description = "lz-sand"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.143.17.0/24"]
    description = "lz-prod k8s"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "ldi-4"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  name = "EFS Access"

  tags = {
    Name    = "EFS Access"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "EFS Access"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--EFS-0020-for-0020-solr_sg-ac96cfdc" {
  description = "Backup for EFS solr indices. "

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
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.0.0.0/8"]
    from_port   = "0"
    protocol    = "udp"
    self        = "false"
    to_port     = "65535"
  }

  name = "EFS for solr"

  tags = {
    Name    = "EFS volume access"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "EFS volume access"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--ELB-0020-Only-0020-Public-0020-Access_sg-ca0372ba" {
  description = "Opens 80/443 to the world"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "443"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "443"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "80"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "80"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "ELB Only Public Access"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--ELB_REQ_GROUP_sg-5c622c20" {
  description = "Health check IPs for cloud shield"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "CS2 Subnets"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "CS2 Subnets"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "LDI Tomcat ports open to VPC"
    from_port   = "9000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9099"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "open to VPC"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "open to VPC"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24", "10.137.167.0/24", "10.137.168.0/24"]
    description = "for kant \u0026 hegel dropboxes"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.2.17.64/26", "10.2.18.64/26", "10.34.11.0/24"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.2.17.64/26", "10.2.18.64/26", "10.34.11.0/24"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "ELB_REQ_GROUP"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--ETDS-PROD_sg-1f164e6d" {
  description = "ETDS-PROD"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "VPN OIS"
    from_port   = "9999"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9999"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.169.0/24", "10.137.170.0/24", "10.137.173.0/24"]
    description = "Health Check From ELB"
    from_port   = "9999"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9999"
  }

  ingress {
    cidr_blocks = ["10.137.167.216/32"]
    description = "ssh from clue"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.170.0/24"]
    description = "psql to DB"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "ETDS-PROD"

  tags = {
    product = "ETDS"
  }

  tags_all = {
    product = "ETDS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--ETD_PROD_Rabbit_sg-05fef1794e61b33d7" {
  description = "Prod access to MQ server"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.143.17.128/25"]
    description = "K8s lzprod"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.40.4.15/32"]
    description = "ldi-7"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.40.4.17/32"]
    description = "ldi-8"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "ldi-3"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "ldi-4"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  name = "ETD_PROD_Rabbit"

  tags = {
    Name        = "ETD_PROD_Rabbit"
    environment = "Production"
    product     = "ETDS"
  }

  tags_all = {
    Name        = "ETD_PROD_Rabbit"
    environment = "Production"
    product     = "ETDS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--ETD_QA_Rabbit_sg-0e486428cb9005bd1" {
  description = "ETD QA rabbitmq"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.40.4.15/32"]
    description = "ldi-7"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.40.4.17/32"]
    description = "ldi-8"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "ldi-3"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "ldi-4"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  name = "ETD_QA_Rabbit"

  tags = {
    Name    = "ETD_QA_Rabbit"
    product = "ETDS"
  }

  tags_all = {
    Name    = "ETD_QA_Rabbit"
    product = "ETDS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--EZProxy-0020-Cloud_sg-3d038e4d" {
  description = "EZProxy Cloud"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.147.138/32"]
    description = "LDI-1 for syncs"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "EZProxy Cloud"

  tags = {
    product = "EzProxy"
  }

  tags_all = {
    product = "EzProxy"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--EZProxy-0020-vendor-0020-support_sg-0664a92df247d9c4f" {
  description = "EZProxy vendor support"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["132.174.0.0/16"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["132.174.0.0/16"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "EZProxy vendor support"

  tags = {
    product = "EzProxy"
  }

  tags_all = {
    product = "EzProxy"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Feedback_sg-55f47226" {
  description = "Feedback Prod and QA"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "9020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9020"
  }

  ingress {
    cidr_blocks = ["10.137.0.0/16"]
    description = "ELB health check"
    from_port   = "9020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9020"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "ssh from dev vpc"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "Feedback"

  tags = {
    product = "Web Services - PRESTO"
  }

  tags_all = {
    product = "Web Services - PRESTO"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Footprints_sg-092e01becf3addc28" {
  description = "Footprints"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24"]
    description = "LAW VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24"]
    description = "Docker QA \u0026 prod, for Job Monitor"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24"]
    description = "Docker dev hosts, for Job Monitor"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24", "10.137.167.0/24"]
    description = "Docker QA \u0026 prod, for Job Monitor"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["104.90.87.188/32"]
    description = "harvard.az1.qualtrics.com"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["134.174.0.0/16"]
    description = "Longwood Campus"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.0.0/16"]
    description = "FAS (on campus)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "Footprints"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Fujitsu-0020-Support_sg-049ca253f6e9688a0" {
  description = "Fujitsu subnets access for after hours and weekend support"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.11.134.0/24"]
    description = "Fujitsu / SOCDBA backup network"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.11.134.0/32", "10.141.9.128/27", "10.141.9.160/27"]
    description = "Fujitsu"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "Fujitsu Support"

  tags = {
    Name = "Fujitsu Support"
  }

  tags_all = {
    Name = "Fujitsu Support"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--GBL-0020-Prod_sg-07e378d34c0e80d45" {
  description = "Geoblacklight Prod"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Docker Prod"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "GBL Prod"

  tags = {
    product = "Harvard Geospatial Library - HGL"
  }

  tags_all = {
    product = "Harvard Geospatial Library - HGL"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Globus_sg-0f4bfbfaba36911af" {
  description = "Security Group for Globus Portal"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "ALB"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "Globus"

  tags = {
    Name    = "Globus Portal"
    product = "Alma"
  }

  tags_all = {
    Name    = "Globus Portal"
    product = "Alma"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--HCL_sg-68837220" {
  description = "HCL"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "HCL"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--HD-LAS-QA_sg-0a95f8bd8a7a26cae" {
  description = "HD-LAS-QA"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.154.0/24"]
    description = "SSH for HD"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "HD-LAS-QA"

  tags = {
    Name    = "HD-LAS-QA"
    product = "HD Inventory - Progress"
  }

  tags_all = {
    Name    = "HD-LAS-QA"
    product = "HD Inventory - Progress"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--HD-prod-ALB_sg-05151c7bc68d078b5" {
  description = "connections into the ALB for HD, not into the HD Progress server"

  ingress {
    cidr_blocks = ["10.137.242.0/25", "10.137.242.0/26", "10.34.64.128/26", "10.34.64.135/32", "10.34.64.64/26", "140.247.35.189/32", "69.25.43.168/32", "69.25.43.169/32"]
    description = "LogicMonitor"
    from_port   = "19092"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19092"
  }

  ingress {
    cidr_blocks = ["128.103.224.59/32", "128.103.24.59/32"]
    description = "external IP of #hul VPN"
    from_port   = "19092"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19092"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    description = "external IP of #ois VPN"
    from_port   = "19092"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19092"
  }

  ingress {
    cidr_blocks = ["18.215.67.20/32", "18.232.230.221/32"]
    description = "LogicMonitor maybe"
    from_port   = "19092"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19092"
  }

  ingress {
    cidr_blocks = ["3.234.88.62/32", "52.203.96.232/32"]
    description = "dev/test host at HTC Inc"
    from_port   = "19092"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19092"
  }

  ingress {
    cidr_blocks = ["34.224.248.211/32", "34.224.92.68/32"]
    description = "prod host at HTC Inc"
    from_port   = "19092"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19092"
  }

  ingress {
    cidr_blocks = ["52.202.255.64/26"]
    description = "LogicMonitor DC"
    from_port   = "19092"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19092"
  }

  name = "HD-prod-ALB"

  tags = {
    Name    = "HD-prod-ALB"
    product = "HD Inventory - Progress"
  }

  tags_all = {
    Name    = "HD-prod-ALB"
    product = "HD Inventory - Progress"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--HD-prod-server_sg-0ecd651f37083087c" {
  description = "connections into the HD Progress server, not into the HD ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "#ois tunnel connect to CUPS print service"
    from_port   = "631"
    protocol    = "tcp"
    self        = "false"
    to_port     = "631"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "from ALB to LAS API port"
    from_port   = "19092"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19092"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "RSYNC from HD forms Docker Container"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.166.184/32"]
    description = "allow sherlock to connect to Progress ports"
    from_port   = "13900"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13999"
  }

  ingress {
    cidr_blocks = ["10.137.166.184/32"]
    description = "allow sherlock to connect to Progress ports"
    from_port   = "14900"
    protocol    = "tcp"
    self        = "false"
    to_port     = "14999"
  }

  ingress {
    cidr_blocks = ["10.137.166.184/32"]
    description = "ssh from prod host, sherlock"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.166.186/32"]
    description = "allow mycroft to connect to Progress ports"
    from_port   = "13900"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13999"
  }

  ingress {
    cidr_blocks = ["10.137.166.186/32"]
    description = "allow mycroft to connect to Progress ports"
    from_port   = "14900"
    protocol    = "tcp"
    self        = "false"
    to_port     = "14999"
  }

  ingress {
    cidr_blocks = ["10.137.166.186/32"]
    description = "ssh from QA host, mycroft"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.167.10/32", "10.137.167.12/32", "10.137.167.15/32", "10.137.167.19/32", "10.137.167.198/32", "10.137.167.199/32", "10.137.167.200/32", "10.137.167.23/32", "10.137.167.27/32"]
    description = "HDFORMS access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.167.14/32"]
    description = "sftp access from kant, for Aleph-related jobs"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.23.26/32"]
    description = "ssh from dev host, lestrade"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.245.140.128/25"]
    description = "INC04912595"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.154.192/26"]
    description = "Progress ports for HD staff at Southborough"
    from_port   = "13900"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13999"
  }

  ingress {
    cidr_blocks = ["128.103.154.192/26"]
    description = "Progress ports for HD staff at Southborough"
    from_port   = "14900"
    protocol    = "tcp"
    self        = "false"
    to_port     = "14999"
  }

  ingress {
    cidr_blocks = ["128.103.154.192/26"]
    description = "ssh for HD staff at Southborough"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.154.228/32"]
    description = "ssh from old prod host"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "HD-prod-server"

  tags = {
    Name    = "HD-prod-server"
    product = "HD Inventory - Progress"
  }

  tags_all = {
    Name    = "HD-prod-server"
    product = "HD Inventory - Progress"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--HDC-0020-Prod_sg-0ad8b15bd6e85cd55" {
  description = "HDC Prod"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.171.142/32"]
    description = "ssh from QA"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "HDC Prod"

  tags = {
    product = "HD Inventory - Progress"
  }

  tags_all = {
    product = "HD Inventory - Progress"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--HGL-GEODATA-RESTRICTED-PROD_sg-08aabe84c0c584fe3" {
  description = "HGL-GEODATA-RESTRICTED-PROD"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["3.236.169.128/27"]
    description = "Inbound Geodata prod access for internal call"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "HGL-GEODATA-RESTRICTED-PROD"

  tags = {
    product = "Harvard Geospatial Library - HGL"
  }

  tags_all = {
    product = "Harvard Geospatial Library - HGL"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--HGL-PROD-NEW_sg-07da65baac4fb6b19" {
  description = "New security group for Docker version of HGL"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  name = "HGL-PROD-NEW"

  tags = {
    Name    = "hgl-prod-new"
    product = "Harvard Geospatial Library - HGL"
  }

  tags_all = {
    Name    = "hgl-prod-new"
    product = "Harvard Geospatial Library - HGL"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--HGL-Prod_sg-0f3f0712db63b3737" {
  description = "Allows HGL to connect to PSQL"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Prod Docker "
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name   = "HGL-Prod"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--HGL-Restricted_sg-0f5c3ac5bd5eedea0" {
  description = "HGL/GBL restricted. "

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL Internal IP"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL Internal IP"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.166/32"]
    description = "HCL external IP"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.59/32"]
    description = "HUL External IP"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "HGL-Restricted"

  tags = {
    product = "Harvard Geospatial Library - HGL"
  }

  tags_all = {
    product = "Harvard Geospatial Library - HGL"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--HTTP-002F-S-0020-access-0020-from-0020-Docker-0020-QA-0020-hosts_sg-0aabd08842316be5c" {
  description = "allows Docker QA hosts to connect to the HTTP/S ports"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32"]
    description = "from Docker QA 5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32"]
    description = "from Docker QA 5"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.166.140/32"]
    description = "from Docker QA 4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.140/32"]
    description = "from Docker QA 4"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.166.154/32"]
    description = "from Docker QA 3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.154/32"]
    description = "from Docker QA 3"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.166.176/32"]
    description = "from Docker QA 1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.176/32"]
    description = "from Docker QA 1"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.167.224/32"]
    description = "from Docker QA 2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.224/32"]
    description = "from Docker QA 2"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "HTTP/S access from Docker QA hosts"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Harvard-0020-Depository_sg-031e1eb8a0f63fee0" {
  description = "in case of Progress failover to mycroft"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN Tunnel"
    from_port   = "-1"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  ingress {
    cidr_blocks = ["10.137.167.137/32"]
    description = "adler - HD LAS QA"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.167.14/32"]
    description = "kant - for GFA support"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.23.26/32"]
    description = "new lestrade in dev VPC"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.154.192/26"]
    description = "HD - ports for Progress"
    from_port   = "13900"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13999"
  }

  ingress {
    cidr_blocks = ["128.103.154.192/26"]
    description = "HD - ports for Progress"
    from_port   = "14900"
    protocol    = "tcp"
    self        = "false"
    to_port     = "14999"
  }

  ingress {
    cidr_blocks = ["128.103.154.192/26"]
    description = "HD logins"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.229.23/32"]
    description = "amanda"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["34.224.248.211/32", "34.224.92.68/32"]
    description = "for ReCAP project"
    from_port   = "9092"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9092"
  }

  name = "Harvard Depository"

  tags = {
    product = "HD Inventory - Progress"
  }

  tags_all = {
    product = "HD Inventory - Progress"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Health-0020-Check-0020-for-0020-SSH_sg-0d20f1ec207901bd5" {
  description = "Cloud Shield port 22 health check. "

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.2.17.64/26", "10.2.18.64/26", "10.34.11.0/24"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    description     = "from the ELB_REQ_GROUP"
    from_port       = "0"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ELB_REQ_GROUP_sg-5c622c20_id}"]
    self            = "false"
    to_port         = "0"
  }

  name = "Health Check for SSH"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Hindawi-0020-article-0020-import_sg-856e06f4" {
  description = "QA access for SWORD Hindawi import"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["196.219.212.128/25", "196.219.3.128/27", "41.33.49.160/27", "41.65.142.96/27"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["196.219.212.128/25", "196.219.3.128/27", "41.33.49.160/27", "41.65.142.96/27"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "Hindawi article import"

  tags = {
    Name    = "Hindawi SWORD import"
    product = "Harvard Digital Collections Platform - DCP"
  }

  tags_all = {
    Name    = "Hindawi SWORD import"
    product = "Harvard Digital Collections Platform - DCP"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--IDS-TEST_sg-0a7b136049fd7f4e7" {
  description = "INC04393783"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.230.0/24", "128.103.150.82/32"]
    description = "ARTMUSEUMS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.230.0/24"]
    description = "ARTMUSEUMS"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.11.82.0/24"]
    description = "OASADMIN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.150.82/32"]
    description = "ARTMUSEUMS PUB IP"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.224.166/32"]
    description = "HCL PUB IP"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.224.59/32"]
    description = "HUL PUB IP"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.224.82/32"]
    description = "OASADMIN PUB IP"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "IDS-TEST"

  tags = {
    Name        = "IDS-TESt"
    environment = "Test"
    product     = "LTS Infrastructure"
  }

  tags_all = {
    Name        = "IDS-TESt"
    environment = "Test"
    product     = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--IDS2-0020-required-0020-ports_sg-279a3a51" {
  description = "ports needed for new version of IDS2"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "ids2 servlet port"
    from_port        = "8080"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "8080"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "IDS2 required ports"

  tags = {
    product = "Image Delivery Service - IDS"
  }

  tags_all = {
    product = "Image Delivery Service - IDS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--IIIF-0020-QA_sg-24be5d5b" {
  description = "ports needed for QA instance of IIIF"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.34.5.254/32", "10.40.4.69/32", "128.103.193.245/32"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.34.5.254/32", "10.40.4.69/32", "128.103.193.245/32"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    from_port   = "9200"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9300"
  }

  ingress {
    cidr_blocks = ["10.108.69.0/24", "128.103.188.105/32"]
    description = "HKS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.108.69.0/24", "128.103.188.105/32"]
    description = "HKS"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.108.69.0/24", "128.103.188.105/32"]
    description = "HKS"
    from_port   = "9200"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9300"
  }

  ingress {
    cidr_blocks = ["66.151.7.150/32"]
    description = "Primo Hosted"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["66.151.7.150/32"]
    description = "Primo Hosted"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "IIIF QA"

  tags = {
    Name    = "\tIIIF QA"
    product = "Harvard Library Viewer - MIRADOR"
  }

  tags_all = {
    Name    = "\tIIIF QA"
    product = "Harvard Library Viewer - MIRADOR"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--IIIF-0020-prod_sg-081be476" {
  description = "open IIIF production ports to the world"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "IIIF prod"

  tags = {
    Name    = "IIIF prod"
    product = "Harvard Library Viewer - MIRADOR"
  }

  tags_all = {
    Name    = "IIIF prod"
    product = "Harvard Library Viewer - MIRADOR"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--IIIF-0020-to-0020-IDS_sg-4fe65e07" {
  description = "Allows IIIF Servers access to IDS Servers on port 8080"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "PDS QA access"
    from_port        = "443"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "PDS QA access"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.167.28/32"]
    description = "Ansel"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["10.137.170.92/32"]
    description = "Avedon"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["66.151.7.150/32"]
    description = "Primo Hosted"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["66.151.7.150/32"]
    description = "Primo Hosted"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "IIIF to IDS"

  tags = {
    Name    = "IIIF to IDS"
    product = "Image Delivery Service - IDS"
  }

  tags_all = {
    Name    = "IIIF to IDS"
    product = "Image Delivery Service - IDS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--IQSS-0020-security-0020-group_sg-8927e7fb" {
  description = "access to DVN servers for IQSS devs"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0", "140.247.115.0/24", "140.247.116.0/24", "140.247.120.224/32", "23.23.218.23/32", "50.19.89.92/32", "54.197.247.137/32", "54.91.204.202/32"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.11.134.0/32", "10.141.9.128/27", "10.141.9.160/27"]
    description = "Fujitsu Offsite Admins"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/23"]
    description = "Dataverse hosts"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/23"]
    description = "HTTP from Dataverse hosts"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/23"]
    description = "HTTPS from Dataverse hosts"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/23"]
    description = "Rserv from Dataverse hosts"
    from_port   = "6311"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6311"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/23"]
    description = "SOLR from DVN hosts"
    from_port   = "8983"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8983"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/23"]
    description = "SSH from Dataverse hosts"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["140.247.115.0/24", "140.247.116.0/24", "140.247.120.224/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["140.247.115.0/24", "140.247.116.0/24"]
    description = "Glassfish from IQSS"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["140.247.115.0/24", "140.247.116.0/24"]
    description = "IQSS"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["140.247.115.0/24", "140.247.116.0/24"]
    description = "IQSS"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["23.23.218.23/32", "50.19.89.92/32", "54.197.247.137/32", "54.91.204.202/32"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "IQSS security group"

  tags = {
    product = "Dataverse"
  }

  tags_all = {
    product = "Dataverse"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Innovation-0020-Apps-0020-QA_sg-0c9d1f926b7f93629" {
  description = "Innovation Apps QA"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.102.229.0/24", "140.247.137.0/24", "140.247.69.58/32"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16", "131.142.0.0/16", "134.174.0.0/16", "140.247.0.0/16", "199.94.0.0/18", "65.112.10.0/23", "65.112.14.0/23", "65.112.8.0/23"]
    from_port   = "3000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3000"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16", "131.142.0.0/16", "134.174.0.0/16", "140.247.0.0/16", "199.94.0.0/18", "65.112.10.0/23", "65.112.14.0/23", "65.112.8.0/23"]
    from_port   = "4000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "4000"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16", "131.142.0.0/16", "140.247.0.0/16", "199.94.0.0/18", "65.112.10.0/23", "65.112.14.0/23", "65.112.8.0/23"]
    from_port   = "3001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3001"
  }

  ingress {
    cidr_blocks = ["128.103.147.238/32", "128.103.229.125/32", "128.103.229.92/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.151.0/32", "128.103.224.79/32"]
    from_port   = "8983"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8983"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    from_port   = "10001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10001"
  }

  ingress {
    cidr_blocks = ["129.116.0.0/16", "140.247.137.0/24", "140.247.69.23/32", "140.247.69.58/32"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "Innovation Apps QA"

  tags = {
    product = "Inscriptio"
  }

  tags_all = {
    product = "Inscriptio"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Innovations-0020-Apps_sg-0fbb6eb798c7b22cc" {
  description = "Innovation Apps"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24", "10.1.59.0/24", "10.1.79.0/24"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24", "10.1.59.0/24"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.171.184/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "Innovations Apps"

  tags = {
    product = "Inscriptio"
  }

  tags_all = {
    product = "Inscriptio"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--JSTOR_PROD_Rabbit_sg-032ce4018e94e9b10" {
  description = "JSTOR_PROD_Rabbit"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  name = "JSTOR_PROD_Rabbit"

  tags = {
    environment = "Production"
    product     = "JSTOR Forum"
  }

  tags_all = {
    environment = "Production"
    product     = "JSTOR Forum"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--JSTOR_QA_Rabbit_sg-0a96ae28afa6dae06" {
  description = "Allow access to JSTOR_QA_Rabbit MQ "

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  name = "JSTOR_QA_Rabbit"

  tags = {
    Name        = "JSTOR_QA_Rabbit"
    environment = "QA"
    product     = "JSTOR Forum"
  }

  tags_all = {
    Name        = "JSTOR_QA_Rabbit"
    environment = "QA"
    product     = "JSTOR Forum"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--LDI-0020-change-control_sg-03a61c7d" {
  description = "all TCP ports open to LDI staging server, rand.hul"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.169.119/32"]
    description = "ssh from Access QA and staging host wernstrom"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.229.101/32"]
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  name = "LDI change-control"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--LTS-RabbitMQ-Prod_sg-0a0cf5d08ce48276e" {
  description = " LTS-RabbitMQ Prod"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.10/32", "10.137.167.12/32", "10.137.167.15/32", "10.137.167.19/32", "10.137.167.198/32", "10.137.167.199/32", "10.137.167.200/32", "10.137.167.23/32", "10.137.167.27/32"]
    description = "K8S Prod access"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s LZP"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.143.25.140/32", "10.143.25.141/32", "10.143.25.142/32"]
    description = "LZP Control node"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.143.25.150/32", "10.143.25.151/32", "10.143.25.152/32"]
    description = "LZP Worker node"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.40.4.15/32"]
    description = "ldi-7"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.40.4.17/32"]
    description = "ldi-8"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "ldi-3"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "ldi-4"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  name   = "LTS-RabbitMQ-Prod"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--LTS-RabbitMQ-QA_sg-08fe792ddace77459" {
  description = "Access to QA RabbitMQ"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.143.17.128/25"]
    description = "K8s lzprod"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s LZP"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.143.25.140/32", "10.143.25.141/32", "10.143.25.142/32"]
    description = "LZP Control node"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.143.25.150/32", "10.143.25.151/32", "10.143.25.152/32"]
    description = "LZP Worker node"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.40.4.15/32"]
    description = "ldi-7"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.40.4.17/32"]
    description = "ldi-8"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "ldi-3"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "ldi-4"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  name = "LTS-RabbitMQ-QA"

  tags = {
    Name = "LTS-RabbitMQ-QA"
  }

  tags_all = {
    Name = "LTS-RabbitMQ-QA"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Library-0020-Cloud-0020-Prod_sg-0aaeb7d8b32b70ff1" {
  description = "library cloud prod"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Std subnet"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "from prod/qa subnet"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["10.137.166.135/32"]
    description = "from ingest"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.166.19/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    description = "Docker Subnet"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "Library Cloud Prod"

  tags = {
    product = "Library Cloud"
  }

  tags_all = {
    product = "Library Cloud"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Library-0020-Cloud-0020-QA_sg-069c7781db42f4e00" {
  description = "LC QA"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "from prod/qa subnet"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "from prod/qa subnet"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "from prod/qa subnet"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["10.137.166.135/32"]
    description = "from ingest"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.166.19/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    description = "from wrong subnet"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    description = "from wrong subnet"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "Dev Subnet"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "Library Cloud QA"

  tags = {
    product = "Library Cloud"
  }

  tags_all = {
    product = "Library Cloud"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Link-o-matic-Prod_sg-014ae4a2a64f16a6d" {
  description = "LInk-o-matic prod"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["127.0.0.1/32", "128.103.0.0/16", "140.247.0.0/16", "172.31.47.39/32", "199.94.0.0/19", "199.94.32.0/20", "199.94.48.0/32", "52.5.207.102/32"]
    from_port   = "3000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3000"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16", "140.247.0.0/16", "172.31.47.39/32", "172.56.35.3/32", "199.94.0.0/19", "199.94.32.0/20", "199.94.48.0/32", "52.5.207.102/32"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["172.31.30.242/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["172.31.47.39/32"]
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name = "Link-o-matic-Prod"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Listview-old_sg-0b180da4f628db82d" {
  description = "Listview from Bad VPC"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.147.238/32", "128.103.147.252/32", "128.103.224.0/24"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.151.28/32", "128.103.229.92/32", "172.31.37.157/32"]
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name = "Listview-old"

  tags = {
    product = "Listview"
  }

  tags_all = {
    product = "Listview"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Listview_sg-fb8b388a" {
  description = "Listview"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "From Docker to DB"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.167.115/32"]
    description = "From old prod to new DB"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.147.211/32", "128.103.229.125/32", "128.103.229.92/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "Listview"

  tags = {
    Name    = "Listview"
    product = "Listview"
  }

  tags_all = {
    Name    = "Listview"
    product = "Listview"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--LogicMonitor-0020-Internal-0020-Checkpoint_sg-0deaa8d4f5d59c900" {
  description = "Allows LogicMonitor to check protected hosts"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/26"]
    description = "LM Checkpoints"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.34.64.135/32"]
    description = "ENTWMLOGMON0006"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.35.189/32"]
    description = "LogicMonitor internal checkpoint"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.35.189/32"]
    description = "LogicMonitor internal checkpoint"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "LogicMonitor Internal Checkpoint"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Lowell_sg-0c8dc28c5fb429684" {
  description = "HA and Historical Calendar"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.230.0/24"]
    description = "Artmuseum VPN"
    from_port   = "8101"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8999"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24", "10.1.79.0/24", "128.103.224.59/32", "128.103.224.79/32", "128.103.24.59/32", "128.103.24.79/32"]
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "Lowell"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--MPS-ADMIN-PROD_sg-0d6bdad346a6905be" {
  description = "Access to MPS Admin Prod"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["3.236.169.128/27"]
    description = "Academic Techology "
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "MPS-ADMIN-PROD"

  tags = {
    Name        = "MPS-ADMIN-PROD"
    environment = "Test"
    product     = "Media Presentation Service - MPS"
  }

  tags_all = {
    Name        = "MPS-ADMIN-PROD"
    environment = "Test"
    product     = "Media Presentation Service - MPS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--MPS_QA_RABBIT_sg-0111a74db08b36296" {
  description = "allow access to RABBIT"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32"]
    description = "docker qa 5"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.166.140/32"]
    description = "docker qa 4"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.166.154/32"]
    description = "docker qa 3"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.166.176/32"]
    description = "docker qa 1"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.166.22/32", "10.137.166.26/32", "10.137.166.27/32", "10.137.167.20/32", "10.137.167.22/32", "10.137.167.24/32", "10.137.167.28/32", "10.137.167.29/32", "10.137.167.30/32"]
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.137.167.224/32"]
    description = "docker qa 2"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  name = "MPS_QA_RABBIT"

  tags = {
    Name    = "MPS_QA_Rabbit"
    product = "Media Presentation Service - MPS"
  }

  tags_all = {
    Name    = "MPS_QA_Rabbit"
    product = "Media Presentation Service - MPS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--MPS_prod_Rabbit_sg-0a427c36580640e09" {
  description = "allows needed connections to MPS_prod_Rabbit message queue server"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.102/32"]
    description = "Docker prod 2"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.165.9/32"]
    description = "Docker prod 5"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.166.36/32"]
    description = "Docker prod 4"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.166.92/32"]
    description = "Docker prod 1"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.167.10/32"]
    description = "RKE Worker 1"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.167.12/32"]
    description = "RKE Worker 2"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.167.15/32"]
    description = "RKE Worker 3"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.167.17/32"]
    description = "Docker prod 6"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.167.19/32"]
    description = "Rke Worker 4"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.167.213/32"]
    description = "Docker prod 3"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.167.23/32"]
    description = "RKE Worker 5"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.167.27/32"]
    description = "RKE Worker 6"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  name = "MPS_prod_Rabbit"

  tags = {
    Name    = "MPS_PROD_Rabbit"
    product = "Media Presentation Service - MPS"
  }

  tags_all = {
    Name    = "MPS_PROD_Rabbit"
    product = "Media Presentation Service - MPS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Mongo-DB_sg-71984307" {
  description = "hows.lib security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "128.103.147.152/32"]
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "128.103.151.0/25"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  name = "Mongo-DB"

  tags = {
    Name    = "hows.lib"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "hows.lib"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Mrs-redis-QA_sg-050f49abf2d673d43" {
  description = "Allow connections to Redis"

  ingress {
    cidr_blocks = ["10.137.166.0/24"]
    description = "Server node"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    description = "Worker node"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name   = "Mrs-redis-QA"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--NRS-0020-QA_sg-91f50de1" {
  description = "NRS QA"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.128.0/24"]
    description = "VPN tunnel for Schlesinger (RAD)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "VPN tunnel for HCL"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24"]
    description = "VPN tunnel for Law"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN; legacy NRS port"
    from_port   = "9031"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9031"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "VPN tunnel for HUL"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.61.0/24"]
    description = "VPN tunnel for Divinity"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "128.103.0.0/16", "140.247.0.0/16"]
    description = "legacy NRS port"
    from_port   = "9031"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9031"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "VPN tunnel for LTS (OIS)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "VPN tunnel for LTS (OIS)"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.84.0/24"]
    description = "VPN tunnel for Gutman (GSE)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.91.0/24"]
    description = "VPN tunnel for Arnold Arboretum"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.116.176.0/24"]
    description = "VPN tunnel for Countway (MED)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.193/32"]
    description = "PDS-QA; legacy NRS port"
    from_port   = "9031"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9031"
  }

  ingress {
    cidr_blocks = ["10.138.21.212/32", "128.103.0.0/16"]
    description = "legacy NRS port"
    from_port   = "10031"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10031"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    description = "Central Admin"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    description = "Central Admin"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["140.247.0.0/16"]
    description = "FAS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.0.0/16"]
    description = "FAS"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "NRS QA"

  tags = {
    Name    = "NRS QA"
    product = "Naming Service - NRS"
  }

  tags_all = {
    Name    = "NRS QA"
    product = "Naming Service - NRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--OEM-0020-security-0020-group_sg-d79524a7" {
  description = "access to Oracle Enterprise Manager port"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.11.134.0/24"]
    from_port   = "5500"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5500"
  }

  name = "OEM security group"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--OSC-0020-Stats-0020-_sg-e4caee96" {
  description = "OSC Stats server"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.147.247/32"]
    description = "from bayes to clue"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "OSC Stats "

  tags = {
    product = "Office of Scholarly Communication - OSC"
  }

  tags_all = {
    product = "Office of Scholarly Communication - OSC"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--OSC_sg-fa5c3287" {
  description = "Dash/OSC"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["10.137.166.194/32"]
    description = "ssh from osc-prod1"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.170.226/32"]
    description = "ETDS-EB"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.32.14.26/32"]
    description = "etds-backend pos deprecated"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.32.69.16/32"]
    description = "unknown"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    description = "OIS VPN External"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    description = "OIS VPN External"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    description = "OIS VPN External"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    description = "OIS VPN External"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["140.247.137.0/24"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.137.0/24"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "OSC"

  tags = {
    product = "Office of Scholarly Communication - OSC"
  }

  tags_all = {
    product = "Office of Scholarly Communication - OSC"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Open-0020-to-0020-all-0020-on-0020-80-0020-and-0020-443_sg-887b86f4" {
  description = "open to all on 80 and 443"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    description = "k8 prod"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "Open to all on 80 and 443"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--PDS-0020-QA_sg-fb74d78d" {
  description = "PDS QA"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "9000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10199"
  }

  ingress {
    cidr_blocks = ["10.108.69.0/24"]
    description = "HKS"
    from_port   = "9000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10199"
  }

  ingress {
    cidr_blocks = ["128.103.188.105/32", "128.103.193.188/32", "128.103.252.155/32"]
    description = "HKS for testing"
    from_port   = "9000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10199"
  }

  name = "PDS QA"

  tags = {
    Name    = "PDS QA"
    product = "Page Delivery Service - PDS"
  }

  tags_all = {
    Name    = "PDS QA"
    product = "Page Delivery Service - PDS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--PDS-PROD_sg-490d9701" {
  description = "Prod PDS ACL"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "443"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "443"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "80"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "80"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "9005"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "9005"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "PDS-PROD"

  tags = {
    Name    = "PDS PROD"
    product = "Page Delivery Service - PDS"
  }

  tags_all = {
    Name    = "PDS PROD"
    product = "Page Delivery Service - PDS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--POLICY-ADMIN-PROD_sg-008db98a1eace9bdb" {
  description = "Policy admin prod"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "POLICY-ADMIN-PROD"

  tags = {
    product = "Access Management Service - AMS"
  }

  tags_all = {
    product = "Access Management Service - AMS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Postgres-0020-for-0020-PROD-0020-RKE_sg-086197165134c9a48" {
  description = "Allow PostGres from RKE/Rancher"

  ingress {
    cidr_blocks = ["10.137.167.10/32", "10.137.167.12/32", "10.137.167.15/32"]
    description = "RKE Prod Worker node"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.167.19/32", "10.137.167.23/32", "10.137.167.27/32"]
    description = "RKE Prod Worker Node"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.167.198/32", "10.137.167.199/32", "10.137.167.200/32"]
    description = "RKE Prod Server Node"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.40.4.15/32", "10.40.4.17/32", "10.40.4.26/32", "10.40.4.27/32"]
    description = "LDI"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name = "Postgres for PROD RKE"

  tags = {
    Name = "Postgres for PROD RKE"
  }

  tags_all = {
    Name = "Postgres for PROD RKE"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--QA-0020-SOLR-0020-cloud_sg-9bbbeed2" {
  description = "QA SOLR cloud"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.0.79.0/24"]
    description = "ois vpn test nextcloud 12/10/20"
    from_port   = "8899"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8899"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18282"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN (18282 only)"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18282"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18282"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Solr open to subnet"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18282"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "Jenkins Health Check. "
    from_port   = "10582"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10582"
  }

  ingress {
    cidr_blocks = ["128.103.147.138/32"]
    description = " Test"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "QA SOLR cloud"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--RDS-0020-access-0020-from-0020-Aleph-0020-hosts-0020-_sg-7340613b" {
  description = "connections from clutch \u0026 shift to RDS port 8403"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24"]
    description = "new leary"
    from_port   = "8403"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8403"
  }

  ingress {
    cidr_blocks = ["66.151.7.32/32"]
    description = "shift"
    from_port   = "8403"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8403"
  }

  ingress {
    cidr_blocks = ["66.151.7.49/32"]
    description = "clutch"
    from_port   = "8403"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8403"
  }

  name = "RDS access from Aleph hosts "

  tags = {
    product = "Alma"
  }

  tags_all = {
    product = "Alma"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Redis-0020-cache-0020-access-0020-from-0020-LDI-1-4_sg-039caa951b41d575f" {
  description = "Redis cache access from LDI-1-4"

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "ldi-3"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "ldi-4"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["128.103.147.138/32"]
    description = "ldi-1"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["128.103.147.139/32"]
    description = "ldi-2"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name = "Redis cache access from LDI-1-4"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Reporting-0020-upgrade_sg-00f2361dcff1f4522" {
  description = "delete this group after upgrade to cognos 11 is complete"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24"]
    description = "HLS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24"]
    description = "HLS VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24", "10.1.79.0/24"]
    from_port   = "389"
    protocol    = "tcp"
    self        = "false"
    to_port     = "389"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN TEMP"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN TEMP"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN TEMP"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN TEMP"
    from_port   = "9300"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9300"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    from_port   = "9300"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9300"
  }

  ingress {
    cidr_blocks = ["10.137.167.14/32"]
    description = "temporary access from kant"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "Reporting upgrade"

  tags = {
    product = "Alma"
  }

  tags_all = {
    product = "Alma"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Reporting_sg-da5002ab" {
  description = "Reporting"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.0.0.0/8"]
    from_port   = "8005"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8005"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "389"
    protocol    = "tcp"
    self        = "false"
    to_port     = "389"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24"]
    description = "HLS VPN"
    from_port   = "389"
    protocol    = "tcp"
    self        = "false"
    to_port     = "389"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24"]
    description = "HLS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24"]
    description = "HLS VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "#hul VPN tunnel"
    from_port   = "8004"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8004"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "Temp SSH access for Contractor"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.1.62.0/24", "10.11.245.0/24", "10.138.166.0/23", "10.138.168.0/24"]
    description = "Hart-Dev App/Oracle Reporting"
    from_port   = "8004"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8004"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "128.103.224.79/32", "128.103.24.79/32", "134.174.0.0/16", "4.34.96.180/30", "4.78.42.16/28"]
    from_port   = "9300"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9300"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.167.154/32", "128.103.224.79/32", "128.103.24.79/32"]
    from_port   = "8009"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8009"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "128.103.224.79/32", "128.103.24.79/32"]
    from_port   = "389"
    protocol    = "tcp"
    self        = "false"
    to_port     = "389"
  }

  ingress {
    cidr_blocks = ["10.11.134.0/24"]
    description = "for Subha Tripathy"
    from_port   = "8004"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8004"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    from_port   = "8004"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8004"
  }

  ingress {
    cidr_blocks = ["10.137.183.0/24"]
    description = "OAS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.183.0/24"]
    description = "OAS"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.105.151.0/24"]
    description = "90Mt. Auburn"
    from_port   = "8005"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8005"
  }

  ingress {
    cidr_blocks = ["134.174.0.0/16", "4.34.96.180/30", "4.78.42.16/28"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["134.174.0.0/16", "4.34.96.180/30", "4.78.42.16/28"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["216.151.39.0/24"]
    description = "Center for Hellenic Studies"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["216.151.39.0/24"]
    description = "Center for Hellenic Studies"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["92.223.159.150/32"]
    description = "Berenson / I Tatti"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["92.223.159.150/32"]
    description = "Berenson / I Tatti"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "Reporting"

  tags = {
    product = "Alma"
  }

  tags_all = {
    product = "Alma"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Required-0020-Puppet-0020-Ports_sg-0d4fb3c481b89c50f" {
  description = "Required Puppet Ports"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["54.152.96.57/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["54.152.96.57/32"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["54.152.96.57/32"]
    from_port   = "61613"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61613"
  }

  ingress {
    cidr_blocks = ["54.152.96.57/32"]
    from_port   = "8140"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8140"
  }

  name = "Required Puppet Ports"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--SDS-IDS-0020-pre-prod_sg-0de58a1bf1f8916aa" {
  description = "allows various people to access SDS and IDS on Docker before opening to the world"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.230.0/24"]
    description = "#artmuseums tunnel - internal IPs"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.11.82.0/24"]
    description = "#oasadmin tunnel - internal IPs"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.150.82/32"]
    description = "#oasadmin tunnel - external IP"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.230/32"]
    description = "#artmuseums tunnel - external IP"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "SDS-IDS pre-prod"

  tags = {
    product = "Streaming Delivery Service - SDS"
  }

  tags_all = {
    product = "Streaming Delivery Service - SDS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--SOLR-0020-8-0020-QA-0020-ELB_sg-0053152f37726ba17" {
  description = "allowed connections to the ELB for SOLR 8 QA "

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "CS2 ALBs"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32"]
    description = "Docker QA 5"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.166.140/32"]
    description = "Docker QA 4"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.166.154/32"]
    description = "Docker QA 3"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.166.176/32"]
    description = "Docker QA 1"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.167.224/32"]
    description = "Docker QA 2"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  name = "SOLR 8 QA ELB"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--SSH-0020-only_sg-ec65c391" {
  description = "launch-wizard-1 created 2016-11-10T07:16:09.182-05:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.79.124/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "SSH only"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--SSH-DEV-QA-PROD_sg-0c0ff67ba174286a9" {
  description = "Allows SSH for All LTS Dev, QA, Prod Subnets"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24", "10.137.171.0/24", "10.147.170.0/24"]
    description = "Prod"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "Dev"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.40.12.0/24"]
    description = "MGHPCC"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.40.4.0/24", "128.103.147.0/24"]
    description = "Markley"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "SSH-DEV-QA-PROD"

  tags = {
    Name    = "SSH-DEV-QA-PROD"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "SSH-DEV-QA-PROD"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Schlesinger-0020--0028-tucker-002E-lib-0029-_sg-071e97ed399e2c6df" {
  description = "Schlesinger (tucker.lib)"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.128.0/24"]
    description = "ssh from #RAD vpn. "
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "Schlesinger (tucker.lib)"

  tags = {
    product = "Catching the Wave"
  }

  tags_all = {
    product = "Catching the Wave"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Shared-0020-Shelf-0020-Harvester-0020-QA_sg-b99df9f2" {
  description = "sftp access to Harvester QA"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    description = "aspace-qa  subnet"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "aspace-dev  subnet"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "Shared Shelf Harvester QA"

  tags = {
    product = "Shared Shelf"
  }

  tags_all = {
    product = "Shared Shelf"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Solr-0020-ELB-0020-Health-0020-Check_sg-3985d249" {
  description = "Solr ELB Health Check"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.0.0/16"]
    description = "ELB IP range"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.2.17.64/26", "10.2.18.64/26", "10.34.11.0/24"]
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  name = "Solr ELB Health Check"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Solr-0020-QA_sg-03603ebe93417b411" {
  description = "QA Solr "

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Open to subnet"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "2888"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2889"
  }

  ingress {
    cidr_blocks = ["10.137.166.154/32"]
    description = "Docker QA 3"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.167.28/32", "10.137.167.51/32", "10.32.192.3/32", "10.40.4.71/32", "128.103.147.211/32", "128.103.147.230/32", "128.103.149.52/32", "128.103.229.101/32", "128.103.229.19/32", "192.168.35.60/32", "192.168.35.61/32"]
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.167.28/32", "10.137.167.51/32", "10.32.192.3/32", "10.40.4.71/32", "128.103.147.211/32", "128.103.147.230/32", "128.103.149.52/32", "128.103.229.101/32", "192.168.35.60/32", "192.168.35.61/32"]
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2181"
  }

  ingress {
    cidr_blocks = ["10.137.170.0/24"]
    description = "Avedon"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "For Chip"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.138.21.37/32"]
    description = "for Chip"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s LZP"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["128.103.147.151/32"]
    description = "Huxley"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["128.103.229.103/32"]
    description = "proust"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["128.103.229.103/32"]
    description = "proust"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2181"
  }

  ingress {
    cidr_blocks = ["128.103.229.34/32"]
    description = "flux"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["128.103.229.34/32"]
    description = "flux"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2181"
  }

  ingress {
    cidr_blocks = ["128.103.229.67/32"]
    description = "dixon"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["128.103.229.67/32"]
    description = "dixon"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2181"
  }

  ingress {
    cidr_blocks = ["128.103.229.92/32"]
    description = "Faulkner"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["128.103.229.92/32"]
    description = "Faulkner"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2181"
  }

  name = "Solr QA"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Turner-002F-Dash-0020-QA_sg-76e18b05" {
  description = "QA Dash"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32"]
    description = "docker qa 5"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.165.71/32", "10.137.167.48/32"]
    from_port   = "8004"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8004"
  }

  ingress {
    cidr_blocks = ["10.137.165.71/32", "128.103.147.247/32"]
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.137.166.140/32"]
    description = "docker qa 4"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.166.154/32"]
    description = "docker qa 3"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.166.176/32"]
    description = "docker qa 1"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.167.216/32"]
    description = "clue.lib"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.216/32"]
    description = "clue.lib.harvard.edu"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.167.224/32"]
    description = "docker qa 2"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.109/32"]
    description = "docker dev 2"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.109/32"]
    description = "docker dev 2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.170/32"]
    description = "docker dev 4"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.170/32"]
    description = "docker dev 4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.204/32"]
    description = "docker dev 1"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.204/32"]
    description = "docker dev 1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.43/32"]
    description = "docker dev 3"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.43/32"]
    description = "docker dev 3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.90/32"]
    description = "docker dev 5"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.90/32"]
    description = "docker dev 5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.147.237/32", "128.103.147.247/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["206.253.207.235/32", "65.112.7.235/32"]
    description = "Open to cloud shield"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["206.253.207.235/32", "65.112.7.235/32"]
    description = "Open to cloud shield"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "Turner/Dash QA"

  tags = {
    product = "DASH"
  }

  tags_all = {
    product = "DASH"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Turner-002F-Dash_sg-50a3522c" {
  description = "Turner/Dash replacement "

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "443"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "443"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "80"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "80"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "Access from the HUL VPN INC04986610"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.165.102/32"]
    description = "docker prod 2"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.165.71/32", "10.137.167.48/32"]
    from_port   = "8004"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8004"
  }

  ingress {
    cidr_blocks = ["10.137.165.71/32", "128.103.147.247/32"]
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.137.165.9/32"]
    description = "docker prod 5"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.166.36/32"]
    description = "docker prod 4"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.166.92/32"]
    description = "docker prod 1"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    description = "Clue subnet access to RDS"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    description = "From Clue.lib subnet"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.167.17/32"]
    description = "docker prod 6"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.167.213/32"]
    description = "docker prod 3"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s LZP"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s LZP"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "Turner/Dash"

  tags = {
    product = "DASH"
  }

  tags_all = {
    product = "DASH"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--WMI-002F-RDC-0020-from-0020-LogicMontor-0020-to-0020-Windows-0020-Hosts_sg-0f70a2d50acb9546a" {
  description = "WMI/RDC from LogicMontor to Windows Hosts"

  egress {
    cidr_blocks = ["10.137.242.0/26", "10.34.64.128/26", "10.34.64.64/26"]
    description = "ephemeral ports for logicmonitor wmi"
    from_port   = "32768"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "SSH from #ois VPN tunnel"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "SSH from ansible"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/26", "10.34.64.128/26", "10.34.64.64/26"]
    description = "LogicMonitor Ping"
    from_port   = "-1"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/26", "10.34.64.128/26", "10.34.64.64/26"]
    description = "LogicMonitor RDC 135"
    from_port   = "135"
    protocol    = "tcp"
    self        = "false"
    to_port     = "135"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/26", "10.34.64.128/26", "10.34.64.64/26"]
    description = "LogicMonitor RDC 443"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/26", "10.34.64.128/26", "10.34.64.64/26"]
    description = "LogicMonitor RDC dynamic ports"
    from_port   = "49152"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/26", "10.34.64.128/26", "10.34.64.64/26"]
    description = "LogicMonitor SNMP"
    from_port   = "161"
    protocol    = "tcp"
    self        = "false"
    to_port     = "161"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/26"]
    description = "LogicMonitor Ping"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "0"
  }

  name = "WMI/RDC from LogicMontor to Windows Hosts"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Web-0020-access-0020-for-0020-ARTstor_sg-962b0dde" {
  description = "allow ARTstor IPs to connect to ports 80 \u0026 443"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["128.103.193.245/32"]
    description = "HKS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.193.245/32"]
    description = "HKS"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.193.245/32"]
    description = "HKS"
    from_port   = "9001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9001"
  }

  ingress {
    cidr_blocks = ["204.228.64.0/24"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["204.228.64.0/24"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["204.228.64.0/24"]
    from_port   = "9001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9001"
  }

  name = "Web access for ARTstor"

  tags = {
    product = "Harvard Library Viewer - MIRADOR"
  }

  tags_all = {
    product = "Harvard Library Viewer - MIRADOR"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Whtehat-0020-Security-0020-Scanning-0020-via-0020-HUIT_sg-0626807c5b09e21be" {
  description = "Whtehat Security Scanning via HUIT"

  ingress {
    cidr_blocks = ["162.223.124.0/27", "162.244.4.2/32", "162.244.4.3/32", "162.244.4.5/32", "162.244.4.6/32", "162.244.5.2/32", "162.244.5.3/32", "162.244.5.5/32", "162.244.5.6/32", "38.122.74.18/32", "50.207.94.58/32", "50.207.94.59/32", "52.204.38.40/32", "63.128.163.0/27", "64.244.165.6/32"]
    description = "WhiteHat IP Address"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "Whtehat Security Scanning via HUIT"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--Wordshack-0020-QA-0020--0026--0020-prod_sg-09f73741" {
  description = "Tomcat ports 9038 \u0026 9338"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "443"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "443"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "80"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "80"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "9038"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "9038"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "9138"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "9138"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "9338"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "9338"
  }

  ingress {
    cidr_blocks = ["10.137.165.244/32"]
    description = "ssh from shack for mv2prod"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.165.48/32"]
    description = "ssh from cabana (prod)"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.166.160/32"]
    description = "ssh from cabin (prod)"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "Wordshack QA \u0026 prod"

  tags = {
    Name    = "Wordshack QA \u0026 Prod"
    product = "DRS Wordshack"
  }

  tags_all = {
    Name    = "Wordshack QA \u0026 Prod"
    product = "DRS Wordshack"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--alb_console_sg_prod_sg-0cd7bd76a760a996c" {
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

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Tower access for kube commands"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "alb_console_sg_prod"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--alb_console_sg_qa_sg-0579b23fdcff2b4da" {
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
    description = "OIS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "alb_console_sg_qa"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--alb_deployment_sg_prod_sg-058aefd1e36bb9a43" {
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

  name   = "alb_deployment_sg_prod"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--alb_deployment_sg_qa_sg-0b421612a15b21d84" {
  description = "Allow incoming traffic to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    description = "OIS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "alb_deployment_sg_qa"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--alb_logging_prod_sg-0bc33b8e64ad37c41" {
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

  name   = "alb_logging_prod"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--alb_logging_qa_sg-0d0d91f3715500a31" {
  description = "Allow incoming traffic to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32"]
    description = "OIS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.24.79/32"]
    description = "OS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "alb_logging_qa"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--allow-0020-Postgres-0020-from-0020-Docker-0020-QA_sg-0922739b47e197835" {
  description = "allow Docker QA hosts to connect to Postgresql port"

  ingress {
    cidr_blocks = ["10.137.165.33/32", "10.137.166.140/32", "10.137.166.154/32", "10.137.166.176/32", "10.137.167.224/32"]
    description = "PostgreSQL port open to QA Docker hosts"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.166.22/32", "10.137.166.26/32", "10.137.166.27/32", "10.137.167.20/32", "10.137.167.22/32", "10.137.167.24/32", "10.137.167.28/32", "10.137.167.29/32"]
    description = "k8s qa"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.167.30/32"]
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.22.90/32"]
    description = "k8 dev agent for testing"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.143.17.128/25"]
    description = "K8s lzprod"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s lzp"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.40.4.15/32"]
    description = "LDI-7"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.40.4.17/32"]
    description = "LDI-8"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "LDI-3"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "LDI-4"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["128.103.147.138/32"]
    description = "ldi-1 for testing"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name = "allow Postgres from Docker QA"

  tags = {
    product = "HD Inventory - Progress"
  }

  tags_all = {
    product = "HD Inventory - Progress"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--allow-0020-Postgres-0020-from-0020-Docker-0020-prod_sg-04c8203b97e188078" {
  description = "allows Docker prod hosts to connect to Postgresql port"

  ingress {
    cidr_blocks = ["10.137.165.102/32", "10.137.165.9/32", "10.137.166.176/32", "10.137.166.36/32", "10.137.166.92/32", "10.137.167.17/32", "10.137.167.213/32"]
    description = "PostgreSQL port open to prod Docker host"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.167.10/32", "10.137.167.12/32", "10.137.167.15/32"]
    description = "RKE Prod Worker node"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.167.19/32", "10.137.167.23/32", "10.137.167.27/32"]
    description = "RKE Prod Worker Node"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.167.198/32", "10.137.167.199/32", "10.137.167.200/32"]
    description = "RKE Prod Server Node"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.143.17.128/25"]
    description = "K8s lzprod"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s lzp"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.40.4.15/32", "10.40.4.17/32", "10.40.4.26/32", "10.40.4.27/32"]
    description = "LDI"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["128.103.147.138/32"]
    description = "ldi-1 for testing"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name = "allow Postgres from Docker prod"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--allow-0020-Redis-0020-from-0020-Docker-0020-prod_sg-010af82cdc72ffd65" {
  description = "allows Docker prod hosts to connect to Redis cache port"

  ingress {
    cidr_blocks = ["10.137.165.102/32", "10.137.165.9/32", "10.137.166.36/32", "10.137.166.92/32", "10.137.167.17/32", "10.137.167.213/32"]
    description = "Redis cache port open to prod Docker host"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.40.4.0/26"]
    description = "On Campus Level 4 Network Docker"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name = "allow Redis from Docker prod"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--allow-0020-mysql-0020-from-0020-Docker-0020-QA_sg-0327baa8d761e6b9f" {
  description = "allows Docker QA hosts to connect to a mysql instance"

  ingress {
    cidr_blocks = ["10.137.165.33/32", "10.137.166.140/32", "10.137.166.154/32", "10.137.166.176/32", "10.137.167.224/32"]
    description = "mysql port open to QA Docker hosts"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "allow mysql from Docker QA"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--allow_vpn_ingress_to_rke-361062_sg-0fd0004ab66993916" {
  description = "Allow inbound traffic from vpn to rke instances"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Any source that needs to be able to use the Rancher UI or API"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Load balancer/proxy that does external SSL termination"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "NodePort port range"
    from_port   = "10250"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10250"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "NodePort port range"
    from_port   = "30000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "32767"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "NodePort port range"
    from_port   = "30000"
    protocol    = "udp"
    self        = "false"
    to_port     = "32767"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "RKE2 server and agent nodes"
    from_port   = "8472"
    protocol    = "udp"
    self        = "false"
    to_port     = "8472"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "RKE2 server needs port 6443 for accessible by other nodes in the cluster"
    from_port   = "6443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "RKE2 server needs port 9345 for accessible by other nodes in the cluster"
    from_port   = "9345"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9345"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "RKE2 server needs port 9796 for rancher monitoring scraping"
    from_port   = "9796"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9796"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Req for K8S"
    from_port   = "10254"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10254"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Req for K8S"
    from_port   = "2376"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2376"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Req for K8S"
    from_port   = "9091"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9091"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
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
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "ArgoCD port to ALB"
    from_port   = "30446"
    protocol    = "tcp"
    self        = "false"
    to_port     = "30446"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "HTTPS access from ALB to nodes"
    from_port   = "32001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "32004"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "Load Balancer access to the Rancher UI or API"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "NodePort port range"
    from_port   = "31380"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31380"
  }

  ingress {
    cidr_blocks = ["10.137.162.0/25", "10.137.162.128/25", "10.137.163.0/25"]
    description = "Prvt ALB access"
    from_port   = "32001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "32004"
  }

  ingress {
    cidr_blocks = ["10.137.162.0/25", "10.137.162.128/25", "10.137.163.0/25"]
    description = "rancher access"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24", "10.137.167.0/24"]
    description = "DNS"
    from_port   = "53"
    protocol    = "tcp"
    self        = "false"
    to_port     = "53"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24", "10.137.167.0/24"]
    description = "DNS"
    from_port   = "53"
    protocol    = "udp"
    self        = "false"
    to_port     = "53"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    description = "DNS Internal 1"
    from_port   = "6783"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6783"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    description = "DNS Internal 1"
    from_port   = "6783"
    protocol    = "udp"
    self        = "false"
    to_port     = "6783"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    description = "DNS Internal 2"
    from_port   = "6784"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6784"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    description = "DNS Internal 2"
    from_port   = "6784"
    protocol    = "udp"
    self        = "false"
    to_port     = "6784"
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
    description = "Logic Monitor Ping Check"
    from_port   = "-1"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/26", "10.34.64.128/26", "10.34.64.64/26"]
    description = "Logic Monitor SNMP"
    from_port   = "161"
    protocol    = "udp"
    self        = "false"
    to_port     = "161"
  }

  name = "allow_vpn_ingress_to_rke-361062"

  tags = {
    Name = "Worker Subnets"
  }

  tags_all = {
    Name = "Worker Subnets"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--allow_vpn_ingress_to_rke-975018_sg-0727e4424515ee380" {
  description = "Allow inbound traffic from vpn to rke instances"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Any source that needs to be able to use the Rancher UI or API"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Load balancer/proxy that does external SSL termination"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "NodePort port range"
    from_port   = "10250"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10250"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "NodePort port range"
    from_port   = "30000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "32767"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "NodePort port range"
    from_port   = "30000"
    protocol    = "udp"
    self        = "false"
    to_port     = "32767"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "RKE2 server and agent nodes"
    from_port   = "8472"
    protocol    = "udp"
    self        = "false"
    to_port     = "8472"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "RKE2 server needs port 6443 for accessible by other nodes in the cluster"
    from_port   = "6443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "RKE2 server needs port 9345 for accessible by other nodes in the cluster"
    from_port   = "9345"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9345"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "RKE2 server needs port 9796 for rancher monitoring scraping"
    from_port   = "9796"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9796"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Req for K8S"
    from_port   = "10254"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10254"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Req for K8S"
    from_port   = "2376"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2376"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Req for K8S"
    from_port   = "9091"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9091"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.166.0/24", "10.137.167.0/24"]
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
    cidr_blocks = ["10.137.160.0/24"]
    description = "Pub ALb Sunmet access to Node"
    from_port   = "32001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "32001"
  }

  ingress {
    cidr_blocks = ["10.137.161.0/24", "10.137.173.0/24"]
    description = "ArgoCD port to ALB"
    from_port   = "30446"
    protocol    = "tcp"
    self        = "false"
    to_port     = "30446"
  }

  ingress {
    cidr_blocks = ["10.137.161.0/24", "10.137.173.0/24"]
    description = "HTTPS access from ALB to nodes"
    from_port   = "32001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "32004"
  }

  ingress {
    cidr_blocks = ["10.137.161.0/24", "10.137.173.0/24"]
    description = "Load Balancer access to the Rancher UI or API"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.161.0/24", "10.137.173.0/24"]
    description = "NodePort port range"
    from_port   = "31380"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31380"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24", "10.137.167.0/24"]
    description = "DNS Internal1"
    from_port   = "6783"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6783"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24", "10.137.167.0/24"]
    description = "DNS Internal1"
    from_port   = "6783"
    protocol    = "udp"
    self        = "false"
    to_port     = "6783"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24", "10.137.167.0/24"]
    description = "DNS Internal2"
    from_port   = "6784"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6784"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24", "10.137.167.0/24"]
    description = "DNS Internal2"
    from_port   = "6784"
    protocol    = "udp"
    self        = "false"
    to_port     = "6784"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24"]
    description = "DNS"
    from_port   = "53"
    protocol    = "tcp"
    self        = "false"
    to_port     = "53"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24"]
    description = "DNS"
    from_port   = "53"
    protocol    = "udp"
    self        = "false"
    to_port     = "53"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    description = "DNS Worker"
    from_port   = "53"
    protocol    = "tcp"
    self        = "false"
    to_port     = "53"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    description = "DNS Workers"
    from_port   = "53"
    protocol    = "udp"
    self        = "false"
    to_port     = "53"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Access from Ansible Tower for patching"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "allow_vpn_ingress_to_rke-975018"

  tags = {
    Name = "Worker Subnets"
  }

  tags_all = {
    Name = "Worker Subnets"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--artifactory_sg-01e2321ff2cfff7f3" {
  description = "LTS Prod Artifactory"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "DB access from prod subnets"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "artifactory"

  tags = {
    Name    = "Artifactory DB SG"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "Artifactory DB SG"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--aspace-api-qa_sg-0d84614d9f7563470" {
  description = "Harvard-internal connections to the QA Aspace API"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.116.0/24"]
    description = "Houghton VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.128.0/24"]
    description = "Schlesinger #rad VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.230.0/24"]
    description = "Art Museum VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24"]
    description = "Law School VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.61.0/24"]
    description = "Divinity VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.67.0/24"]
    description = "GSD VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.7.0/24"]
    description = "HKSITADMIN VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.84.0/24"]
    description = "GSE VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.11.111.0/24"]
    description = "HUIT ITS Admin VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.116.176.0/21"]
    description = "Countway VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.144.12.0/22", "34.120.141.103/32", "34.85.214.111/32"]
    description = "apigee-x-qa  INC05362131"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.227.130.0/24"]
    description = "BIz school tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    description = "Harvard central campus"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.128/32", "128.103.24.128/32"]
    description = "RAD Tunnel external"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["134.174.0.0/16"]
    description = "Countway Medical area"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.0.0/16"]
    description = "FAS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["199.94.0.0/19", "199.94.32.0/20", "199.94.48.0/24"]
    description = "Biz School"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "aspace-api-qa"

  tags = {
    product = "ArchivesSpace"
  }

  tags_all = {
    product = "ArchivesSpace"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--aspace-corona-n-lime_sg-0700d4be31b6c74f6" {
  description = "Temp security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.0.0/16"]
    description = "most Harvard VPNs"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.0.0/16"]
    description = "most Harvard VPNs"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8090"
  }

  ingress {
    cidr_blocks = ["10.1.0.0/16"]
    description = "most Harvard VPNs"
    from_port   = "8443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8443"
  }

  name = "aspace-corona-n-lime"

  tags = {
    product = "ArchivesSpace"
  }

  tags_all = {
    product = "ArchivesSpace"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--aspace-prod-rds_sg-0dc375a9f8adf0df0" {
  description = "aspace-prod-rds"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN Tunnel"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.165.102/32"]
    description = "ltsds-cloud-prod-2"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.165.9/32"]
    description = "ltsds-cloud-prod-5"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.166.36/32"]
    description = "ltsds-cloud-prod-4"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.166.92/32"]
    description = "ltsds-cloud-prod-1"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    description = "K8s Prod"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.167.17/32"]
    description = "ltsds-cloud-prod-6"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.167.213/32"]
    description = "ltsds-cloud-prod-3"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "aspace-prod-rds"

  tags = {
    product = "ArchivesSpace"
  }

  tags_all = {
    product = "ArchivesSpace"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--aspace-pui-qa_sg-06a05a784dfed2489" {
  description = "Harvard-internal connections to the QA site for the Aspace public user interface"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.116.0/24"]
    description = "Houghton VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.128.0/24"]
    description = "Schlesinger #rad VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.230.0/24"]
    description = "Art Museum VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24"]
    description = "Law School VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.61.0/24"]
    description = "Divinity VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.67.0/24"]
    description = "GSD VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.7.0/24"]
    description = "HKSITADMIN VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.84.0/24"]
    description = "GSE VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.11.111.0/24"]
    description = "HUIT ITS Admin VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.116.176.0/21"]
    description = "Countway VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.144.12.0/22"]
    description = "apigee-x-preprod INC05404871"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    description = "Harvard central campus"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["134.174.0.0/16"]
    description = "Countway Medical area"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.0.0/16"]
    description = "FAS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["199.94.0.0/19", "199.94.32.0/20", "199.94.48.0/24"]
    description = "Biz School"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "aspace-pui-qa"

  tags = {
    product = "ArchivesSpace"
  }

  tags_all = {
    product = "ArchivesSpace"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--aspace-pui-sb_sg-0735784dca772f716" {
  description = "Harvard-internal connections to the sandbox site for the Aspace public user interface"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.116.0/24"]
    description = "Houghton VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.128.0/24"]
    description = "Schlesinger #rad VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.230.0/24"]
    description = "Art Museum VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24"]
    description = "Law School VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.61.0/24"]
    description = "Divinity VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.67.0/24"]
    description = "GSD VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.7.0/24"]
    description = "HKSITADMIN VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.84.0/24"]
    description = "GSE VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.11.111.0/24"]
    description = "HUIT ITS Admin VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.116.176.0/21"]
    description = "Countway VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    description = "Harvard central campus"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["134.174.0.0/16"]
    description = "Countway Medical area"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.0.0/16"]
    description = "FAS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["199.94.0.0/19", "199.94.32.0/20", "199.94.48.0/24"]
    description = "Biz School"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "aspace-pui-sb"

  tags = {
    product = "ArchivesSpace"
  }

  tags_all = {
    product = "ArchivesSpace"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--aspace-qa-rds_sg-05995ec73902ddf93" {
  description = "Allows access to MySQL RDS"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN TUNNEL"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32"]
    description = "ltsds-cloud-qa-5.lib.harvard.edu"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.166.131/32"]
    description = "qa-3"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.166.140/32"]
    description = "ltsds-cloud-qa-4.lib.harvard.edu"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.166.154/32"]
    description = "ltsds-cloud-qa-3.lib.harvard.edu"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.166.170/32"]
    description = "qa-5"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.166.176/32"]
    description = "ltsds-cloud-qa-1.lib.harvard.edu"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.166.22/32", "10.137.166.26/32", "10.137.166.27/32", "10.137.167.20/32", "10.137.167.22/32", "10.137.167.24/32", "10.137.167.28/32", "10.137.167.29/32", "10.137.167.30/32"]
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.166.37/32"]
    description = "qa-1"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.167.224/32"]
    description = "ltsds-cloud-qa-2.lib.harvard.edu"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.167.89/32"]
    description = "qa-4"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.171.53/32"]
    description = "qa-2"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "aspace-qa-rds"

  tags = {
    Name    = "aspace-qa-rds"
    product = "ArchivesSpace"
  }

  tags_all = {
    Name    = "aspace-qa-rds"
    product = "ArchivesSpace"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--aspace-rc-2_sg-0317e090254f0a3a2" {
  description = "Second aspace sg"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.128.0/24"]
    description = "RAD"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24", "10.15.200.0/21"]
    description = "Law School"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24", "10.15.200.0/21"]
    description = "Law School"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.61.0/24", "128.103.224.61/32", "128.103.24.61/32"]
    description = "DIV"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.61.0/24"]
    description = "DIV"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8089"
  }

  ingress {
    cidr_blocks = ["10.1.84.0/24", "128.103.224.0/24"]
    description = "GSE"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.84.0/24", "128.103.224.0/24"]
    description = "GSE"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8090"
  }

  ingress {
    cidr_blocks = ["10.1.91.0/24"]
    description = "#arn (Arnold Arboretum)"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.82/32"]
    description = "harvester-prod"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.15.236.0/24"]
    description = "GSE"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8089"
  }

  ingress {
    cidr_blocks = ["128.103.224.128/32", "128.103.24.128/32"]
    description = "RAD Public IP"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.145/32", "128.103.24.145/32"]
    description = "Peabody"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.166/32", "128.103.24.166/32"]
    description = "HCL"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.230/32"]
    description = "Art Museum VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.29/32", "128.103.24.29/32"]
    description = "Law School"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.84/32", "128.103.24.84/32"]
    description = "Guttman"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.24.166/32"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8089"
  }

  name = "aspace-rc-2"

  tags = {
    product = "ArchivesSpace"
  }

  tags_all = {
    product = "ArchivesSpace"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--aspace-rc_sg-b39296c5" {
  description = "aspace-rc"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.128.0/24", "128.103.24.128/32"]
    description = "RAD VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.230.0/24"]
    description = "art museum vpn"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.230.0/24"]
    description = "art museum vpn"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24"]
    description = "HLS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24"]
    description = "HLS VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN Tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN Tunnel"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.67.0/24"]
    description = "gsd vpn"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.67.0/24"]
    description = "gsd vpn"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.7.0/24"]
    description = "HKSITADMIN tunnel; INC03466674 "
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.11.111.0/24"]
    description = "HUIT ITS Admin"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.11.111.0/24"]
    description = "HUIT ITS Admin"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.167.82/32"]
    description = "harvester-prod"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.82/32"]
    description = "harvester-prod"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.24.230/32"]
    description = "Art Museum VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.24.67/32"]
    description = "GSD vpn"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["131.142.144.108/32", "131.142.144.123/32", "131.142.144.36/32", "131.142.157.8/32", "131.142.33.100/32"]
    description = "Smithsonian/Astrophysics"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["134.174.0.0/16"]
    description = "Countway"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["134.174.0.0/16"]
    description = "Countway"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["140.247.0.0/16"]
    description = "FAS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.0.0/16"]
    description = "FAS"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["199.94.0.0/19", "199.94.32.0/20", "199.94.48.0/24"]
    description = "Biz School"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["199.94.0.0/19", "199.94.32.0/20", "199.94.48.0/24"]
    description = "Biz School"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["3.236.169.128/27"]
    description = "harvester-prod using public AWS IP range as ALB is Internet facing"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["4.34.96.180/30", "4.78.42.0/24"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["4.34.96.180/30", "4.78.42.16/28"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["92.223.159.150/32"]
    description = "itatti"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["92.223.159.150/32"]
    description = "itatti"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "aspace-rc"

  tags = {
    product = "ArchivesSpace"
  }

  tags_all = {
    product = "ArchivesSpace"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--aspace-staff-qa_sg-062fa7bb177142525" {
  description = "Harvard-internal connections to QA site for Aspace staff "

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.116.0/24"]
    description = "Houghton VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.128.0/24"]
    description = "Schlesinger #rad VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.230.0/24"]
    description = "Art Museum VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24"]
    description = "Law School VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.61.0/24"]
    description = "Divinity VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.67.0/24"]
    description = "GSD VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.7.0/24"]
    description = "HKSITADMIN VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.84.0/24"]
    description = "GSE VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.91.0/24"]
    description = "ARN VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.11.111.0/24"]
    description = "HUIT ITS Admin VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.116.176.0/21"]
    description = "Countway VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    description = "Harvard central campus"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.145/32", "128.103.24.145/32"]
    description = "Peabody"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["134.174.0.0/16"]
    description = "Countway Medical area"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.0.0/16"]
    description = "FAS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["199.94.0.0/19", "199.94.32.0/20", "199.94.48.0/24"]
    description = "Biz School"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "aspace-staff-qa"

  tags = {
    product = "ArchivesSpace"
  }

  tags_all = {
    product = "ArchivesSpace"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--aspace-staff-sb_sg-03f1d758d3a95ff6f" {
  description = "Harvard-internal connections to the sandbox site for Aspace staff"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.116.0/24"]
    description = "Houghton VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.128.0/24"]
    description = "Schlesinger #rad VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.230.0/24"]
    description = "Art Museum VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24"]
    description = "Law School VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.61.0/24"]
    description = "Divinity VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.67.0/24"]
    description = "GSD VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.7.0/24"]
    description = "HKSITADMIN VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.84.0/24"]
    description = "GSE VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.11.111.0/24"]
    description = "HUIT ITS Admin VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.116.176.0/21"]
    description = "Countway VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    description = "Harvard central campus"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["134.174.0.0/16"]
    description = "Countway Medical area"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.0.0/16"]
    description = "FAS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["199.94.0.0/19", "199.94.32.0/20", "199.94.48.0/24"]
    description = "Biz School"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "aspace-staff-sb"

  tags = {
    product = "ArchivesSpace"
  }

  tags_all = {
    product = "ArchivesSpace"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--bluto-lite_sg-62d4e11d" {
  description = "Alma/Ex Libris"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.0.0.0/8"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24"]
    description = "Load balancer subnet"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24", "10.2.17.64/26", "10.2.18.64/26", "10.34.11.0/24", "216.147.212.128/27", "216.147.212.20/30", "216.147.212.25/32", "216.147.212.64/27", "64.74.237.221/32", "64.74.237.229/32", "64.74.237.232/32", "64.74.237.233/32", "66.151.14.129/32", "66.151.7.128/26", "66.151.7.192/28", "66.151.7.224/30", "66.151.7.236/32", "66.151.7.32/32", "66.151.7.40/29", "74.217.12.128/27"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32"]
    description = "External OIS VPN. "
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.24.79/32"]
    description = "Extenal OIS alt VPN. "
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["181.229.1.65/32", "200.0.233.130/32"]
    description = "hulgar"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "bluto-lite"

  tags = {
    Name    = "Bluto-lite"
    product = "Alma"
  }

  tags_all = {
    Name    = "Bluto-lite"
    product = "Alma"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--booklabeling-prod_sg-0ff1db7f15240e928" {
  description = "Booklabeling Prod"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "#hul VPN tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "#hul VPN tunnel"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "#ois VPN tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "#ois VPN tunnel"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    description = "Harvard Central Admin"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    description = "Harvard Central Admin"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["140.247.0.0/16"]
    description = "Harvard FAS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.0.0/16"]
    description = "Harvard FAS"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "booklabeling-prod"

  tags = {
    product = "Alma"
  }

  tags_all = {
    product = "Alma"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--cluster-console-internal-prod_sg-02fffe695921a9388" {
  description = "internal cluster console prod access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Tower access for patching. "
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "cluster-console-internal-prod"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--cognos-corona-n-lime_sg-052bc3119fc575f18" {
  description = "Temp cognos access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.0.0/16"]
    description = "most VPN tunnels"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "cognos-corona-n-lime"

  tags = {
    product = "Alma"
  }

  tags_all = {
    product = "Alma"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--dash-qa_sg-063b8998c99eec363" {
  description = "load-balancer-wizard-1 created on 2019-09-17T10:19:29.021-04:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "hul VPN tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "hul VPN tunnel"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "ois VPN tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "ois VPN tunnel"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32"]
    description = "Docker qa5 access to DASH healthcheck"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.140/32"]
    description = "Docker qa4 access to DASH healthcheck"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.154/32"]
    description = "Docker qa3 access to DASH healthcheck"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.224/32"]
    description = "Docker qa2 access to DASH healthcheck"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.160/32", "10.138.21.161/32", "10.138.21.162/32", "10.138.22.100/32", "10.138.22.101/32", "10.138.22.102/32", "10.138.22.90/32", "10.138.22.91/32", "10.138.22.93/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.160/32", "10.138.21.161/32", "10.138.21.162/32", "10.138.22.100/32", "10.138.22.101/32", "10.138.22.102/32", "10.138.22.90/32", "10.138.22.91/32", "10.138.22.93/32"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.143.17.140/32", "10.143.17.141/32", "10.143.17.142/32", "10.143.17.150/32", "10.143.17.151/32", "10.143.17.152/32"]
    description = "localzone k8"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.143.17.140/32", "10.143.17.141/32", "10.143.17.142/32", "10.143.17.150/32", "10.143.17.151/32", "10.143.17.152/32"]
    description = "localzone k8"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "k8s lzp"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.143.25.140/32", "10.143.25.141/32", "10.143.25.142/32", "10.143.25.150/32", "10.143.25.151/32", "10.143.25.152/32"]
    description = "K8S LZ Prod access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.224.59/32"]
    description = "HUL VPN Pub IP"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.24.59/32"]
    description = "HUL VPN alt Pub IP"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["3.236.169.0/24"]
    description = "qa VPC public addresses"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["3.236.169.0/24"]
    description = "qa VPC public addresses"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["3.236.67.96/27"]
    description = "Dev VPC access"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "dash-qa"

  tags = {
    Name    = "dash-qa"
    product = "DASH"
  }

  tags_all = {
    Name    = "dash-qa"
    product = "DASH"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--dashv7-qa_sg-070da68de7cea45e7" {
  description = "dashv7-qa"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32"]
    description = "ltsds-cloud-qa-5"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.166.131/32"]
    description = "qa-3"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.166.140/32"]
    description = "ltsds-cloud-qa-4"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.166.154/32"]
    description = "ltsds-cloud-qa-3"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.166.170/32"]
    description = "qa-5"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.166.176/32"]
    description = "ltsds-cloud-qa-1"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.166.37/32"]
    description = "qa-1"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.167.224/32"]
    description = "ltsds-cloud-qa-2"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.167.89/32"]
    description = "qa-4"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.171.53/32"]
    description = "qa-2"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name = "dashv7-qa"

  tags = {
    Name    = "dashv7-qa"
    name    = "dashv7-qa"
    product = "DASH"
  }

  tags_all = {
    Name    = "dashv7-qa"
    name    = "dashv7-qa"
    product = "DASH"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--dcp-prod_sg-2bd4a060" {
  description = "production DCP"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "3000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3000"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "local non level 4"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.167.7/32"]
    description = "ssh from QA"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "dcp-prod"

  tags = {
    product = "Harvard Digital Collections Platform - DCP"
  }

  tags_all = {
    product = "Harvard Digital Collections Platform - DCP"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--dcp-qa_sg-bb8658f2" {
  description = "dcp-qa"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24", "10.1.79.0/24"]
    description = "HUL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "3000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3000"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.91.0/24"]
    description = "Arnold Arboretum VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.91.0/24"]
    description = "Arnold Arboretum VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "local non level 4"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.204/32"]
    description = "Access from ltsds-cloud-dev-1"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.224.166/32", "128.103.24.166/32"]
    description = "external facing HCL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.166/32", "128.103.24.166/32"]
    description = "external facing HCL VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.224.59/32"]
    description = "External Facing #hul VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.59/32"]
    description = "External Facing #hul VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.224.91/32"]
    description = "External Facing Arnold Arboretum VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.91/32"]
    description = "External Facing Arnold Arboretum VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "dcp-qa"

  tags = {
    product = "Harvard Digital Collections Platform - DCP"
  }

  tags_all = {
    product = "Harvard Digital Collections Platform - DCP"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--default_sg-8a042bf0" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.0.0.0/8"]
    description = "Allow all Internal traffic"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s lzp"
    from_port   = "2049"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2049"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name = "default"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--dev-docker-to-drs2db_sg-047556c0b2f83556a" {
  description = "Temp access for DRS migration dashboard work"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.109/32"]
    description = "Docker Dev 2"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.138.21.170/32"]
    description = "Docker Dev 4"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.138.21.204/32"]
    description = "Docker Dev 1"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.138.21.43/32"]
    description = "Docker Dev 3"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.138.21.90/32"]
    description = "Docker Dev 5"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  name = "dev-docker-to-drs2db"

  tags = {
    Name    = "DRS Dashboard Work"
    product = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    Name    = "DRS Dashboard Work"
    product = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--digitalcollections_sg-030db9b03e2fa359c" {
  description = "Digital Collections"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "digitalcollections"

  tags = {
    product = "Harvard Digital Collections Platform - DCP"
  }

  tags_all = {
    product = "Harvard Digital Collections Platform - DCP"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--docker-prod_sg-0d418181313b31cd2" {
  description = "docker-prod"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "Docker UCP (Management)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24", "10.137.168.0/24", "10.137.169.0/24", "10.137.170.0/24", "10.137.171.0/24"]
    from_port   = "18080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18080"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24", "10.137.168.0/24", "10.137.169.0/24", "10.137.170.0/24", "10.137.171.0/24"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    from_port   = "10250"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10250"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    from_port   = "12000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13000"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    from_port   = "179"
    protocol    = "tcp"
    self        = "false"
    to_port     = "179"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    from_port   = "2376"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2377"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    from_port   = "4789"
    protocol    = "udp"
    self        = "false"
    to_port     = "4789"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    from_port   = "6443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6444"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    from_port   = "7946"
    protocol    = "tcp"
    self        = "false"
    to_port     = "7946"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    from_port   = "7946"
    protocol    = "udp"
    self        = "false"
    to_port     = "7946"
  }

  ingress {
    cidr_blocks = ["10.137.171.153/32", "10.137.171.164/32", "10.137.171.176/32", "10.137.171.186/32"]
    from_port   = "2377"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2377"
  }

  name = "docker-prod"

  tags = {
    Name    = "docker-prod"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "docker-prod"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--doyle-cloud_sg-0d54bbff07be1e8dd" {
  description = "access to doyle cloud"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.166.176/32"]
    description = "docker qa 1"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.147.145/32"]
    description = "doyle"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "doyle-cloud"

  tags = {
    Name = "doyle-cloud"
  }

  tags_all = {
    Name = "doyle-cloud"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--drs-integritycheck-redis_sg-00870dd9e7eff8e6a" {
  description = "redis cache for drs checksum lookups"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.40.12.189/32"]
    description = "lts-sf-3"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.40.12.190/32"]
    description = "lts-sf-4"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.40.13.110/32"]
    description = "lts-sf-1"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.40.13.111/32"]
    description = "lts-sf-2"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name = "drs-integritycheck-redis"

  tags = {
    product = "Harvard Digital Collections Platform - DCP"
  }

  tags_all = {
    product = "Harvard Digital Collections Platform - DCP"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--drs-whats-new-qa_sg-0d251174d952e7ce8" {
  description = "drs-whats-new-qa"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["206.253.207.235/32", "65.112.7.235/32"]
    description = "qa vpc"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["3.236.169.0/24"]
    description = "docker qa"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "drs-whats-new-qa"

  tags = {
    environment = "Test"
    product     = "Harvard Digital Collections Platform - DCP"
  }

  tags_all = {
    environment = "Test"
    product     = "Harvard Digital Collections Platform - DCP"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--drs-whats-new_sg-01247b233a2a48f75" {
  description = "allows the Starfish Whistle apps to connect back to themselves from outside"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["206.253.207.235/32", "65.112.7.235/32"]
    description = "prod VPC"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["3.236.169.0/24"]
    description = "external IP of prod VPC"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "drs-whats-new"

  tags = {
    product = "Harvard Digital Collections Platform - DCP"
  }

  tags_all = {
    product = "Harvard Digital Collections Platform - DCP"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--drs2prod-prod-datapump-test_sg-039de0960da350911" {
  description = "Testing Datapump to RDS for drs2prod"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.11.22.0/24"]
    description = "CloudAdminVPN"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24"]
    description = "allow connection to RDS from temp EC2"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  name = "drs2prod-prod-datapump-test"

  tags = {
    Name    = "drs2rds-sg"
    product = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    Name    = "drs2rds-sg"
    product = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--drs2qa-db_sg-012cd5a6c105e80a8" {
  description = "8223 Access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.166.22/32", "10.137.166.26/32", "10.137.166.27/32", "10.137.167.20/32", "10.137.167.22/32", "10.137.167.24/32", "10.137.167.28/32", "10.137.167.29/32", "10.137.167.30/32"]
    description = "RKE2_QA"
    from_port   = "8223"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8223"
  }

  ingress {
    cidr_blocks = ["10.143.17.128/25"]
    description = "RKE2_LZPROD"
    from_port   = "8223"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8223"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s LZP"
    from_port   = "8223"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8223"
  }

  name = "drs2qa-db"

  tags = {
    Name = "drs2qa-db"
  }

  tags_all = {
    Name = "drs2qa-db"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--drsmdsrv-qa_sg-0e09e4e6d0bc1d2d2" {
  description = "DRS Metadata Server - QA"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Std Subnet"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Std Subnet"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "drsmdsrv-qa"

  tags = {
    product = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    product = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--drsmqsrv-prod_sg-71fff539" {
  description = "allowed connections for prod message broker for DRS"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "ois VPN"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "ois VPN"
    from_port   = "61614"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24"]
    description = "us-east-1a in prod VPC"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24"]
    description = "us-east-1a in prod VPC"
    from_port   = "61614"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24"]
    description = "us-east-1c in prod VPC"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24"]
    description = "us-east-1c in prod VPC"
    from_port   = "61614"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    description = "Std. subnet"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    description = "Std. subnet"
    from_port   = "61614"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "ltsds-cloud-dev hosts"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "ltsds-cloud-dev hosts"
    from_port   = "61614"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["10.143.17.128/25"]
    description = "K8s lzprod"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.143.17.128/25"]
    description = "K8s lzprod"
    from_port   = "61614"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s LPZ"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["10.40.12.190/32"]
    description = "lts-sf-4"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["10.40.13.110/32"]
    description = "Starfish"
    from_port   = "61614"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61614"
  }

  ingress {
    cidr_blocks = ["10.40.13.110/32"]
    description = "Starfish"
    from_port   = "8162"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8162"
  }

  name = "drsmqsrv-prod"

  tags = {
    product = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    product = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--drsmqsrv-qa_sg-d7e6ec9f" {
  description = "allowed connections for QA message broker for DRS"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "ois VPN"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "ois VPN"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.163.0/24", "10.137.167.0/24"]
    description = "us-east-1 in prod VPC"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24"]
    description = "us-east-1a in prod VPC"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24"]
    description = "us-east-1a in prod VPC"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24"]
    description = "us-east-1c in prod VPC"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24"]
    description = "us-east-1d in prod VPC"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    description = "Old Docker env. "
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["10.143.17.128/25"]
    description = "K8s lzprod"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s LZP"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["10.40.12.190/32"]
    description = "lts-sf-4"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["10.40.13.110/32"]
    description = "lts-sf-1"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["10.40.4.0/24"]
    description = "on-prem Docker hosts"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["128.103.229.0/25"]
    description = "LTS Dev Servers"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["128.103.229.0/25"]
    description = "LTS Dev Servers"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  name = "drsmqsrv-qa"

  tags = {
    product = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    product = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--dspace6-clone-temp_sg-09aa3131bb4b8c401" {
  description = "Temp SG for Dev Testing"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.138.21.57/32"]
    description = "dspace6-dev.lts.harvard.edu"
    from_port   = "1521"
    protocol    = "tcp"
    self        = "false"
    to_port     = "1521"
  }

  name = "dspace6-clone-temp"

  tags = {
    Name    = "dspace6-clone-temp"
    product = "DASH"
  }

  tags_all = {
    Name    = "dspace6-clone-temp"
    product = "DASH"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--ec2-rds-1_sg-0dcbf8fbc90b12017" {
  description = "Security group attached to instances to securely connect to drs2qa. Modification could lead to connection loss."

  egress {
    description     = "Rule to allow connections to drs2qa from any instances this security group is attached to"
    from_port       = "8223"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--rds-ec2-1_sg-0bdffa833c41a902e_id}"]
    self            = "false"
    to_port         = "8223"
  }

  name   = "ec2-rds-1"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--en-de-crypt-RabbitMQ_sg-05a8b66895b68e84b" {
  description = "DRS En/Decrypt Rabbit MQ"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "from OIS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "from OIS VPN"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "From Std Subnet"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  name   = "en-de-crypt-RabbitMQ"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--eve-prod_sg-c772848c" {
  description = "eve-prod"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.4.0/22"]
    description = "Gencom - apps behind key."
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.168.111/32", "10.137.168.17/32", "10.137.169.119/32", "10.137.170.12/32", "10.137.170.199/32", "10.137.170.8/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.147.214/32"]
    description = "SSH from (old) eve"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["140.247.0.0/16"]
    description = "Harvard FAS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "eve-prod"

  tags = {
    Name    = "eve-prod"
    product = "Alma"
  }

  tags_all = {
    Name    = "eve-prod"
    product = "Alma"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--external-0020-Web-0020-connections-0020-from-0020-within-0020-the-0020-QA-002F-Prod-0020-VPC_sg-0c23fec273361e2cb" {
  description = "external Web connections from within the QA/Prod VPC"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24", "3.236.169.0/24"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["3.236.169.128/27"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "external Web connections from within the QA/Prod VPC"

  tags = {
    Name    = "external Web connections from within the QA/Prod VPC"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "external Web connections from within the QA/Prod VPC"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--fig_sg-78e55c0b" {
  description = "fig"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "9023"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9023"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24", "10.137.173.0/24"]
    description = "health check from ELB"
    from_port   = "9023"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9023"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "fig"

  tags = {
    product = "Find It at Google - FIG"
  }

  tags_all = {
    product = "Find It at Google - FIG"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--fsp-prod_sg-01acf2b40b09346ee" {
  description = "File Staging Project"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.203.0/24"]
    description = "SDRS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.24.0/24"]
    description = "for Steve Martino"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.67.0/24"]
    description = "GSD VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.84.0/24", "128.103.224.84/32"]
    description = "GSE"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.11.111.0/24"]
    description = "IAM"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.11.164.0/24"]
    description = "SOCOPSADMIN VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.11.3.0/24", "10.240.83.241/32", "128.103.15.3/32"]
    description = "HUIT Security Scanning"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.11.30.0/24"]
    description = "HKS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.208/32"]
    description = "fsp-prod1 server"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.168.0/24"]
    description = "lts-prod-level4-app-private-1a-1"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.169.0/24"]
    description = "lts-prod-level4-app-private-1c-1"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.170.0/24"]
    description = "lts-prod-level4-app-private-1d-1"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.15.116.0/22"]
    description = "HKS VPN Clients"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["134.174.140.32/32"]
    description = "HMS VPN NAT"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.69.177/32", "140.247.69.198/32", "140.247.69.224/32", "140.247.69.227/32", "140.247.69.242/32"]
    description = "Imaging Services"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "fsp-prod"

  tags = {
    Name    = "File Staging Project"
    product = "File Staging Platform"
  }

  tags_all = {
    Name    = "File Staging Project"
    product = "File Staging Platform"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--fts-prod_sg-0e293b2f4f01b3aee" {
  description = "FTS-Prod security Group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "8443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8443"
  }

  name = "fts-prod"

  tags = {
    Name    = "fts-prod"
    product = "Full Text Search Service - FTS"
  }

  tags_all = {
    Name    = "fts-prod"
    product = "Full Text Search Service - FTS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--fts-qa_sg-09c3cf89d9741e11b" {
  description = "allow access to fts-qa from docker qa public addesses"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["3.236.169.0/24"]
    description = "docker qa"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "fts-qa"

  tags = {
    product = "Full Text Search Service - FTS"
  }

  tags_all = {
    product = "Full Text Search Service - FTS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--gbl-qa_sg-082de255a1b3c11fc" {
  description = "Geoblacklight QA"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32", "10.137.166.140/32", "10.137.166.154/32", "10.137.166.176/32", "10.137.167.224/32"]
    description = "Docker QA"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "gbl-qa"

  tags = {
    product = "Harvard Geospatial Library - HGL"
  }

  tags_all = {
    product = "Harvard Geospatial Library - HGL"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--geodata-qa_sg-051405565e03a6a4d" {
  description = "Geodata-qa"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["3.236.169.128/27"]
    description = "Inbound Geodata qa access for internal call"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "geodata-qa"

  tags = {
    Name    = "Geodata QA"
    product = "Harvard Geospatial Library - HGL"
  }

  tags_all = {
    Name    = "Geodata QA"
    product = "Harvard Geospatial Library - HGL"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--hcdo-huit-standard-infrastructure-security-groups-infrastructuresharedsvcssg-1FAWLNVCXPWHZ_sg-17d5fa64" {
  description = "Allows on-prem services (Security Scanning, Domain Controllers, Networker)"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.11.134.0/24"]
    from_port   = "-1"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  ingress {
    cidr_blocks = ["10.11.134.0/24"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.34.208.0/26", "10.34.8.0/24", "10.35.1.64/28", "10.35.2.33/32", "128.103.51.0/25", "140.247.35.188/30", "140.247.35.189/32"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.34.5.121/32", "10.34.5.122/32", "10.34.5.124/32", "10.34.5.125/32", "10.34.5.126/32", "128.103.109.254/32"]
    from_port   = "445"
    protocol    = "tcp"
    self        = "false"
    to_port     = "445"
  }

  ingress {
    cidr_blocks = ["10.34.9.0/26"]
    from_port   = "111"
    protocol    = "udp"
    self        = "false"
    to_port     = "111"
  }

  ingress {
    cidr_blocks = ["10.34.9.0/26"]
    from_port   = "7937"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9936"
  }

  ingress {
    cidr_blocks = ["10.35.1.106/32"]
    from_port   = "383"
    protocol    = "tcp"
    self        = "false"
    to_port     = "383"
  }

  ingress {
    cidr_blocks = ["10.35.1.22/32", "10.35.1.23/32"]
    from_port   = "31111"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31111"
  }

  ingress {
    cidr_blocks = ["128.103.208.0/24"]
    from_port   = "50514"
    protocol    = "tcp"
    self        = "false"
    to_port     = "50514"
  }

  name = "hcdo-huit-standard-infrastructure-security-groups-infrastructuresharedsvcssg-1FAWLNVCXPWHZ"

  tags = {
    Name    = "infrastructure-shared-svcs-sg"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "infrastructure-shared-svcs-sg"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--hcdo-huit-standard-infrastructure-security-groups-infrastructurewindowssg-ANTL9C0IIWNN_sg-52d7f821" {
  description = "Allows traffic from on-prem services (Scom, Symantec endpoint, Ivanti patch(shavlik), Sccm)"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.11.134.0/24"]
    from_port   = "3389"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3389"
  }

  ingress {
    cidr_blocks = ["10.11.134.0/24"]
    from_port   = "33900"
    protocol    = "tcp"
    self        = "false"
    to_port     = "33900"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.34.205.22/32", "10.34.8.150/32", "10.35.5.240/32"]
    from_port   = "135"
    protocol    = "tcp"
    self        = "false"
    to_port     = "139"
  }

  ingress {
    cidr_blocks = ["10.34.205.22/32", "10.34.8.150/32", "10.35.5.240/32"]
    from_port   = "137"
    protocol    = "udp"
    self        = "false"
    to_port     = "138"
  }

  ingress {
    cidr_blocks = ["10.34.205.22/32", "10.34.8.150/32", "10.35.5.240/32"]
    from_port   = "49152"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.34.205.22/32", "10.35.5.240/32", "10.35.5.76/32"]
    from_port   = "445"
    protocol    = "tcp"
    self        = "false"
    to_port     = "445"
  }

  ingress {
    cidr_blocks = ["10.34.205.22/32", "10.35.5.240/32"]
    from_port   = "1024"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5000"
  }

  ingress {
    cidr_blocks = ["10.34.205.22/32", "10.35.5.240/32"]
    from_port   = "5723"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5723"
  }

  ingress {
    cidr_blocks = ["10.34.8.150/32"]
    from_port   = "1025"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5000"
  }

  ingress {
    cidr_blocks = ["10.34.8.150/32"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "445"
  }

  ingress {
    cidr_blocks = ["10.34.8.150/32"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.35.5.70/32"]
    from_port   = "2967"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2967"
  }

  ingress {
    cidr_blocks = ["10.35.5.70/32"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.35.5.70/32"]
    from_port   = "8014"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8014"
  }

  ingress {
    cidr_blocks = ["10.35.5.76/32"]
    from_port   = "4155"
    protocol    = "tcp"
    self        = "false"
    to_port     = "4155"
  }

  name = "hcdo-huit-standard-infrastructure-security-groups-infrastructurewindowssg-ANTL9C0IIWNN"

  tags = {
    Name    = "infrastructure-windows-sg"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "infrastructure-windows-sg"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--hdc-qa_sg-0a658cba2dfab28eb" {
  description = "HDC QA"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24", "10.1.79.0/24"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24", "10.1.79.0/24"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "8443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.171.142/32"]
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "hdc-qa"

  tags = {
    product = "HD Inventory - Progress"
  }

  tags_all = {
    product = "HD Inventory - Progress"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--hdc3a-prod-mq_sg-0f9f33461e7690b6d" {
  description = "Access to prod ims active mq"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.102/32"]
    description = "ltsds-cloud-prod-2"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.165.9/32"]
    description = "ltsds-cloud-prod-5"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.166.36/32"]
    description = "ltsds-cloud-prod-4"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.166.92/32"]
    description = "ltsds-cloud-prod-1"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.167.17/32"]
    description = "ltsds-cloud-prod-6"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.167.213/32"]
    description = "ltsds-cloud-prod-3"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.40.4.15/32"]
    description = "ldi-7"
    from_port   = "61614"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61614"
  }

  ingress {
    cidr_blocks = ["10.40.4.17/32"]
    description = "ldi-8"
    from_port   = "61614"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61614"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "ldi-3"
    from_port   = "61614"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61614"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "ldi-4"
    from_port   = "61614"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61614"
  }

  ingress {
    cidr_blocks = ["3.236.169.0/24"]
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  name = "hdc3a-prod-mq"

  tags = {
    Name    = "hdc3a-prod-mq"
    product = "Harvard Data Commons - HDC"
  }

  tags_all = {
    Name    = "hdc3a-prod-mq"
    product = "Harvard Data Commons - HDC"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--hdc3a-qa-mq_sg-008dac29481ab973f" {
  description = "message queue access to hdc3a-qa"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32"]
    description = "ltsds-cloud-qa-5"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.166.131/32"]
    description = "qa-3"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.166.140/32"]
    description = "ltsds-cloud-qa-4"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.166.154/32"]
    description = "ltsds-cloud-qa-3"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.166.170/32"]
    description = "qa-5"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.166.176/32"]
    description = "ltsds-cloud-qa-1"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.166.37/32"]
    description = "qa-1"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.167.224/32"]
    description = "ltsds-cloud-qa-2"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.167.89/32"]
    description = "qa-4"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.171.53/32"]
    description = "qa-2"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["3.236.169.0/24"]
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  name = "hdc3a-qa-mq"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--hgl-qa_sg-058776a27499eefbe" {
  description = "HGL QA"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "31000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31003"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "31000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31003"
  }

  name = "hgl-qa"

  tags = {
    product = "Harvard Geospatial Library - HGL"
  }

  tags_all = {
    product = "Harvard Geospatial Library - HGL"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--huit-lib-dash-prod-sg-cf-dashproddbsg-3I9L528NIAVE_sg-52042d2d" {
  description = "allows traffic to the server instances"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.11.134.0/24", "10.137.167.48/32", "128.103.147.223/32"]
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  name = "huit-lib-dash-prod-sg-cf-dashproddbsg-3I9L528NIAVE"

  tags = {
    Name         = "dash-prod-db-sg"
    environment  = "Prod"
    huit_assetid = "1234"
    product      = "DASH"
  }

  tags_all = {
    Name         = "dash-prod-db-sg"
    environment  = "Prod"
    huit_assetid = "1234"
    product      = "DASH"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--huit-lib-dashprd-prod-sg-cf-drs2prodproductiondbsg-YC3UM9AVODFD_sg-0fcb807e" {
  description = "allows traffic to the server instances"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.11.134.0/24"]
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  name = "huit-lib-dashprd-prod-sg-cf-drs2prodproductiondbsg-YC3UM9AVODFD"

  tags = {
    Name         = "drs2prod-production-db-sg"
    environment  = "production"
    huit_assetid = "1234"
    product      = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    Name         = "drs2prod-production-db-sg"
    environment  = "production"
    huit_assetid = "1234"
    product      = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--huit-lib-dashqa-qa-sg-cf-dashqaqadbsg-N32GZV0ULNLQ_sg-afd4f6d0" {
  description = "allows traffic to the server instances"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.0.0.0/8", "10.11.134.0/24", "128.103.229.75/32"]
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.39.110.43/32"]
    description = "OEM Cloud Server"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.39.110.43/32"]
    description = "OEM Cloud Server"
    from_port   = "8990"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8990"
  }

  name = "huit-lib-dashqa-qa-sg-cf-dashqaqadbsg-N32GZV0ULNLQ"

  tags = {
    Name         = "dashqa-qa-db-sg"
    environment  = "Qa"
    huit_assetid = "1234"
    product      = "DASH"
  }

  tags_all = {
    Name         = "dashqa-qa-db-sg"
    environment  = "Qa"
    huit_assetid = "1234"
    product      = "DASH"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--huit-lib-drsdev-dev-sg1-cf-drsdevdevelopmentdbsg-XZOPM4E4VRQ6_sg-5b605a25" {
  description = "allows traffic to the server instances"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.11.134.0/24", "128.103.229.17/32"]
    from_port   = "8222"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8222"
  }

  name = "huit-lib-drsdev-dev-sg1-cf-drsdevdevelopmentdbsg-XZOPM4E4VRQ6"

  tags = {
    Name         = "drsdev-development-db-sg"
    environment  = "development"
    huit_assetid = "1234"
    product      = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    Name         = "drsdev-development-db-sg"
    environment  = "development"
    huit_assetid = "1234"
    product      = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--iiif-redis-dev_sg-0f2f45b65ec0e3d4e" {
  description = "Allows iiif redis QA to be reached from Dev VPC"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "Access from Dev VPC to QA Redis cluster"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name = "iiif-redis-dev"

  tags = {
    Name    = "iiif-redis-dev"
    product = "Harvard Library Viewer - MIRADOR"
  }

  tags_all = {
    Name    = "iiif-redis-dev"
    product = "Harvard Library Viewer - MIRADOR"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--iiif-redis-prod_sg-00bc38b22db4af4ef" {
  description = "iiif-redis-prod"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.0.0.0/8", "10.1.79.0/24", "10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name = "iiif-redis-prod"

  tags = {
    Name    = "iiif-redis-prod"
    product = "Harvard Library Viewer - MIRADOR"
  }

  tags_all = {
    Name    = "iiif-redis-prod"
    product = "Harvard Library Viewer - MIRADOR"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--iiif-redis-qa_sg-067cdb31b2f035476" {
  description = "iiif-redis-qa"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.0.0.0/8", "10.1.79.0/24"]
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name = "iiif-redis-qa"

  tags = {
    Name    = "iiif-redis-qa"
    product = "Harvard Library Viewer - MIRADOR"
  }

  tags_all = {
    Name    = "iiif-redis-qa"
    product = "Harvard Library Viewer - MIRADOR"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--infrasecops-test-sg_sg-0aaeb1b8deef2e203" {
  description = "infrasecops-test-sg"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.0.0.0/8", "10.143.0.0/16"]
    from_port   = "-1"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  ingress {
    cidr_blocks = ["10.0.0.0/8"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    from_port   = "0"
    protocol    = "udp"
    self        = "false"
    to_port     = "65535"
  }

  name = "infrasecops-test-sg"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--infrastructure-shared-global-security-group-vpc-a60437c1_sg-0d763fa25bb2682d2" {
  description = "Linux \u0026 Windows Infrastructure-shared-global-security-group-vpc-a60437c1"

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

  name = "infrastructure-shared-global-security-group-vpc-a60437c1"

  tags = {
    Name    = "infrastructure-shared-global-security-group-vpc-a60437c1"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "infrastructure-shared-global-security-group-vpc-a60437c1"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--inscriptio-0020-prod-0020-public-0020-access_sg-05f0611bd1921f602" {
  description = "allow access to inscriptio proc"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "global access to 443"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "inscriptio prod public access"

  tags = {
    product = "Inscriptio"
  }

  tags_all = {
    product = "Inscriptio"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--istio-sg-prod_sg-0f57622e10426e3f7" {
  description = "Allow incoming traffic to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Public Access"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Pulic Access"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "128.103.224.79/32", "128.103.24.79/32"]
    description = "Allow all inbound traffic"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.10/32", "10.137.167.12/32", "10.137.167.15/32", "10.137.167.19/32", "10.137.167.23/32", "10.137.167.27/32"]
    description = "prod k8 worker node"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.198/32", "10.137.167.199/32", "10.137.167.200/32"]
    description = "prod k8 server node"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "istio-sg-prod"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--jobmon-prod_sg-0da38a99731f8cb94" {
  description = "jobmon-prod"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "#OIS VPN tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.102/32"]
    description = "Docker Prod 2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.224/32"]
    description = "queue.lib.harvard.edu"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.9/32"]
    description = "Docker Prod 5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.36/32"]
    description = "Docker Prod 4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.92/32"]
    description = "Docker Prod 1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.14/32"]
    description = "kant.lib.harvard.edu"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.17/32"]
    description = "Docker Prod 6"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.18/32"]
    description = "billing.lib"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.213/32"]
    description = "Docker Prod 3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.216/32"]
    description = "clue.lib.harvard.edu"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.82/32"]
    description = "harvester-prod.lib.harvard.edu"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "k8s lzp"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.12.190/32"]
    description = "SF-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.13.110/32"]
    description = "SF-1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.147.138/32"]
    description = "ldi-1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.147.145/32"]
    description = "new doyle"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.64.157/32"]
    description = "doyle.hul"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "jobmon-prod"

  tags = {
    product = "Alma"
  }

  tags_all = {
    product = "Alma"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--jobmon-qa_sg-02ff4b55737aa1542" {
  description = "jobmon-qa"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "#OIS VPN tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.224/32"]
    description = "queue.lib.harvard.edu"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.124/32"]
    description = "harvester-qa.lib.harvard.edu"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.18/32"]
    description = "billing.lib.harvard.edu"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.216/32"]
    description = "clue.lib.harvard.edu"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.72/32"]
    description = "hegel.lib.harvard.edu"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "k8s lzp"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.12.190/32"]
    description = "SF-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.147.138/32"]
    description = "ldi-1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.147.145/32"]
    description = "new doyle"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.64.157/32"]
    description = "doyle.hul"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "jobmon-qa"

  tags = {
    Name    = "jobmon-qa"
    product = "Alma"
  }

  tags_all = {
    Name    = "jobmon-qa"
    product = "Alma"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--launch-wizard-1_sg-08a5693248f556ee5" {
  description = "launch-wizard-1 created 2023-09-21T22:02:48.478Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.209.0/24"]
    description = "NetworkAdminVPN-Internal"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.24.209/32"]
    description = "NetworkAdminVPN-NAT"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-1"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--lc-control_sg-0344cf8080e8c76f3" {
  description = "library cloud control server"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.167.14/32"]
    description = "kant"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.167.72/32"]
    description = "hegel"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.167.82/32"]
    description = "Harvester. "
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "lc-control"

  tags = {
    product = "Library Cloud"
  }

  tags_all = {
    product = "Library Cloud"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--link-o-matic_sg-0cac86e9a17940038" {
  description = "link-o-matic"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["127.0.0.1/32", "128.103.224.0/24", "128.103.224.59/32", "128.103.224.79/32", "199.94.32.0/20", "199.94.48.0/32"]
    from_port   = "3000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3000"
  }

  ingress {
    cidr_blocks = ["128.103.224.59/32"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["172.31.30.242/32"]
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name = "link-o-matic"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--logcenter_sg-0cdba079e78ccdcdd" {
  description = "logcenter"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "5044"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5049"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "9200"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9200"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "open to subnet for log delivery"
    from_port   = "5044"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5049"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24"]
    description = "open to subnet for log delivery"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32", "10.137.166.140/32", "10.137.166.154/32", "10.137.166.176/32", "10.137.167.224/32"]
    description = "QA Cloud Docker"
    from_port   = "5044"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5049"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    description = "Prod/QA Subnet"
    from_port   = "9200"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9200"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    description = "Wrong Subnet"
    from_port   = "5044"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5049"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "Dev VPC for Solr Collectd"
    from_port   = "5048"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5048"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "Docker Dev access to elasticsearch"
    from_port   = "9200"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9200"
  }

  ingress {
    cidr_blocks = ["10.138.21.109/32", "10.138.21.170/32", "10.138.21.204/32", "10.138.21.43/32", "10.138.21.90/32"]
    description = "Dev Cloud Docker"
    from_port   = "5044"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5049"
  }

  name = "logcenter"

  tags = {
    Name    = "Logcenter"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "Logcenter"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--logic-monitor-ext-web-ips-shared-security-group-vpc-a60437c1_sg-063f9c84b91827acc" {
  description = "Logic Monitor External Web Check IP Addresses for vpc-a60437c1"

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

  name = "logic-monitor-ext-web-ips-shared-security-group-vpc-a60437c1"

  tags = {
    Name    = "logic-monitor-ext-web-ips-shared-security-group-vpc-a60437c1"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "logic-monitor-ext-web-ips-shared-security-group-vpc-a60437c1"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--lts-prod-db_sg-bc3972c1" {
  description = "production (non-level-4) DB security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "8004"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8004"
  }

  ingress {
    cidr_blocks = ["10.1.203.0/24"]
    description = "SDRS"
    from_port   = "8000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9000"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "8004"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8004"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "128.103.147.0/24"]
    description = "for DRS1 QA"
    from_port   = "1523"
    protocol    = "tcp"
    self        = "false"
    to_port     = "1523"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "8000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9000"
  }

  ingress {
    cidr_blocks = ["10.137.0.0/16", "128.103.147.0/24", "128.103.149.0/24"]
    from_port   = "8000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9000"
  }

  ingress {
    cidr_blocks = ["10.137.0.0/16"]
    from_port   = "1523"
    protocol    = "tcp"
    self        = "false"
    to_port     = "1523"
  }

  ingress {
    cidr_blocks = ["10.138.22.100/32", "10.138.22.101/32", "10.138.22.90/32", "10.138.22.91/32", "10.138.22.93/32"]
    description = "rke2"
    from_port   = "8004"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8004"
  }

  ingress {
    cidr_blocks = ["10.138.22.102/32"]
    description = "rke2"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.143.17.128/25"]
    description = "RKE2_LZPROD"
    from_port   = "8000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9000"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s LZP"
    from_port   = "8000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9000"
  }

  ingress {
    cidr_blocks = ["10.40.12.185/32", "10.40.13.224/32"]
    description = "drschecks"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.40.13.110/32"]
    description = "Starfish 1 for checksum"
    from_port   = "8000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9000"
  }

  ingress {
    cidr_blocks = ["10.40.4.0/24"]
    description = "DRS2 webservices"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.40.4.14/32"]
    description = "ldi-5"
    from_port   = "8223"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8223"
  }

  ingress {
    cidr_blocks = ["10.40.4.15/32"]
    description = "ldi-7"
    from_port   = "8000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9000"
  }

  ingress {
    cidr_blocks = ["10.40.4.16/32"]
    description = "ldi-6"
    from_port   = "8000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9000"
  }

  ingress {
    cidr_blocks = ["10.40.4.17/32"]
    description = "ldi-8"
    from_port   = "8000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9000"
  }

  ingress {
    cidr_blocks = ["10.40.4.21/32"]
    description = "for EAS QA"
    from_port   = "1523"
    protocol    = "tcp"
    self        = "false"
    to_port     = "1523"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "ldi-3"
    from_port   = "8223"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8223"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "ldi-4"
    from_port   = "8223"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8223"
  }

  ingress {
    cidr_blocks = ["128.103.64.157/32"]
    description = "Doyle"
    from_port   = "1523"
    protocol    = "tcp"
    self        = "false"
    to_port     = "1523"
  }

  ingress {
    cidr_blocks = ["128.103.64.157/32"]
    description = "Doyle"
    from_port   = "8223"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8223"
  }

  ingress {
    cidr_blocks = ["128.103.64.157/32"]
    description = "doyle to DRSPROD"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["128.103.69.53/32"]
    description = "EAS to DRSPROD"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  name = "lts-prod-db"

  tags = {
    Name    = "lts-prod-db"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "lts-prod-db"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--lts-prod-ecr-vpc-ep-sg_sg-016d4a73e72d22c1f" {
  description = "ecr endpoint sg"

  ingress {
    cidr_blocks = ["10.137.160.0/20", "10.139.121.0/25", "10.143.16.0/22"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "lts-prod-ecr-vpc-ep-sg"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--ltsds-cloud-qa_sg-0a42999500f1b036a" {
  description = "Cloud Docker QA"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Book Labeler"
    from_port   = "13008"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13008"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "digitalcollections QA"
    from_port   = "13880"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13880"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "18080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18080"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "2376"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2377"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "4789"
    protocol    = "udp"
    self        = "false"
    to_port     = "4789"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "7946"
    protocol    = "tcp"
    self        = "false"
    to_port     = "7946"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "7946"
    protocol    = "udp"
    self        = "false"
    to_port     = "7946"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "ltsds-cloud-qa"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--ltsprod-standard-drs2prod-cf-sg-drs2prodprodappsg-1E4FE20PF45BB_sg-887732f8" {
  description = "allows traffic to the server instances"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24", "10.32.69.53/32", "128.103.147.137/32", "128.103.147.252/32"]
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "LTS VPN"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "LTS VPN"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.11.134.0/24", "10.11.22.0/24"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.165.136/32"]
    description = "aws-drs2prod.hz.lib.harvard.edu"
    from_port   = "8900"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8900"
  }

  ingress {
    cidr_blocks = ["10.137.167.28/32"]
    description = "Ansel (iiif)"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    description = "test migration RDS instance"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/24"]
    description = "LM"
    from_port   = "161"
    protocol    = "tcp"
    self        = "false"
    to_port     = "162"
  }

  ingress {
    cidr_blocks = ["10.137.242.158/32"]
    description = "oem-app01.cloudservices.huit.harvard.edu"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.137.242.158/32"]
    description = "oem-app01.cloudservices.huit.harvard.edu"
    from_port   = "8990"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8990"
  }

  ingress {
    cidr_blocks = ["10.240.128.200/32"]
    description = "Nagios XI"
    from_port   = "5693"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5693"
  }

  ingress {
    cidr_blocks = ["10.32.14.14/32"]
    description = "WATSON"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.32.192.3/32"]
    description = "SATURN"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.34.5.236/32"]
    description = "From Phobos"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.34.5.237/32"]
    description = "From Deimos"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.35.1.106/32"]
    description = "ovo-manager1-vm"
    from_port   = "-1"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  ingress {
    cidr_blocks = ["10.35.1.106/32"]
    description = "ovo-manager1-vm"
    from_port   = "383"
    protocol    = "tcp"
    self        = "false"
    to_port     = "383"
  }

  ingress {
    cidr_blocks = ["10.35.1.106/32"]
    description = "ovo-manager1-vm"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.35.1.22/32"]
    description = "twsprd.cadm"
    from_port   = "31111"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31111"
  }

  ingress {
    cidr_blocks = ["10.35.1.22/32"]
    description = "twsprd.cadm"
    from_port   = "31114"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31114"
  }

  ingress {
    cidr_blocks = ["10.35.1.22/32"]
    description = "twsprd.cadm"
    from_port   = "32222"
    protocol    = "tcp"
    self        = "false"
    to_port     = "32222"
  }

  ingress {
    cidr_blocks = ["10.35.1.23/32"]
    description = "twsbkp-sum.cadm"
    from_port   = "31111"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31111"
  }

  ingress {
    cidr_blocks = ["10.35.1.23/32"]
    description = "twsbkp-sum.cadm"
    from_port   = "31114"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31114"
  }

  ingress {
    cidr_blocks = ["10.35.1.23/32"]
    description = "twsbkp-sum.cadm"
    from_port   = "32222"
    protocol    = "tcp"
    self        = "false"
    to_port     = "32222"
  }

  ingress {
    cidr_blocks = ["10.35.1.64/28", "140.247.35.188/30"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.35.1.89/32"]
    description = "OEMPRD1.CADM"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.35.1.90/32"]
    description = "tws-prod.soc.har"
    from_port   = "31111"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31111"
  }

  ingress {
    cidr_blocks = ["10.35.1.91/32"]
    description = "OEMPRD2.CADM"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.39.110.43/32"]
    description = "oemtest-ec2 10.39.110.43"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.39.110.43/32"]
    description = "oemtest-ec2 10.39.110.43"
    from_port   = "8990"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8990"
  }

  ingress {
    cidr_blocks = ["10.40.12.185/32"]
    description = "UMIG-MGHPCC"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.40.13.224/32"]
    description = "UMIG-SUMMER"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.40.4.71/32"]
    description = "JUPITER"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["128.103.147.137/32"]
    description = "MOORE-VM"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.147.152/32"]
    description = "tattler"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.147.211/32"]
    description = "HUXLEY"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["128.103.147.230/32"]
    description = "Rudolph"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["128.103.147.252/32"]
    description = "TATTLER"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.149.52/32"]
    description = "VIACS"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["128.103.64.157/32"]
    description = "DOYLE"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["128.103.69.53/32"]
    description = "TOMLINSON PUBLIC"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["54.172.192.178/32"]
    description = "LEARY"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  name = "ltsprod-standard-drs2prod-cf-sg-drs2prodprodappsg-1E4FE20PF45BB"

  tags = {
    Name         = "drs2prod-prod-app-sg"
    environment  = "Production"
    huit_assetid = "9393"
    product      = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    Name         = "drs2prod-prod-app-sg"
    environment  = "Production"
    huit_assetid = "9393"
    product      = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--ltsprod-standard-drs3prod-cf-sg-drs3prodprodappsg-UQH1712G0V4H_sg-00fbb673" {
  description = "allows traffic to the server instances"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24", "10.1.79.0/24", "10.32.14.14/32", "10.32.192.3/32", "10.32.69.53/32", "10.35.1.89/32", "10.35.1.91/32", "10.40.12.185/32", "10.40.13.224/32", "10.40.4.71/32", "128.103.147.137/32", "128.103.147.211/32", "128.103.147.252/32", "128.103.149.52/32", "128.103.64.157/32", "128.103.69.53/32", "54.172.192.178/32"]
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.11.134.0/24", "10.11.22.0/24", "128.103.147.137/32", "128.103.147.252/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.35.1.106/32"]
    description = "ovo-manager1-vm"
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.35.1.22/32", "10.35.1.23/32", "10.35.1.90/32"]
    from_port   = "31111"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31111"
  }

  ingress {
    cidr_blocks = ["10.35.1.64/28", "140.247.35.188/30"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name = "ltsprod-standard-drs3prod-cf-sg-drs3prodprodappsg-UQH1712G0V4H"

  tags = {
    Name         = "drs3prod-prod-app-sg"
    environment  = "Production"
    huit_assetid = "9393"
    product      = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    Name         = "drs3prod-prod-app-sg"
    environment  = "Production"
    huit_assetid = "9393"
    product      = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--ltsprod-standard-drs3prod-cf-sg-noneprodappsg-1JMHV5ZJJSK0E_sg-8e4c35fd" {
  description = "allows traffic to the server instances"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24", "10.1.79.0/24", "10.32.14.14/32", "10.32.192.3/32", "10.32.69.53/32", "10.35.1.89/32", "10.35.1.91/32", "10.40.12.185/32", "10.40.13.224/32", "10.40.4.71/32", "128.103.147.137/32", "128.103.147.211/32", "128.103.147.252/32", "128.103.149.52/32", "128.103.64.157/32", "128.103.69.53/32", "54.172.192.178/32"]
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.11.134.0/24", "10.11.22.0/24", "128.103.147.137/32", "128.103.147.252/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.35.1.22/32", "10.35.1.23/32", "10.35.1.90/32"]
    from_port   = "31111"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31111"
  }

  ingress {
    cidr_blocks = ["10.35.1.64/28", "140.247.35.188/30"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name = "ltsprod-standard-drs3prod-cf-sg-noneprodappsg-1JMHV5ZJJSK0E"

  tags = {
    Name         = "none-prod-app-sg"
    environment  = "Production"
    huit_assetid = "9494"
    product      = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    Name         = "none-prod-app-sg"
    environment  = "Production"
    huit_assetid = "9494"
    product      = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--lz-prod-efs-acess_sg-00352d852faf5e9f5" {
  description = "Lock down EFS access to only K8 lzprod nodes"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "docker cloud prod"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.166.176/32"]
    description = "docker qa 1"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.143.133.149/32"]
    description = "lz-sand"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.143.17.122/32"]
    description = "doyle-cloud"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.143.17.128/25"]
    description = "K8 lzprod nodes"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s LZP"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "k8s lzp"
    from_port   = "0"
    protocol    = "udp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "k8s lzp"
    from_port   = "2049"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2049"
  }

  ingress {
    cidr_blocks = ["10.40.4.0/24"]
    description = "ldi nodes"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "ldi-3 for migration"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["128.103.147.145/32"]
    description = "doyle"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  name = "lz-prod-efs-acess"

  tags = {
    Name = "lz-prod-efs-acess"
  }

  tags_all = {
    Name = "lz-prod-efs-acess"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--lz-prod_plg_mysql_sg-0f2f89cc66064fe04" {
  description = "access lz-prod plg db"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.143.17.128/25"]
    description = "lz-prod servers and nodes"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "lz-prod_plg_mysql"

  tags = {
    Name = "lz-prod_plg_mysql"
  }

  tags_all = {
    Name = "lz-prod_plg_mysql"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--mongo-SG_sg-e3fe30ae" {
  description = "ports for mongodb servers (22, 27017)"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "#ois vpn tunnel"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "#ois vpn tunnel"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.137.163.0/24", "10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Prod std subnet"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.167.0/24", "10.137.171.0/24", "128.103.147.152/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.166.22/32", "10.137.166.26/32", "10.137.166.27/32", "10.137.167.20/32", "10.137.167.22/32", "10.137.167.24/32", "10.137.167.28/32", "10.137.167.29/32", "10.137.167.30/32", "10.137.171.0/24", "10.40.4.0/24"]
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.137.166.22/32", "10.137.166.26/32", "10.137.166.27/32", "10.137.167.20/32", "10.137.167.22/32", "10.137.167.24/32", "10.137.167.28/32", "10.137.167.29/32", "10.137.167.30/32"]
    description = "K8S Dev access"
    from_port   = "27072"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27072"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.166.0/24", "10.138.167.0/24", "10.138.168.0/24"]
    description = "hartoas07.sand.bidev.huit.harvard.edu Oracle Analytics"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.138.21.204/32"]
    description = "ltsds-cloud-dev-1"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.143.17.128/25"]
    description = "K8s LZPROD"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.143.17.140/32"]
    description = "lz prod server 1"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.143.17.141/32"]
    description = "lz prod server 2"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.143.17.142/32"]
    description = "lz prod server 3"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.143.17.150/32"]
    description = "lz prod agent 1"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.143.17.151/32"]
    description = "lz prod agent 2"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.143.17.152/32"]
    description = "lz prod agent 3"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s LZP"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.40.4.14/32"]
    description = "ldi-5"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "ldi-3"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "ldi-4"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  name = "mongo-SG"

  tags = {
    Name    = "mongodb security group"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "mongodb security group"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--mps-embed-prod_sg-050feca597ba4b587" {
  description = "for accessing the production mps-embed API"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["3.236.169.0/24"]
    description = "external addresses of hosts in the prod VPC"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "mps-embed-prod"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--mps-embed-qa_sg-0f0494d1ed56ac040" {
  description = "rules for the mps-embed ALB in qa"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32"]
    description = "docker qa 5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.140/32"]
    description = "docker qa 4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.154/32"]
    description = "docker qa 3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.176/32"]
    description = "docker qa 1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.224/32"]
    description = "docker qa 2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["3.236.169.0/24"]
    description = "public address for docker hosts"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "mps-embed-qa"

  tags = {
    Name    = "mps-embed-qa"
    product = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    Name    = "mps-embed-qa"
    product = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--mps-mq-qa_sg-017c3c1bb600ee752" {
  description = "allow connections to the ActiveMQ broker for MPS QA"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32", "10.137.166.140/32"]
    description = "from Docker QA 4"
    from_port   = "61614"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61614"
  }

  ingress {
    cidr_blocks = ["10.137.166.154/32"]
    description = "from Docker QA 3"
    from_port   = "61614"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61614"
  }

  ingress {
    cidr_blocks = ["10.137.166.176/32"]
    description = "from Docker QA 1"
    from_port   = "61614"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61614"
  }

  ingress {
    cidr_blocks = ["10.137.167.224/32"]
    description = "from Docker QA 2"
    from_port   = "61614"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61614"
  }

  name = "mps-mq-qa"

  tags = {
    Name    = "mps-mq-qa"
    product = "Media Presentation Service - MPS"
  }

  tags_all = {
    Name    = "mps-mq-qa"
    product = "Media Presentation Service - MPS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--mps-qa-https_sg-09fded8965b056909" {
  description = "access to mps-qa-site"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.65.0/24", "128.103.224.65/32", "128.103.24.65/32"]
    description = "#webs vpn tunnel used by ATS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.86.0/24", "128.103.224.86/32", "128.103.24.86/32"]
    description = "#provost vpn tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["3.236.169.128/27"]
    description = "from prod VPC, as external access"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["3.236.67.96/27"]
    description = "Academic Technology test servers"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "mps-qa-https"

  tags = {
    Name    = "mps-qa-https"
    product = "Media Presentation Service - MPS"
  }

  tags_all = {
    Name    = "mps-qa-https"
    product = "Media Presentation Service - MPS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--mps-qa_sg-071268e5ac3cc1775" {
  description = "various connections needed for the QA instance of MPS"

  ingress {
    cidr_blocks = ["10.137.165.33/32", "10.137.166.140/32", "10.137.166.154/32", "10.137.166.176/32", "10.137.167.224/32"]
    description = "PostgreSQL port open to QA Docker hosts"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32", "10.137.166.140/32", "10.137.166.154/32", "10.137.166.176/32", "10.137.167.224/32"]
    description = "Redis port port open to QA Docker hosts"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name = "mps-qa"

  tags = {
    Name    = "mps-qa"
    product = "Media Presentation Service - MPS"
  }

  tags_all = {
    Name    = "mps-qa"
    product = "Media Presentation Service - MPS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--nrs-prod-0020-ALB_sg-090cf238553898167" {
  description = "access to the nrs-prod ALB (the new NRS resolver)"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "VPN tunnel for LTS (OIS)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "VPN tunnel for LTS (OIS)"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.165.102/32"]
    description = "Docker prod cloud:  ltsds-cloud-prod-2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.102/32"]
    description = "Docker prod cloud:  ltsds-cloud-prod-2"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.165.129/32"]
    description = "eve, for the NRS loader (just in case)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.129/32"]
    description = "eve, for the NRS loader (just in case)"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.165.9/32"]
    description = "Docker prod cloud:  ltsds-cloud-prod-5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.9/32"]
    description = "Docker prod cloud:  ltsds-cloud-prod-5"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.166.36/32"]
    description = "Docker prod cloud:  ltsds-cloud-prod-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.36/32"]
    description = "Docker prod cloud:  ltsds-cloud-prod-4"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.166.92/32"]
    description = "Docker prod cloud:  ltsds-cloud-prod-1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.92/32"]
    description = "Docker prod cloud:  ltsds-cloud-prod-1"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.167.17/32"]
    description = "Docker prod cloud:  ltsds-cloud-prod-6"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.17/32"]
    description = "Docker prod cloud:  ltsds-cloud-prod-6"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.167.182/32"]
    description = "DSpace 6 prod"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.182/32"]
    description = "DSpace 6 prod"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.167.213/32"]
    description = "Docker prod cloud:  ltsds-cloud-prod-3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.213/32"]
    description = "Docker prod cloud:  ltsds-cloud-prod-3"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.170.115/32"]
    description = "lowell, for the NRS loader (just in case)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.170.115/32"]
    description = "lowell, for the NRS loader (just in case)"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.40.4.14/32"]
    description = "Docker prod on-prem:  ldi-5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.14/32"]
    description = "Docker prod on-prem:  ldi-5"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.40.4.17/32"]
    description = "LDI-8"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.17/32"]
    description = "LDI-8"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "Docker prod on-prem:  ldi-3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "Docker prod on-prem:  ldi-3"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "Docker prod on-prem:  ldi-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "Docker prod on-prem:  ldi-4"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "nrs-prod ALB"

  tags = {
    product = "Naming Service - NRS"
  }

  tags_all = {
    product = "Naming Service - NRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--nrs-prod-db_sg-086e3705433ca7e52" {
  description = "allows access to PostgreSQL database for NRS prod"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.102/32", "10.137.165.9/32", "10.137.166.36/32", "10.137.166.92/32", "10.137.167.17/32", "10.137.167.213/32"]
    description = "access from Docker PROD hosts"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.167.10/32", "10.137.167.12/32", "10.137.167.15/32", "10.137.167.19/32", "10.137.167.23/32", "10.137.167.27/32"]
    description = "prod k8 worker node"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.167.198/32", "10.137.167.199/32", "10.137.167.200/32"]
    description = "prod k8 server node"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name = "nrs-prod-db"

  tags = {
    product = "Naming Service - NRS"
  }

  tags_all = {
    product = "Naming Service - NRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--nrs-prod-redis_sg-01886466cf617fec1" {
  description = "allows connections to Elasticache redis for prod NRS"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.102/32", "10.137.165.9/32", "10.137.166.36/32", "10.137.166.92/32", "10.137.167.17/32", "10.137.167.213/32"]
    description = "Docker PROD hosts"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.137.167.10/32", "10.137.167.12/32", "10.137.167.15/32"]
    description = "K8 PROD worker node"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.137.167.19/32", "10.137.167.23/32", "10.137.167.27/32"]
    description = "k8 PROD worker node"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.137.167.198/32", "10.137.167.199/32", "10.137.167.200/32"]
    description = "k8 PROD control node"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name = "nrs-prod-redis"

  tags = {
    product = "Naming Service - NRS"
  }

  tags_all = {
    product = "Naming Service - NRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--nrs-qa-0020-ALB_sg-0d5d5e29b3fe49942" {
  description = "access to the nrs-qa ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.65.0/24"]
    description = " Academic Technology VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "VPN tunnel for LTS (OIS)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "VPN tunnel for LTS (OIS)"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.86.0/24"]
    description = "#provost vpn"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32"]
    description = "Docker QA cloud:  ltsds-cloud-qa-5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32"]
    description = "Docker QA cloud:  ltsds-cloud-qa-5"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.166.131/32"]
    description = "qa-3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.140/32"]
    description = "Docker QA cloud:  ltsds-cloud-qa-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.140/32"]
    description = "Docker QA cloud:  ltsds-cloud-qa-4"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.166.154/32"]
    description = "Docker QA cloud:  ltsds-cloud-qa-3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.154/32"]
    description = "Docker QA cloud:  ltsds-cloud-qa-3"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.166.170/32"]
    description = "qa-5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.176/32"]
    description = "Docker QA cloud:  ltsds-cloud-qa-1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.176/32"]
    description = "Docker QA cloud:  ltsds-cloud-qa-1"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.166.22/32", "10.137.166.26/32", "10.137.166.27/32", "10.137.167.20/32", "10.137.167.22/32", "10.137.167.24/32", "10.137.167.28/32", "10.137.167.29/32", "10.137.167.30/32"]
    description = "K8S QA"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.37/32"]
    description = "qa-1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.224/32"]
    description = "Docker QA cloud:  ltsds-cloud-qa-2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.224/32"]
    description = "Docker QA cloud:  ltsds-cloud-qa-2"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.167.89/32"]
    description = "qa-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.90/32"]
    description = "DSpace 6 QA"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.90/32"]
    description = "DSpace 6 QA"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.171.53/32"]
    description = "qa-2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.17/32"]
    description = "ldi-8"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.17/32"]
    description = "ldi-8"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.229.21/32"]
    description = "Docker QA on-prem:  ltsds-qa-2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.229.21/32"]
    description = "Docker QA on-prem:  ltsds-qa-2"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.229.29/32"]
    description = "Docker QA on-prem:  ltsds-qa-1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.229.29/32"]
    description = "Docker QA on-prem:  ltsds-qa-1"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.229.31/32"]
    description = "Docker QA on-prem:  ltsds-qa-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.229.31/32"]
    description = "Docker QA on-prem:  ltsds-qa-4"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "nrs-qa ALB"

  tags = {
    product = "Naming Service - NRS"
  }

  tags_all = {
    product = "Naming Service - NRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--nrs-qa-db_sg-0e661cc4a65940e8e" {
  description = "access to nrs-qa PostgreSQL instance"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32"]
    description = "access from ltsds-cloud-qa-5"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.166.131/32"]
    description = "qa-3"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.166.140/32"]
    description = "access from ltsds-cloud-qa-4"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.166.154/32"]
    description = "access from ltsds-cloud-qa-3"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.166.170/32"]
    description = "qa-5"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.166.176/32"]
    description = "access from ltsds-cloud-qa-1"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.166.22/32", "10.137.166.26/32", "10.137.166.27/32", "10.137.167.20/32", "10.137.167.22/32", "10.137.167.24/32", "10.137.167.28/32", "10.137.167.29/32", "10.137.167.30/32"]
    description = "K8S QA"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.166.37/32"]
    description = "qa-1"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.167.224/32"]
    description = "access from ltsds-cloud-qa-2"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.167.89/32"]
    description = "qa-4"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.171.53/32"]
    description = "qa-2"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name = "nrs-qa-db"

  tags = {
    product = "Naming Service - NRS"
  }

  tags_all = {
    product = "Naming Service - NRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--nrs-qa-redis_sg-0208ef64a53021360" {
  description = "access to ElastiCache for NRS QA hosts"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32", "10.137.166.140/32", "10.137.166.154/32", "10.137.166.176/32", "10.137.167.224/32"]
    description = "Docker QA hosts"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.137.166.22/32", "10.137.166.26/32", "10.137.166.27/32", "10.137.167.20/32", "10.137.167.22/32", "10.137.167.24/32", "10.137.167.28/32", "10.137.167.29/32", "10.137.167.30/32"]
    description = "K8S QA"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name = "nrs-qa-redis"

  tags = {
    product = "Naming Service - NRS"
  }

  tags_all = {
    product = "Naming Service - NRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--nrsadmin-api-QA-0020-ALB_sg-0b560754c47e4b372" {
  description = "allows connections to port 443 on ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32", "10.137.166.140/32", "10.137.166.154/32", "10.137.166.176/32", "10.137.167.224/32"]
    description = "Docker QA cloud hosts"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.90/32"]
    description = "dspace6-qai"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.14/32"]
    description = "DRS QA running on prod on-prem:  ldi-5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.15/32"]
    description = "ldi-7"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.16/32"]
    description = "ldi-6"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.17/32"]
    description = "ldi-8"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "DRS QA running on prod on-prem:  ldi-3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "DRS QA running on prod on-prem:  ldi-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.229.21/32"]
    description = "Docker QA on-prem:  ltsds-qa-2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.229.29/32"]
    description = "Docker QA on-prem:  ltsds-qa-1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.229.31/32"]
    description = "Docker QA on-prem:  ltsds-qa-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "nrsadmin-api-QA ALB"

  tags = {
    product = "Naming Service - NRS"
  }

  tags_all = {
    product = "Naming Service - NRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--nrsadmin-api-prod-0020-ALB_sg-0be829701ef7e2963" {
  description = "allows connections to port 443 on ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.102/32"]
    description = "Docker cloud prod:  ltsds-cloud-prod-2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.9/32"]
    description = "Docker cloud prod:  ltsds-cloud-prod-5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.36/32"]
    description = "Docker cloud prod:  ltsds-cloud-prod-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.92/32"]
    description = "Docker cloud prod:  ltsds-cloud-prod-1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.17/32"]
    description = "Docker cloud prod:  ltsds-cloud-prod-6"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.182/32"]
    description = "dspace6-prodi"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.213/32"]
    description = "Docker cloud prod:  ltsds-cloud-prod-3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.14/32"]
    description = "Docker on-prem prod:  ldi-5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.15/32"]
    description = "ldi-7"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.16/32"]
    description = "Docker on-prem prod: ldi-6"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.17/32"]
    description = "ldi-8"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "Docker on-prem prod:  ldi-3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "Docker on-prem prod:  ldi-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.147.138/32"]
    description = "Docker on-prem prod:  ldi-1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.147.139/32"]
    description = "Docker on-prem prod:  ldi-2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "nrsadmin-api-prod ALB"

  tags = {
    product = "Naming Service - NRS"
  }

  tags_all = {
    product = "Naming Service - NRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--nrsadmin-prod-0020-ALB_sg-0c9d198bb28cac1b1" {
  description = "allows access to port 443 on nrsadmin-prod ALB (NRS admin UI)"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.128.0/24"]
    description = "VPN tunnel for Schlesinger (RAD)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "VPN tunnel for HCL"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.230.0/24"]
    description = "VPN tunnel for Art Museums"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24"]
    description = "VPN tunnel for Law"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "VPN tunnel for HUL"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.61.0/24"]
    description = "VPN tunnel for Divinity"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "VPN tunnel for LTS (OIS)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.84.0/24"]
    description = "VPN tunnel for Gutman (GSE)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.91.0/24"]
    description = "VPN tunnel for Arnold Arboretum"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.116.176.0/24"]
    description = "VPN tunnel for Countway (MED)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.14/32"]
    description = "ldi-5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.15/32"]
    description = "ldi-7"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.16/32"]
    description = "ldi-6"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "ldi-3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "ldi-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.24.230/32"]
    description = "ART VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "nrsadmin-prod ALB"

  tags = {
    product = "Naming Service - NRS"
  }

  tags_all = {
    product = "Naming Service - NRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--nrsadmin-qa-0020-ALB_sg-005b7a1a0724bd1b6" {
  description = "access to the nrsadmin-qa ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.128.0/24"]
    description = "VPN tunnel for Schlesinger (RAD)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "VPN tunnel for HCL"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24"]
    description = "VPN tunnel for Law"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "VPN tunnel for HUL"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.61.0/24"]
    description = "VPN tunnel for Divinity"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "VPN tunnel for LTS (OIS)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.84.0/24"]
    description = "VPN tunnel for Gutman (GSE)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.91.0/24"]
    description = "VPN tunnel for Arnold Arboretum"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.116.176.0/24"]
    description = "VPN tunnel for Countway (MED)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.15/32"]
    description = "Ldi-7"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.16/32"]
    description = "Ldi-6"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.17/32"]
    description = "ldi-8"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "nrsadmin-qa ALB"

  tags = {
    product = "Naming Service - NRS"
  }

  tags_all = {
    product = "Naming Service - NRS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--old-0020-Docker-0020-Prod-0020-EFS-0020-access_sg-0b6d019b7cb2098ca" {
  description = "old Docker Prod EFS access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    from_port   = "0"
    protocol    = "udp"
    self        = "false"
    to_port     = "65535"
  }

  name = "old Docker Prod EFS access"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--open-0020-to-0020-HCL-0020-and-0020-HUL-0020-VPN-0020-tunnels-0020-on-0020-80-0020-and-0020-443_sg-019858ff21b1d9019" {
  description = "open to HCL and HUL VPN tunnels on 80 and 443"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL vpn"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL vpn"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL vpn"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL vpn"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.224.166/32"]
    description = "HCL External IP"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.59/32"]
    description = "HUL External IP"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.24.166/32"]
    description = "HCL External Alt IP"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.24.59/32"]
    description = "HUL External IP"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "open to HCL and HUL VPN tunnels on 80 and 443"

  tags = {
    Name        = "HCL and HUL 80/443"
    environment = "Test"
    product     = "LTS Infrastructure"
  }

  tags_all = {
    Name        = "HCL and HUL 80/443"
    environment = "Test"
    product     = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--open-0020-to-0020-all-0020-on-0020-8443_sg-01bedaaeedf1ee02d" {
  description = "opens port 8443 to the world"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "8443 open to the world"
    from_port   = "8443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8443"
  }

  name = "open to all on 8443"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--primo-api_sg-031ae6dfe007e8ffe" {
  description = "primo-api"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24", "10.137.171.0/24", "10.137.173.0/24"]
    from_port   = "5000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5000"
  }

  ingress {
    cidr_blocks = ["10.137.171.0/24"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "primo-api"

  tags = {
    product = "Alma"
  }

  tags_all = {
    product = "Alma"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--prod_alb_sg_api_sg-0b604666012a1a3be" {
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

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "lzprod"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "prod_alb_sg_api"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--prod_alb_sg_priv_sg-0cb85c28c29797c57" {
  description = "Allow incoming traffic to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
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
    cidr_blocks = ["10.1.79.0/24"]
    description = "Allow all inbound traffic"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.143.17.0/24"]
    description = "lzprod"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s lzp"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.15/32"]
    description = "LDI-7"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.17/32"]
    description = "LDI-8"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "LDI-3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "LDI-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "prod_alb_sg_priv"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--prod_alb_sg_srv_sg-0a43d963fb62d73b8" {
  description = "Allow incoming traffic to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow HTTP redirect"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.65.0/24"]
    description = "ACADEMICTECH VPN Tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.167.72/32"]
    description = "Allow all inbound traffic"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.86.0/24"]
    description = "Provost VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.10/32", "10.137.167.12/32", "10.137.167.15/32", "10.137.167.19/32", "10.137.167.23/32", "10.137.167.27/32"]
    description = "Allow inbound worker"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.182/32", "3.236.169.0/24"]
    description = "DASH"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.198/32", "10.137.167.199/32", "10.137.167.200/32"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.143.17.0/24"]
    description = "lzprod"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "k8s lzp"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.37.10.0/26", "10.37.10.64/26"]
    description = "Humanities Research Computing VPC"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.15/32"]
    description = "LDI-7"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.17/32"]
    description = "LDI-8"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "LDI-3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "LDI-4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32"]
    description = "Ext VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.24.79/32"]
    description = "External VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "prod_alb_sg_srv"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--prod_plg_mysql_sg-05cb04739fc002507" {
  description = "Prod plg mysql access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24", "10.137.167.0/24"]
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "prod_plg_mysql"

  tags = {
    Name = "prod_plg_mysql"
  }

  tags_all = {
    Name = "prod_plg_mysql"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--qa-plg-mysql_sg-0fd8d0467f129a5f4" {
  description = "Access to QA PLG Mysql"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24", "10.137.167.0/24"]
    description = "RKE QA"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "qa-plg-mysql"

  tags = {
    Name = "qa-plg-mysql"
  }

  tags_all = {
    Name = "qa-plg-mysql"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--qa_alb_sg_api_sg-083806157cf05421a" {
  description = "Allow incoming traffic to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.144.12.0/22"]
    description = "Allow all inbound traffic"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.143.17.0/24"]
    description = "lzprod"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "k8s lzp"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "qa_alb_sg_api"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--qa_alb_sg_priv_sg-0274255892f65951c" {
  description = "Allow incoming traffic to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow HTTP redirect"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.65.0/24"]
    description = "INC05675597"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.65.0/24"]
    description = "academictech VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.86.0/24"]
    description = "PROVOST vpn tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.22/32", "10.137.166.26/32", "10.137.166.27/32"]
    description = "k8 server node"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.20/32"]
    description = "k8 Worker node"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.167.22/32", "10.137.167.24/32", "10.137.167.28/32", "10.137.167.29/32", "10.137.167.30/32"]
    description = "k8 worker node"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.143.17.0/24"]
    description = "lzprod"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s lzp"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.37.10.0/26", "10.37.10.64/26", "10.37.8.0/22"]
    description = "INC05675597"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "qa_alb_sg_priv"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--qa_alb_sg_sg-050549705cd17077c" {
  description = "Allow incoming traffic to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "HCL VPN"
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
    cidr_blocks = ["10.1.65.0/24", "10.37.10.0/26", "10.37.10.64/26", "10.37.8.0/22"]
    description = "INC05675597"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
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
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.166.22/32", "10.137.166.26/32", "10.137.166.27/32", "10.137.167.20/32", "10.137.167.22/32", "10.137.167.24/32", "10.137.167.28/32", "10.137.167.29/32", "10.137.167.30/32", "10.143.17.0/24"]
    description = "K8S Nodes"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.166.22/32", "10.137.166.26/32", "10.137.166.27/32", "10.137.167.20/32", "10.137.167.22/32", "10.137.167.24/32", "10.137.167.28/32", "10.137.167.29/32", "10.137.167.30/32"]
    description = "K8S Nodes"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.138.21.160/32", "10.138.21.161/32", "10.138.21.162/32", "10.138.22.100/32", "10.138.22.101/32", "10.138.22.102/32", "10.138.22.90/32", "10.138.22.91/32", "10.138.22.93/32"]
    description = "K8S Dev access"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s LZP"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "K8s LZP"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    description = "OIS VPN External"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "qa_alb_sg"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--qa_alb_sg_srv_sg-0d87a7878690a2714" {
  description = "Allow incoming traffic to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.137.165.33/32", "10.137.166.140/32", "10.137.166.154/32", "10.137.166.176/32", "10.137.166.22/32", "10.137.166.26/32", "10.137.166.27/32", "10.137.167.20/32", "10.137.167.22/32", "10.137.167.224/32", "10.137.167.24/32", "10.137.167.28/32", "10.137.167.29/32", "10.137.167.30/32", "10.137.167.72/32"]
    description = "Allow all inbound traffic"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "80 to 443 redirect"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.167.90/32"]
    description = "DASH QA"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.143.17.0/24"]
    description = "lzprod"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.143.25.128/25"]
    description = "k8s lzp"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.4.15/32", "10.40.4.17/32", "10.40.4.26/32", "10.40.4.27/32"]
    description = "NRS access from LDI-N"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "qa_alb_sg_srv"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--rds-ec2-1_sg-0bdffa833c41a902e" {
  description = "Security group attached to drs2qa to allow EC2 instances with specific security groups attached to connect to the database. Modification could lead to connection loss."

  ingress {
    description     = "Rule to allow connections from EC2 instances with sg-0dcbf8fbc90b12017 attached"
    from_port       = "8223"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ec2-rds-1_sg-0dcbf8fbc90b12017_id}"]
    self            = "false"
    to_port         = "8223"
  }

  name   = "rds-ec2-1"
  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--rds-launch-wizard-1_sg-24ef566d" {
  description = "Created from the RDS Management Console: 2018/04/16 17:13:22"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["128.103.151.239/32"]
    from_port   = "8003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8003"
  }

  name = "rds-launch-wizard-1"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--rds-launch-wizard-2_sg-46d0fd0f" {
  description = "Created from the RDS Management Console: 2018/04/27 16:59:28"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["128.103.151.77/32"]
    from_port   = "8403"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8403"
  }

  name = "rds-launch-wizard-2"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--s3lookup-0020-dev-0020-access-0020-to-0020-prod_sg-073ddb9e03b31ff40" {
  description = "Allows the Dev K8S cluster access to a prod lookup service"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.166.22/32", "10.137.166.26/32", "10.137.166.27/32", "10.137.167.20/32", "10.137.167.22/32", "10.137.167.24/32", "10.137.167.28/32", "10.137.167.29/32", "10.137.167.30/32", "10.138.21.160/32", "10.138.21.161/32", "10.138.21.162/32", "10.138.22.100/32", "10.138.22.101/32", "10.138.22.102/32", "10.138.22.90/32", "10.138.22.91/32", "10.138.22.93/32"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "s3lookup dev access to prod"

  tags = {
    Name = "s3lookup"
  }

  tags_all = {
    Name = "s3lookup"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--selfcheck_sg-03eede301e4dc217e" {
  description = "self-check machines in the libraries"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN Tunnel"
    from_port   = "5001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5100"
  }

  ingress {
    cidr_blocks = ["10.108.100.14/32"]
    description = "HKS"
    from_port   = "5001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5100"
  }

  ingress {
    cidr_blocks = ["10.119.134.11/32", "134.174.140.132/32", "134.174.151.13/32"]
    description = "MED"
    from_port   = "5001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5100"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.170.152/32"]
    description = "DES"
    from_port   = "5001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5100"
  }

  ingress {
    cidr_blocks = ["128.103.177.223/32"]
    description = "GUT"
    from_port   = "5001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5100"
  }

  ingress {
    cidr_blocks = ["131.142.144.81/32"]
    description = "WOL"
    from_port   = "5001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5100"
  }

  ingress {
    cidr_blocks = ["140.247.128.180/32"]
    description = "LAM"
    from_port   = "5001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5100"
  }

  ingress {
    cidr_blocks = ["140.247.128.202/32"]
    description = "LAM_LOCK"
    from_port   = "5001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5100"
  }

  ingress {
    cidr_blocks = ["140.247.141.171/32", "140.247.141.176/32"]
    description = "CAB"
    from_port   = "5001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5100"
  }

  name = "selfcheck"

  tags = {
    Name    = "selfcheck"
    product = "Alma"
  }

  tags_all = {
    Name    = "selfcheck"
    product = "Alma"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--ssh-0020-into-0020-stats-002F-logfile-0020-host_sg-56d3801d" {
  description = "allow ssh from HAproxy hosts"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["128.103.147.140/32"]
    description = "simon"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.147.141/32"]
    description = "garfunkel"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.147.142/32"]
    description = "lts-vip"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "ssh into stats/logfile host"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--ssh-002F-sftp-0020-access-0020-from-0020-Docker-0020-hosts_sg-003e8b3d2765f6da4" {
  description = "allows Docker hosts (dev, QA, \u0026 prod) to ssh in"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.166.22/32", "10.137.166.26/32", "10.137.167.20/32", "10.137.167.22/32", "10.137.167.24/32", "10.137.167.28/32", "10.137.167.29/32", "10.137.167.30/32"]
    description = "k8 qa"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.166.27/32"]
    description = "k8 qa"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.167.10/32", "10.137.167.12/32", "10.137.167.15/32", "10.137.167.19/32", "10.137.167.198/32", "10.137.167.199/32", "10.137.167.200/32", "10.137.167.23/32", "10.137.167.27/32"]
    description = "k8 prod"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.160/32", "10.138.21.161/32", "10.138.21.162/32", "10.138.22.100/32", "10.138.22.101/32", "10.138.22.102/32", "10.138.22.90/32", "10.138.22.91/32", "10.138.22.93/32"]
    description = "K8 dev"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "ssh/sftp access from Docker hosts"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--tableau_sg-9fa661d7" {
  description = "tableau"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HTTP from HUL VPN Tunnel"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HTTPS from HUL VPN Tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "Tableau from HUL OIS Tunnel"
    from_port   = "8000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8000"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "HTTP from OIS VPN Tunnel"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "HTTPS from OIS VPN Tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "RDP from OIS VPN"
    from_port   = "3389"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3389"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "Tableau from HUL VPN Tunnel"
    from_port   = "8000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8000"
  }

  ingress {
    cidr_blocks = ["10.11.111.0/24"]
    description = "ITISADMIN (IAM HKEY)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "tableau"

  tags = {
    Name    = "Tableau"
    product = "Library Dashboard"
  }

  tags_all = {
    Name    = "Tableau"
    product = "Library Dashboard"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--tattler-0020-ssh-0020-in_sg-42ed8b3e" {
  description = "allow ssh from tattler"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.147.138/32"]
    description = "ldi-1"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.147.152/32"]
    description = "actual tattler IP"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.147.252/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "tattler ssh in"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--temp_sg-747d3f3c" {
  description = "catch-all for any temporary access needed for set-up, etc"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.160.0/24", "10.137.161.0/24", "10.137.173.0/24"]
    description = "for testing Dockerized EADchecker"
    from_port   = "19127"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19127"
  }

  ingress {
    cidr_blocks = ["10.137.166.5/32"]
    description = "ssh from new osc-qa"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "temp"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--transcribe_sg-099fb62f4e7a634b1" {
  description = "Fromthepage app"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "Dev Docker"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "transcribe"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--vireo3-prod_sg-1ecb4257" {
  description = "vireo3-prod"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.168.0/24", "10.137.169.0/24", "10.137.170.0/24"]
    description = "Levl4 access"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name = "vireo3-prod"

  tags = {
    product = "ETDS"
  }

  tags_all = {
    product = "ETDS"
  }

  vpc_id = "vpc-a60437c1"
}

resource "aws_security_group" "tfer--vireo3-qa_sg-b90987f0" {
  description = "vireo3-qa"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.168.0/24", "10.137.169.0/24", "10.137.170.0/24"]
    description = "Levl4 access"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name = "vireo3-qa"

  tags = {
    product = "ETDS"
  }

  tags_all = {
    product = "ETDS"
  }

  vpc_id = "vpc-a60437c1"
}
