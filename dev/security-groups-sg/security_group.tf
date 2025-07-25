resource "aws_security_group" "tfer--80-002F-443-0020-open-0020-to-0020-all-0020-10-002E-x-002E-x-002E-x_sg-990c19ea" {
  description = "80/443 open to internal network"

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
    cidr_blocks = ["10.138.0.0/16"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.0.0/16"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "80/443 open to all 10.x.x.x"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--80-002F-443-0020-open-0020-to-0020-world_sg-f7030385" {
  description = "80/443 open to world"

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

  name = "80/443 open to world"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--Access-Dev_sg-06c4b58e3d031e8f5" {
  description = "Access-Dev"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    description = "External OIS VPN"
    from_port   = "8091"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8091"
  }

  name = "Access-Dev"

  tags = {
    environment = "Development"
    product     = "Access Management Service - AMS"
  }

  tags_all = {
    environment = "Development"
    product     = "Access Management Service - AMS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--Acorn-0020-dev_sg-0d917747fb7870163" {
  description = "access needed for Acorn development"

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
    cidr_blocks = ["10.11.111.0/24"]
    description = "IAM support troubleshooting  INC04143297"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "Acorn dev"

  tags = {
    Name    = "ACORN DEV"
    product = "ACORN Database for the WPC"
  }

  tags_all = {
    Name    = "ACORN DEV"
    product = "ACORN Database for the WPC"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--Allow-0020-MySql-0020-access_sg-08010b14525df362d" {
  description = "Allow MySql access "

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.160/32", "10.138.21.161/32", "10.138.21.162/32"]
    description = "Server Node"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.138.22.100/32", "10.138.22.101/32", "10.138.22.102/32", "10.138.22.90/32", "10.138.22.91/32", "10.138.22.93/32"]
    description = "Worker Node"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name   = "Allow MySql access"
  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--Aspace-0020-QA_sg-0251200be2d40ae0b" {
  description = "Aspace QA (becher.lib)"

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
    from_port   = "8000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10081"
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
    cidr_blocks = ["128.103.0.0/16", "131.142.0.0/16", "134.174.0.0/16", "140.247.0.0/16", "199.94.0.0/16", "213.225.220.0/24", "65.112.8.0/23"]
    from_port   = "10081"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10081"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16", "140.247.0.0/16"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10081"
  }

  ingress {
    cidr_blocks = ["131.142.0.0/16"]
    description = "Center for Astrophysics"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10081"
  }

  ingress {
    cidr_blocks = ["134.174.0.0/16"]
    description = "Longwood Medical area"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10081"
  }

  ingress {
    cidr_blocks = ["199.94.0.0/16"]
    description = "Business School"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10081"
  }

  ingress {
    cidr_blocks = ["213.225.220.0/24"]
    description = "Berenson"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10081"
  }

  ingress {
    cidr_blocks = ["65.112.8.0/23"]
    description = "secure wireless"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10081"
  }

  name = "Aspace QA"

  tags = {
    product = "ArchivesSpace"
  }

  tags_all = {
    product = "ArchivesSpace"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--Base-0020-DevOps-0020-Rules_sg-af8031d3" {
  description = "Basic ports open to the 151 and OIS VPN"

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
    cidr_blocks = ["10.1.79.0/24", "128.103.224.79/32", "128.103.24.79/32"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "128.103.224.79/32", "128.103.24.79/32"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "#ois VPN tunnel"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
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
    description = "OISVPN"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "Tomcat to the OIS VPN"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "for debugging apps"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
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
    from_port   = "3389"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3389"
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
    cidr_blocks = ["10.137.242.0/26", "10.34.64.128/26", "10.34.64.64/26"]
    description = "Logic Monitor"
    from_port   = "161"
    protocol    = "udp"
    self        = "false"
    to_port     = "161"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/26", "10.34.64.128/26", "10.34.64.64/26"]
    description = "Logic Monitor"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/26", "10.34.64.128/26", "10.34.64.64/26"]
    description = "LogicMonitor to RPC"
    from_port   = "135"
    protocol    = "tcp"
    self        = "false"
    to_port     = "135"
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
    cidr_blocks = ["10.138.22.90/32"]
    description = "Postgres 90"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.22.93/32"]
    description = "Postgres "
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.23.0/24"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.224.59/32", "128.103.24.59/32"]
    description = "HUL Tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    description = "OIS VPN"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32"]
    description = "external IP for #ois VPN tunnel"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "Base DevOps Rules"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--Curiosity_sg-00bc360a7c8d9548d" {
  description = "Allow RKE access "

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
    cidr_blocks = ["10.1.79.0/24"]
    description = "VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.160/32"]
    description = "RKE2 SRV1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.161/32"]
    description = "RKE2 SRV2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.162/32"]
    description = "RKE2 SRV3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.22.100/32"]
    description = "RKE2 W3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.22.101/32"]
    description = "RKE2 W4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.22.102/32"]
    description = "RKE2 W5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.22.3/32"]
    description = "RKE2 W6"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.22.90/32"]
    description = "RKE2 W1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.22.91/32"]
    description = "RKE2 W2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "Curiosity"
  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--DAIS-DEV-Rabbit_sg-07001fdbef16ca031" {
  description = "DAIS dev rabbit MQ broker access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name = "DAIS-DEV-Rabbit"

  tags = {
    product = "DAIS"
  }

  tags_all = {
    product = "DAIS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--DRS-0020-Metadata-0020-server-0020---0020-dev_sg-0310d30bbdfcfd5f9" {
  description = "access to drsmdsrv"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.16/32"]
    description = "lcapi-dev1.lts.harvard.edu"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "DRS Metadata server - dev"

  tags = {
    product = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    product = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--DRS-Dropbox-Access_sg-001d3eb0332fb61e2" {
  description = "DRS Dropbox Access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.167.216/32"]
    description = "Access from clue.lib"
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
    cidr_blocks = ["10.138.21.160/32", "10.138.21.161/32", "10.138.21.162/32", "10.138.22.100/32", "10.138.22.101/32", "10.138.22.102/32", "10.138.22.90/32", "10.138.22.91/32", "10.138.22.93/32"]
    description = "kubernetes node"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.181/32"]
    description = "drs2drop-dev.hul.harvard.edu"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.12.189/32"]
    description = "Starfish 3"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.40.12.190/32"]
    description = "Starfish 4"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.40.13.110/32"]
    description = "Starfish 1"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.40.13.111/32"]
    description = "Starfish 2"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["128.103.147.145/32"]
    description = "Access from doyle"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["128.103.64.157/32"]
    description = "ssh from doyle"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "DRS-Dropbox-Access"

  tags = {
    product = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    product = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--DRS-FILE-API-DEV_sg-0474665369d842559" {
  description = "Access to drs-file-api-dev"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
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
    cidr_blocks = ["10.138.21.109/32", "10.138.21.170/32", "10.138.21.204/32", "10.138.21.43/32", "10.138.21.90/32"]
    description = "docker"
    from_port   = "10780"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10780"
  }

  ingress {
    cidr_blocks = ["10.40.12.189/32"]
    description = "Starfish 3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.12.190/32"]
    description = "Starfish 4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.13.110/32"]
    description = "Starfish 1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.40.13.111/32"]
    description = "Starfish 2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.147.145/32"]
    description = "doyle"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "DRS-FILE-API-DEV"

  tags = {
    Name    = "drs-file-api-dev"
    product = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    Name    = "drs-file-api-dev"
    product = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--DRSMQSRV-dev_sg-0e814fc37dff36524" {
  description = "DRS Dev Message Queue"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    from_port   = "8000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9000"
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
    description = "docker node 2"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["10.138.21.170/32"]
    description = "docker node 4"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["10.138.21.204/32"]
    description = "docker node 1"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["10.138.21.43/32"]
    description = "docker node 3"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["10.138.21.90/32"]
    description = "docker node 5"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  name = "DRSMQSRV-dev"

  tags = {
    product = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    product = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--Dash6-dev_sg-e6212c92" {
  description = "Dash dev group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.4.0/23"]
    description = "Gencomm VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.4.0/23"]
    description = "gencomm VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
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
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["10.137.165.84/32"]
    description = "sync"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.167.182/32"]
    description = "rsyncs from prod dash"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.167.90/32"]
    description = "ssh from dspace6-qai"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.137.171.230/32"]
    description = "dashprod db"
    from_port   = "8004"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8004"
  }

  ingress {
    cidr_blocks = ["10.137.172.0/24"]
    description = "dblink from prod database"
    from_port   = "8004"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8004"
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
    cidr_blocks = ["10.138.0.0/16"]
    description = "Open to entire dev subnet"
    from_port   = "8004"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8004"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "so Docker dev hosts can access DASH healthcheck, per INC05001199"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.136.0/24"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["140.247.136.0/24"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "Dash6-dev"

  tags = {
    product = "DASH"
  }

  tags_all = {
    product = "DASH"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--DocumentDB_sg-07ade45bf178d5b51" {
  description = "DDB port"

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
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "VPC"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  name = "DocumentDB"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--EFS-0020-access_sg-60407712" {
  description = "for connecting to EFS storage"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.208/32"]
    description = "Nextcloud"
    from_port   = "2049"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2049"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24", "10.138.24.0/24", "10.140.210.0/24"]
    from_port   = "0"
    protocol    = "udp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24", "10.138.24.0/24"]
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

  ingress {
    cidr_blocks = ["10.138.22.0/24"]
    description = "Add NFS tes"
    from_port   = "2049"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2049"
  }

  ingress {
    cidr_blocks = ["10.138.22.0/24"]
    description = "Add NFS test"
    from_port   = "111"
    protocol    = "udp"
    self        = "false"
    to_port     = "111"
  }

  ingress {
    cidr_blocks = ["10.138.22.0/24"]
    description = "Add NFS test"
    from_port   = "2049"
    protocol    = "udp"
    self        = "false"
    to_port     = "2049"
  }

  ingress {
    cidr_blocks = ["10.138.22.0/24"]
    description = "Test NFS"
    from_port   = "111"
    protocol    = "tcp"
    self        = "false"
    to_port     = "111"
  }

  ingress {
    cidr_blocks = ["10.140.210.0/24"]
    description = "All NFS"
    from_port   = "111"
    protocol    = "udp"
    self        = "false"
    to_port     = "111"
  }

  ingress {
    cidr_blocks = ["10.140.210.0/24"]
    description = "Allow SANDBOX NFS"
    from_port   = "2049"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2049"
  }

  name = "EFS access"

  tags = {
    Name    = "EFS access"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "EFS access"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--ELB_REQ_GROUP_sg-6f935d1c" {
  description = "Required for Cloud Shield health check"

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

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--ElasticSearch_sg-016f3e0d9e124044f" {
  description = "Access for ElasticSearch"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "Standard Subnet"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "ElasticSearch"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--FIG-0020-Dev_sg-a05814d0" {
  description = "FIG Dev"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "128.103.224.79/32"]
    from_port   = "10023"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10223"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "FIG Dev"

  tags = {
    product = "Find It at Google - FIG"
  }

  tags_all = {
    product = "Find It at Google - FIG"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--FTS-0020-to-0020-Docker-0020-Dev-0020-Env_sg-02d39639cbeff2bce" {
  description = "FTS to Docker Dev Env."

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "Docker Dev. "
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "FTS to Docker Dev Env"

  tags = {
    product = "Full Text Search Service - FTS"
  }

  tags_all = {
    product = "Full Text Search Service - FTS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--HDC-DASHv7-DEV_sg-07425bb55d22ebdc3" {
  description = "HDC-DASHv7-DEV"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "#HUL VPN Tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "HDC-DASHv7-DEV"

  tags = {
    Name    = "HDC-DASHv7-DEV"
    product = "Harvard Data Commons - HDC"
  }

  tags_all = {
    Name    = "HDC-DASHv7-DEV"
    product = "Harvard Data Commons - HDC"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--HDC3B_sg-098c538cab85ea9ee" {
  description = "Access to hdc3b-dev"

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
    cidr_blocks = ["10.138.21.109/32", "10.138.21.170/32", "10.138.21.204/32", "10.138.21.43/32", "10.138.21.90/32"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.138.21.109/32"]
    description = "docker 2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.170/32"]
    description = "docker 4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.204/32"]
    description = "docker 1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.43/32"]
    description = "docker 3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.57/32"]
    description = "dev-dspace6"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.57/32"]
    description = "dev-dspace6"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.138.21.90/32"]
    description = "docker 5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "HDC3B"

  tags = {
    Name    = "hdc3b"
    product = "Harvard Data Commons - HDC"
  }

  tags_all = {
    Name    = "hdc3b"
    product = "Harvard Data Commons - HDC"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--HTTP-002F-S-0020-access-0020-for-0020-external-0020-VPC-0020-addresses_sg-0e30e9a824a7dd046" {
  description = "Allows HTTP/S connections from inside the VPCs, via their external IP addresses"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["3.236.169.128/27"]
    description = "external IP addresses for prod VPC"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["3.236.169.128/27"]
    description = "external IP addresses for prod VPC"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["3.236.67.96/27"]
    description = "external IP addresses for dev VPC"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["3.236.67.96/27"]
    description = "external IP addresses for dev VPC"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "HTTP/S access for external VPC addresses"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--HTTP-002F-S-0020-open-0020-to-0020-VPN_sg-0e2ed475e63f6cedd" {
  description = "Web ports open only to Harvard VPN tunnels, for dev testing"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.0.0/16"]
    description = "internal connections"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.0.0/16"]
    description = "internal connections"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.224.0/24", "128.103.24.0/24"]
    description = "external connections"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.0/24", "128.103.24.0/24"]
    description = "external connections"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "HTTP/S open to VPN"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--Harvard-0020-Depository-0020---0020-dev-0020-VPC_sg-0cea0b5f287d314d7" {
  description = "for dev \u0026 test hosts"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "3.234.88.62/32", "34.201.186.189/32", "52.203.96.232/32", "52.204.241.226/32", "52.5.29.0/24", "54.91.30.0/24"]
    from_port   = "19092"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19092"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "3.234.88.62/32", "34.201.186.189/32", "52.203.96.232/32", "52.204.241.226/32"]
    description = "for ReCAP project"
    from_port   = "9092"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9092"
  }

  ingress {
    cidr_blocks = ["10.137.166.249/32"]
    description = "new mycroft in prod VPC"
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
    cidr_blocks = ["10.137.167.72/32"]
    description = "hegel.lib.harvard.edu"
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
    cidr_blocks = ["10.138.17.0/24", "10.138.29.0/24", "52.5.29.0/24", "54.91.30.0/24"]
    description = "ELB"
    from_port   = "9092"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9092"
  }

  ingress {
    cidr_blocks = ["10.138.17.0/24", "10.138.29.0/24"]
    description = "ELB"
    from_port   = "19092"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19092"
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
    cidr_blocks = ["128.103.154.192/26"]
    description = "Progress ports for HD"
    from_port   = "13900"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13999"
  }

  ingress {
    cidr_blocks = ["128.103.154.192/26"]
    description = "Progress ports for HD"
    from_port   = "14900"
    protocol    = "tcp"
    self        = "false"
    to_port     = "14999"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    description = "#ois VPN external IP"
    from_port   = "19092"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19092"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    description = "#ois VPN external IP"
    from_port   = "9092"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9092"
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
    cidr_blocks = ["52.202.255.64/26"]
    description = "LogicMonitor"
    from_port   = "19092"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19092"
  }

  name = "Harvard Depository - dev VPC"

  tags = {
    product = "HD Inventory - Progress"
  }

  tags_all = {
    product = "HD Inventory - Progress"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--IDS-0020-Dev_sg-0332528201569522e" {
  description = "IDS Dev"

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
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.160/32"]
    description = "Arbus"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  name = "IDS Dev"

  tags = {
    product = "Image Delivery Service - IDS"
  }

  tags_all = {
    product = "Image Delivery Service - IDS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--IIIF-0020-dev_sg-0767f478" {
  description = "access to ports for IIIF dev instance"

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
    cidr_blocks = ["10.1.79.0/24"]
    from_port   = "5000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5000"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    from_port   = "8000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8000"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    from_port   = "8090"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8090"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    from_port   = "9300"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9300"
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
    from_port   = "9200"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9200"
  }

  name = "IIIF dev"

  tags = {
    product = "Harvard Library Viewer - MIRADOR"
  }

  tags_all = {
    product = "Harvard Library Viewer - MIRADOR"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--IIIF-MPS-DB-DEV_sg-0d4419d68ee52a984" {
  description = "Access to IIIF MPS Dev DBs"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.109/32", "10.138.21.170/32", "10.138.21.204/32", "10.138.21.43/32", "10.138.21.90/32"]
    description = "Docker Dev Nodes"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.21.160/32", "10.138.21.161/32", "10.138.21.162/32", "10.138.22.100/32", "10.138.22.101/32", "10.138.22.102/32", "10.138.22.90/32", "10.138.22.91/32"]
    description = "K8S Node"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name = "IIIF-MPS-DB-DEV"

  tags = {
    product = "Harvard Library Viewer - MIRADOR"
  }

  tags_all = {
    product = "Harvard Library Viewer - MIRADOR"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--JSTOR_DEV_Rabbit_sg-07cbcd9a85efb8cc2" {
  description = "sec grp for JSTOR_DEV_Rabbit"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "docker dev servers"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "docker dev servers"
    from_port   = "8162"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8162"
  }

  name = "JSTOR_DEV_Rabbit"

  tags = {
    Name        = "JSTOR_DEV_Rabbit"
    environment = "Development"
    product     = "JSTOR Forum"
  }

  tags_all = {
    Name        = "JSTOR_DEV_Rabbit"
    environment = "Development"
    product     = "JSTOR Forum"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--Jenkins_sg-0099c9986d1cb486e" {
  description = "open port 8080 to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/24", "10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.16.0/24", "10.138.17.0/24"]
    description = "TEMP TEST"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "ALB subnets"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["10.37.240.106/32", "10.37.240.136/32"]
    description = "Github"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.37.240.106/32", "10.37.240.136/32"]
    description = "Github"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["10.37.243.0/24", "10.37.244.0/24", "10.37.245.0/24"]
    description = "HUIT Github Hooks"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "Jenkins"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--MPS-IIIF-ADMIN-DEV_sg-0ea5b1bba90711186" {
  description = "Dev mps iiif admin"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.65.0/24", "128.103.224.65/32", "128.103.24.65/32"]
    description = "webs vpn tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.109/32", "10.138.21.170/32", "10.138.21.204/32", "10.138.21.43/32", "10.138.21.90/32"]
    description = "Docker Nodes"
    from_port   = "22000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "23050"
  }

  ingress {
    cidr_blocks = ["3.236.67.96/27"]
    description = "external IPs of dev VPC - for Academic Technology"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "MPS-IIIF-ADMIN-DEV"

  tags = {
    Name    = "MPS-IIIF-ADMIN-Dev"
    product = "Media Presentation Service - MPS"
  }

  tags_all = {
    Name    = "MPS-IIIF-ADMIN-Dev"
    product = "Media Presentation Service - MPS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--MPS-IIIF_sg-0f9b271d82739da5e" {
  description = "MPS IIIF"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.65.0/24"]
    description = "WEBS VPN tunnel"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["128.103.224.65/32", "128.103.24.65/32"]
    description = "WEBS VPN Tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["3.236.67.96/27"]
    description = "from dev VPC, as external access"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "MPS-IIIF"

  tags = {
    Name    = "MPS IIIF"
    product = "Media Presentation Service - MPS"
  }

  tags_all = {
    Name    = "MPS IIIF"
    product = "Media Presentation Service - MPS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--NRS-0020-dev_sg-fe9b618f" {
  description = "possibly redundant open access rules for NRS dev"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24", "10.1.79.0/24"]
    description = "VPN"
    from_port   = "12880"
    protocol    = "tcp"
    self        = "false"
    to_port     = "12881"
  }

  ingress {
    cidr_blocks = ["10.1.65.0/24"]
    description = "WEBS VPN Tunnel"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24", "128.103.224.79/32", "128.193.229.0/24"]
    from_port   = "10031"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10031"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "128.103.224.79/32"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "#ois VPN tunnel, internal addresses"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.129/32"]
    description = "eve server"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.137.165.129/32"]
    description = "eve. server"
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
    cidr_blocks = ["10.137.167.90/32"]
    description = "dspace6-qai"
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
    description = "Docker Dev Cloud Nodes"
    from_port   = "12880"
    protocol    = "tcp"
    self        = "false"
    to_port     = "12881"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "connections from Docker dev hosts"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "connections from Docker dev hosts"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.138.21.53/32"]
    description = "flynn"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.53/32"]
    description = "flynn"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.138.21.57/32"]
    description = "dspace6-dev, per INC04330982"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.97/32"]
    description = "hdc-dev1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.97/32"]
    description = "hdc-dev1"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.138.24.0/24", "10.138.26.0/24"]
    description = "ALB"
    from_port   = "12880"
    protocol    = "tcp"
    self        = "false"
    to_port     = "12881"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32"]
    description = "#ois VPN tunnel, external address"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "NRS dev"

  tags = {
    product = "Naming Service - NRS"
  }

  tags_all = {
    product = "Naming Service - NRS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--NRS-Sandbox-Redis_sg-09284f63b57ee33f2" {
  description = "Connection to Redis from Sandbox"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.138.21.109/32", "10.138.21.170/32", "10.138.21.204/32", "10.138.21.43/32", "10.138.21.90/32"]
    description = "Docker Cloud Dev"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.140.210.0/26", "10.140.210.64/26"]
    description = "Sandbox Access"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name = "NRS-Sandbox-Redis"

  tags = {
    Name    = "NRS Sandbox Access"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "NRS Sandbox Access"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--NRS-dev-db_sg-0fafd15c474ddde29" {
  description = "PostrgreSQL port open to VPC subnets \u0026 VPN"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "ois VPN tunnel"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24"]
    description = "dev VPC subnet"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name = "NRS-dev-db"

  tags = {
    product = "Naming Service - NRS"
  }

  tags_all = {
    product = "Naming Service - NRS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--Open-0020-to-0020-all-0020-internal-0020-traffic_sg-3cdc7443" {
  description = "open to 10.x.x.x"

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
    cidr_blocks = ["10.0.0.0/8"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.0.0.0/8"]
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

  name = "Open to all internal traffic"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--Open-To-All-Harvard-8080_sg-06f6e87e1374ecd33" {
  description = "Open to all Harvard 8080"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.0.0.0/8", "128.103.0.0/16", "140.247.0.0/16"]
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

  ingress {
    cidr_blocks = ["131.142.0.0/16"]
    description = "Center for Astrophysics"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["134.174.0.0/16"]
    description = "Longwood Medical area"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["199.94.0.0/16"]
    description = "Business School"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["213.225.220.0/24"]
    description = "Berenson"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["65.112.8.0/23"]
    description = "secure wireless"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  name = "Open-To-All-Harvard-8080"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--PDS-0020-Dev_sg-9b0543e9" {
  description = "PDS Dev"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24", "10.1.79.0/24"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24", "10.1.79.0/24"]
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
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    from_port   = "10005"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10005"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    from_port   = "9005"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9005"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name = "PDS Dev"

  tags = {
    Name    = "PDS Dev"
    product = "Page Delivery Service - PDS"
  }

  tags_all = {
    Name    = "PDS Dev"
    product = "Page Delivery Service - PDS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--Postgres-0020-open-0020-to-0020-Docker-0020-dev_sg-05bd7cdc163c17bae" {
  description = "allows Docker dev hosts to connect to PostgreSQL instances"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.109/32"]
    description = "Docker dev 2"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.21.160/32"]
    description = "K8S server"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.21.170/32"]
    description = "Docker dev 4"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.21.204/32"]
    description = "Docker dev 1"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.21.43/32"]
    description = "Docker dev 3"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.21.57/32"]
    description = "temporary for old Dspace dev"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.21.90/32"]
    description = "Docker dev 5"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.22.100/32", "10.138.22.101/32", "10.138.22.102/32"]
    description = "Open to k8S"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.22.90/32", "10.138.22.91/32"]
    description = "K8S host"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.140.210.0/24"]
    description = "SANDBOX ACCESS"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name = "Postgres open to Docker dev"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--RabbitMQ_sg-07ae1cb8ec9b67a26" {
  description = "Rabbit MQ acces to Subnet"

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
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "Rabbit MQ access from Docker subnet"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  name = "RabbitMQ"

  tags = {
    Name    = "RabbitMQ access"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "RabbitMQ access"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--Redis-0020-access-0020-from-0020-Docker-0020-dev-0020-hosts_sg-0652de3b9fb8b260b" {
  description = "allows Docker dev hosts to connect to the Redis port"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.109/32", "10.138.21.170/32", "10.138.21.204/32", "10.138.21.43/32", "10.138.21.90/32"]
    description = "Docker Cloud Dev"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name = "Redis access from Docker dev hosts"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--Redis-0020-cache-0020-access-0020-from-0020-Docker-0020-dev_sg-0bd1dd45454177aef" {
  description = "allows Docker dev hosts to connect to a Redis cache"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.109/32"]
    description = "ltsds-cloud-dev-2"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.138.21.170/32"]
    description = "ltsds-cloud-dev-4"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.138.21.204/32"]
    description = "ltsds-cloud-dev-1"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.138.21.43/32"]
    description = "ltsds-cloud-dev-3"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.138.21.90/32"]
    description = "ltsds-cloud-dev-5"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name = "Redis cache access from Docker dev"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--SDRS_sg-0c964a865b2c42673" {
  description = "Secure DRS Storage Group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.203.0/24"]
    description = "SDRS VPN Tunnel"
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
    cidr_blocks = ["10.138.21.170/32"]
    description = "docker dev 4"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
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
    cidr_blocks = ["10.138.21.43/32"]
    description = "docker dev 3"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.90/32"]
    description = "docker dev 5"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "SDRS"

  tags = {
    product = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    product = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--Solr-0020-Upgrade_sg-0f613e27f6c8e128b" {
  description = "Solr Upgrade "

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "Test output to VPN. "
    from_port   = "5000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5000"
  }

  ingress {
    cidr_blocks = ["10.137.166.205/32"]
    description = "Solr QA 1"
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
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "cross server communication within subnet"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  name = "Solr Upgrade"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--Solr-002F-Zookeeper_sg-2520095a" {
  description = "Solr/Zookeeper Dev "

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN Tunnel (TEMP!)"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "vpn HUL"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN Tunnel"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.165.33/32"]
    description = "ltsds-cloud-qa-5"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.166.140/32"]
    description = "ltsds-cloud-qa-4"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.166.154/32"]
    description = "ltsds-cloud-qa-3"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.166.176/32"]
    description = "ltsds-cloud-qa-1"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.167.0/24"]
    description = "for DCP QA"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.167.224/32"]
    description = "ltsds-cloud-qa-2"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.137.167.39/32"]
    description = "Aspace QA, for testing SOLR 8"
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
    cidr_blocks = ["10.138.21.0/24", "10.138.23.0/24", "10.138.24.0/24", "10.138.26.0/24"]
    description = "open to dev subnet"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "dev subnet"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.160/32", "10.138.21.161/32", "10.138.21.162/32", "10.138.22.100/32", "10.138.22.101/32", "10.138.22.102/32", "10.138.22.90/32", "10.138.22.91/32", "10.138.22.93/32"]
    description = "RKE2 IDS Dev access to ZK"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2181"
  }

  ingress {
    cidr_blocks = ["10.138.21.212/32"]
    description = "pds-dev"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2181"
  }

  ingress {
    cidr_blocks = ["10.138.22.0/24"]
    description = "RKE Node"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.138.22.0/24"]
    description = "solr port from dev subnet"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.138.23.193/32"]
    description = "DCP Dev"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.140.210.0/24"]
    description = "Open to Sandbox"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.40.4.69/32", "128.103.229.0/25"]
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.40.4.69/32", "128.103.229.0/25"]
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2889"
  }

  ingress {
    cidr_blocks = ["10.40.4.69/32"]
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2181"
  }

  ingress {
    cidr_blocks = ["128.103.229.19/32"]
    description = "open to remark"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2181"
  }

  ingress {
    cidr_blocks = ["128.103.229.19/32"]
    description = "remark"
    from_port   = "2181"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2889"
  }

  name = "Solr/Zookeeper"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--alb_console_sg_dev_sg-0f53bfe4205258956" {
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

  name   = "alb_console_sg_dev"
  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--alb_deployment_sg_dev_sg-0c73a685f9c78edf1" {
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

  name   = "alb_deployment_sg_dev"
  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--alb_logging_dev_sg-033f22d95e635f4f1" {
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

  name   = "alb_logging_dev"
  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--all-0020-Harvard-0020-nets-0020--002B--0020-wireless_sg-0252277e65014662e" {
  description = "HTTPS access for primo-dev API server"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16", "140.247.0.0/16"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["131.142.0.0/16"]
    description = "Center for Astrophysics"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["134.174.0.0/16"]
    description = "Longwood Medical area"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["199.94.0.0/16"]
    description = "Business School"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["213.225.220.0/24"]
    description = "Berenson"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["65.112.8.0/23"]
    description = "secure wireless"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["67.134.207.224/28"]
    description = "non-secure wireless"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "all Harvard nets + wireless"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--allow_vpn_access_github_runner_sg-00f310460dc1732ef" {
  description = "Allow inbound traffic from vpn to github instances"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "Any source that needs to be able to use the Rancher UI or API"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
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
    cidr_blocks = ["10.138.16.0/24", "10.138.17.0/24", "10.138.18.0/25", "10.138.19.0/25", "10.138.29.0/24"]
    description = "Load Balancer access to the Rancher UI or API"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "allow_vpn_access_github_runner"
  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--allow_vpn_ingress_to_github-144714_sg-04c0e9df230d4b884" {
  description = "Allow inbound traffic from vpn to github"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "Any source that needs to be able to use the Rancher UI or API"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "Load balancer/proxy that does external SSL termination"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "NodePort port range"
    from_port   = "10250"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10250"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "NodePort port range"
    from_port   = "30000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "32767"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "NodePort port range"
    from_port   = "30000"
    protocol    = "udp"
    self        = "false"
    to_port     = "32767"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "RKE2 server and agent nodes"
    from_port   = "8472"
    protocol    = "udp"
    self        = "false"
    to_port     = "8472"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "RKE2 server needs port 6443 for accessible by other nodes in the cluster"
    from_port   = "6443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "RKE2 server needs port 9345 for accessible by other nodes in the cluster"
    from_port   = "9345"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9345"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "Req for K8S"
    from_port   = "10254"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10254"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "Req for K8S"
    from_port   = "2376"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2376"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "Req for K8S"
    from_port   = "9091"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9091"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
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
    cidr_blocks = ["10.137.242.0/25"]
    description = "Access from Ansible Tower for patching"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.16.0/24", "10.138.17.0/24", "10.138.18.0/25", "10.138.19.0/25", "10.138.29.0/24"]
    description = "HTTPS access from ALB to nodes"
    from_port   = "32001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "32003"
  }

  ingress {
    cidr_blocks = ["10.138.16.0/24", "10.138.17.0/24", "10.138.18.0/25", "10.138.19.0/25", "10.138.29.0/24"]
    description = "Load Balancer access to the Rancher UI or API"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.16.0/24", "10.138.17.0/24", "10.138.18.0/25", "10.138.19.0/25", "10.138.29.0/24"]
    description = "NodePort port range"
    from_port   = "31380"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31380"
  }

  name = "allow_vpn_ingress_to_github-144714"

  tags = {
    Name = "Worker Subnets"
  }

  tags_all = {
    Name = "Worker Subnets"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--allow_vpn_ingress_to_rke-459396_sg-0c46ee4c2953cab42" {
  description = "Allow inbound traffic from vpn to rke instances"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "Any source that needs to be able to use the Rancher UI or API"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "DNS internal 1"
    from_port   = "6783"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6783"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "DNS internal 2"
    from_port   = "6784"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6784"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "DNS"
    from_port   = "53"
    protocol    = "tcp"
    self        = "false"
    to_port     = "53"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "DNS"
    from_port   = "53"
    protocol    = "udp"
    self        = "false"
    to_port     = "53"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "Load balancer/proxy that does external SSL termination"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "NodePort port range"
    from_port   = "10250"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10250"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "NodePort port range"
    from_port   = "30000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "32767"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "NodePort port range"
    from_port   = "30000"
    protocol    = "udp"
    self        = "false"
    to_port     = "32767"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "RKE2 server and agent nodes"
    from_port   = "8472"
    protocol    = "udp"
    self        = "false"
    to_port     = "8472"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "RKE2 server needs port 6443 for accessible by other nodes in the cluster"
    from_port   = "6443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "RKE2 server needs port 9345 for accessible by other nodes in the cluster"
    from_port   = "9345"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9345"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "RKE2 server needs port 9796 for rancher monitoring scraping"
    from_port   = "9796"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9796"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "Req for K8S"
    from_port   = "10254"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10254"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "Req for K8S"
    from_port   = "2376"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2376"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "Req for K8S"
    from_port   = "9091"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9091"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
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
    cidr_blocks = ["10.138.16.0/24", "10.138.17.0/24", "10.138.18.0/25", "10.138.18.128/25", "10.138.19.0/25", "10.138.29.0/24"]
    description = "ArgoCD port to ALB"
    from_port   = "30446"
    protocol    = "tcp"
    self        = "false"
    to_port     = "30446"
  }

  ingress {
    cidr_blocks = ["10.138.16.0/24", "10.138.17.0/24", "10.138.18.0/25", "10.138.18.128/25", "10.138.19.0/25", "10.138.29.0/24"]
    description = "DNS internal 1"
    from_port   = "6783"
    protocol    = "udp"
    self        = "false"
    to_port     = "6783"
  }

  ingress {
    cidr_blocks = ["10.138.16.0/24", "10.138.17.0/24", "10.138.18.0/25", "10.138.18.128/25", "10.138.19.0/25", "10.138.29.0/24"]
    description = "DNS internal 2"
    from_port   = "6784"
    protocol    = "udp"
    self        = "false"
    to_port     = "6784"
  }

  ingress {
    cidr_blocks = ["10.138.16.0/24", "10.138.17.0/24", "10.138.18.0/25", "10.138.18.128/25", "10.138.19.0/25", "10.138.29.0/24"]
    description = "HTTPS access from ALB to nodes"
    from_port   = "32001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "32004"
  }

  ingress {
    cidr_blocks = ["10.138.16.0/24", "10.138.17.0/24", "10.138.18.0/25", "10.138.18.128/25", "10.138.19.0/25", "10.138.29.0/24"]
    description = "Load Balancer access to the Rancher UI or API"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.16.0/24", "10.138.17.0/24", "10.138.18.0/25", "10.138.18.128/25", "10.138.19.0/25", "10.138.29.0/24"]
    description = "NodePort port range"
    from_port   = "31380"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31380"
  }

  name = "allow_vpn_ingress_to_rke-459396"

  tags = {
    Name = "Worker Subnets"
  }

  tags_all = {
    Name = "Worker Subnets"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--arclight-dev_sg-0fa5bd6322aadcd0f" {
  description = "Allow access from k8s nodes"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.160/32", "10.138.21.161/32", "10.138.21.162/32", "10.138.22.100/32", "10.138.22.101/32", "10.138.22.102/32", "10.138.22.91/32", "10.138.22.93/32"]
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.22.90/32"]
    description = "K8S Dev"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name   = "arclight-dev"
  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--artifactoryDB_sg-089bc16e633e453c2" {
  description = "artifactory DB ports"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name = "artifactoryDB"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--aspace-0020-rc_sg-958c6ee2" {
  description = "aspace release candidate."

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.128.0/24"]
    description = "Schlesinger (#rad tunnel)"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.128.0/24"]
    description = "Schlesinger (#rad tunnel)"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24", "128.103.0.0/16", "134.174.0.0/16", "140.247.0.0/16", "199.94.0.0/19", "199.94.32.0/20", "199.94.48.0/24", "199.94.8.0/22"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24", "134.174.0.0/16", "140.247.0.0/16", "199.94.0.0/19", "199.94.1.0/24", "199.94.32.0/20", "199.94.48.0/24", "199.94.8.0/22"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
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
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24"]
    description = "#LAW VPN"
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
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8098"
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
    cidr_blocks = ["10.137.167.0/24"]
    description = "harvester-qa  subnet"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8098"
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
    description = "ALB"
    from_port   = "19120"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19120"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "ALB"
    from_port   = "19121"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19121"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "ALB"
    from_port   = "19123"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19123"
  }

  ingress {
    cidr_blocks = ["10.227.128.0/19"]
    description = "HBS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["134.174.0.0/16", "140.247.0.0/16", "199.94.0.0/19", "199.94.1.0/24", "199.94.32.0/20", "199.94.48.0/24", "199.94.8.0/22"]
    from_port   = "10081"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10081"
  }

  name = "aspace rc"

  tags = {
    product = "ArchivesSpace"
  }

  tags_all = {
    product = "ArchivesSpace"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--aspace-api-dev_sg-099ab47dd04cf0764" {
  description = "Harvard internal connections to the dev Aspace API"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
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
    description = "Fine Arts Library VPN"
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
    cidr_blocks = ["10.11.111.0/24"]
    description = "HUIT ITS Admin VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.144.32.0/22"]
    description = "apigee-x-dev INC05362131"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.227.128.0/19"]
    description = "HBS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    description = "Harvard Central campus"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["134.174.0.0/16"]
    description = "Med School"
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
    cidr_blocks = ["199.94.0.0/19", "199.94.1.0/24", "199.94.32.0/20", "199.94.48.0/24", "199.94.8.0/22"]
    description = "Biz School"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "aspace-api-dev"

  tags = {
    product = "ArchivesSpace"
  }

  tags_all = {
    product = "ArchivesSpace"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--aspace-pui-dev_sg-016313cd96cf9c573" {
  description = "connections to Aspace Public User Interface"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
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
    description = "Fine Arts Library VPN"
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
    cidr_blocks = ["10.11.111.0/24"]
    description = "HUIT ITS Admin VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.227.128.0/19"]
    description = "HBS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    description = "Harvard Central campus"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["134.174.0.0/16"]
    description = "Med School"
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
    cidr_blocks = ["199.94.0.0/19", "199.94.1.0/24", "199.94.32.0/20", "199.94.48.0/24", "199.94.8.0/22"]
    description = "Biz School"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "aspace-pui-dev"

  tags = {
    product = "ArchivesSpace"
  }

  tags_all = {
    product = "ArchivesSpace"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--aspace-qa_sg-0b7f9fd1a44a34134" {
  description = "From QA Instance"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.116.0/24", "10.1.67.0/24", "10.116.176.0/21", "128.103.224.166/32", "128.103.224.67/32", "134.174.0.0/16"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8089"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24", "10.1.230.0/24", "10.1.29.0/24", "10.1.59.0/24", "10.1.67.0/24", "10.11.111.0/24", "128.103.0.0/16", "134.174.0.0/16", "140.247.0.0/16", "199.94.0.0/19", "199.94.32.0/20", "199.94.48.0/24", "4.34.96.180/30", "4.78.42.0/24", "65.112.8.0/23", "92.223.159.150/32"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24", "10.1.230.0/24", "10.1.29.0/24", "10.1.59.0/24", "10.1.67.0/24", "10.11.111.0/24", "128.103.0.0/16", "134.174.0.0/16", "140.247.0.0/16", "199.94.0.0/19", "199.94.32.0/20", "199.94.48.0/24", "4.34.96.180/30", "4.78.42.16/28", "65.112.8.0/23", "92.223.159.150/32"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.29.0/24", "10.1.59.0/24", "10.1.79.0/24", "10.137.0.0/16", "140.247.0.0/16", "199.94.0.0/19", "199.94.32.0/20", "199.94.48.0/24"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8090"
  }

  ingress {
    cidr_blocks = ["10.1.7.0/24", "131.142.144.108/32", "131.142.144.123/32", "131.142.144.36/32", "131.142.157.8/32"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16", "4.34.96.180/30", "4.78.42.16/28"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8081"
  }

  name = "aspace-qa"

  tags = {
    product = "ArchivesSpace"
  }

  tags_all = {
    product = "ArchivesSpace"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--aspace-qpi-dev-k8s_sg-07529408963c036ec" {
  description = "Allow apigee access to aspace-api-dev"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.144.32.0/22"]
    description = "apigee-x-dev INC05362131"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "aspace-qpi-dev-k8s"
  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--aspace-staff-dev_sg-02d7173a598de6fdc" {
  description = "Harvard-internal connections to dev site for Aspace staff"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
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
    description = "Fine Arts Library VPN"
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
    cidr_blocks = ["10.11.111.0/24"]
    description = "HUIT ITS Admin VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.227.128.0/19"]
    description = "HBS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.0.0/16"]
    description = "Harvard Central campus"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["134.174.0.0/16"]
    description = "Med School"
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
    cidr_blocks = ["199.94.0.0/19", "199.94.1.0/24", "199.94.32.0/20", "199.94.48.0/24", "199.94.8.0/22"]
    description = "Biz School"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "aspace-staff-dev"

  tags = {
    product = "ArchivesSpace"
  }

  tags_all = {
    product = "ArchivesSpace"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--booklabeling_sg-06178ecdab8c1f2c8" {
  description = "booklabeling"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "#ois VPN tunnel"
    from_port   = "13008"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13008"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "ansibletower-prod"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.238.21.0/24"]
    description = "subnet for Docker dev hosts"
    from_port   = "13008"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13008"
  }

  ingress {
    cidr_blocks = ["10.255.0.2/32", "10.255.0.4/32", "10.255.0.5/32", "10.255.0.6/32", "10.255.2.20/32"]
    description = "Healthcheck IP address"
    from_port   = "13008"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13008"
  }

  name = "booklabeling"

  tags = {
    product = "Book Label Generator - WPC"
  }

  tags_all = {
    product = "Book Label Generator - WPC"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--cloud-redis_sg-06b65667c964207a6" {
  description = "cloud-redis"

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
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "Dev VPC"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.138.22.0/24"]
    description = "DEV VPC"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name = "cloud-redis"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--dcpdev_sg-0945050bedbd9c8dc" {
  description = "Mysql DB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.109/32", "10.138.21.170/32", "10.138.21.204/32", "10.138.21.43/32", "10.138.21.90/32"]
    description = "Docker Dev"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.138.21.53/32"]
    description = "dcpdev on flynn.lib"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "dcpdev"

  tags = {
    product = "Harvard Digital Collections Platform - DCP"
  }

  tags_all = {
    product = "Harvard Digital Collections Platform - DCP"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--default_sg-e127009b" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    description = "This should be removed"
    from_port   = "0"
    protocol    = "-1"
    self        = "true"
    to_port     = "0"
  }

  name = "default"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--deployment-dev_sg-09530c3e4ac99db90" {
  description = "AgroCD Access"

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
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.24.79/32"]
    description = "OIS VPN"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "deployment-dev"
  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--dev-plg-db_sg-0bc924184aee613e7" {
  description = "Access to PLG db"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.160/32", "10.138.21.161/32", "10.138.21.162/32", "10.138.22.100/32", "10.138.22.101/32", "10.138.22.102/32", "10.138.22.90/32", "10.138.22.91/32", "10.138.22.93/32"]
    description = "RKE Node"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "dev-plg-db"

  tags = {
    Name = "dev-plg-db"
  }

  tags_all = {
    Name = "dev-plg-db"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--dev_alb_sg_api_sg-0259111f2d50b899a" {
  description = "Allow incoming traffic to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.144.32.0/22"]
    description = "Allow all inbound traffic"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "dev_alb_sg_api"
  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--dev_alb_sg_priv_sg-01b5907a3ed3a3f96" {
  description = "Allow incoming traffic to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
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
    cidr_blocks = ["10.1.79.0/24", "10.138.21.16/32", "10.138.21.161/32", "10.138.21.162/32", "10.138.22.100/32", "10.138.22.101/32", "10.138.22.102/32", "10.138.22.90/32", "10.138.22.91/32", "10.138.22.93/32"]
    description = "Allow all inbound traffic"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "dev_alb_sg_priv"
  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--dev_alb_sg_sg-06eb62478271ff0c2" {
  description = "Allow incoming traffic to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.65.0/24"]
    description = "academictech"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.16/32", "10.138.21.161/32", "10.138.21.162/32", "10.138.22.100/32", "10.138.22.101/32", "10.138.22.102/32", "10.138.22.90/32", "10.138.22.91/32", "10.138.22.93/32"]
    description = "Allow all inbound traffic"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "dev_alb_sg"
  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--dev_alb_sg_srv_sg-05289a8866464ba7c" {
  description = "Allow incoming traffic to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.160/32", "10.138.21.161/32", "10.138.21.162/32", "10.138.22.100/32", "10.138.22.101/32", "10.138.22.102/32", "10.138.22.90/32", "10.138.22.91/32", "10.138.22.93/32"]
    description = "Allow all inbound traffic"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.144.32.0/22"]
    description = "apigee"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "dev_alb_sg_srv"
  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--docker-dev_sg-01ee7ddb7c9f3d2be" {
  description = "docker-dev"

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
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "12883"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "30000"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "30000"
  }

  ingress {
    cidr_blocks = ["10.128.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "digitalcollections-docker-dsi "
    from_port   = "13881"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13881"
  }

  ingress {
    cidr_blocks = ["10.137.165.208/32"]
    description = "FSP Prod"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "ansibletower-prod"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.16.0/21"]
    description = "for ALB connections to MPS"
    from_port   = "21000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "23050"
  }

  ingress {
    cidr_blocks = ["10.138.16.0/24", "10.138.17.0/24", "10.138.29.0/24"]
    description = "Access to LB"
    from_port   = "23016"
    protocol    = "tcp"
    self        = "false"
    to_port     = "23016"
  }

  ingress {
    cidr_blocks = ["10.138.16.0/24", "10.138.17.0/24", "10.138.29.0/24"]
    description = "aspace api dev public LB subnet"
    from_port   = "19123"
    protocol    = "tcp"
    self        = "false"
    to_port     = "19123"
  }

  ingress {
    cidr_blocks = ["10.138.16.0/24", "10.138.17.0/24", "10.138.29.0/24"]
    description = "starfish whistle"
    from_port   = "10402"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10403"
  }

  ingress {
    cidr_blocks = ["10.138.16.0/24"]
    description = "access to GBL \u0026 DASH ports for ALBs1a"
    from_port   = "31000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31011"
  }

  ingress {
    cidr_blocks = ["10.138.16.0/24"]
    description = "for ALB connections"
    from_port   = "10000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "11000"
  }

  ingress {
    cidr_blocks = ["10.138.17.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24", "10.138.24.0/24", "10.138.29.0/24"]
    description = "access to GBL \u0026 DASH ports for ALBs"
    from_port   = "31000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31011"
  }

  ingress {
    cidr_blocks = ["10.138.17.0/24", "10.138.28.128/25"]
    description = "MPS SDS"
    from_port   = "10007"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10009"
  }

  ingress {
    cidr_blocks = ["10.138.17.0/24", "10.138.28.128/25"]
    description = "for FIG-DEV ALB"
    from_port   = "10020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10020"
  }

  ingress {
    cidr_blocks = ["10.138.18.0/24", "10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24", "10.140.128.112/28", "10.140.128.48/28", "10.140.128.64/28", "10.140.128.96/28"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "12883"
  }

  ingress {
    cidr_blocks = ["10.138.19.0/24", "10.138.24.0/22", "10.138.28.0/23"]
    description = "for ALB connections to MPS"
    from_port   = "22000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "23050"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24"]
    from_port   = "18080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18080"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.23.0/24"]
    description = "IIIF HTTPS"
    from_port   = "10106"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10106"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "accorn"
    from_port   = "4201"
    protocol    = "tcp"
    self        = "false"
    to_port     = "4201"
  }

  ingress {
    cidr_blocks = ["10.138.21.159/32"]
    description = "Jenkins to Docker"
    from_port   = "25003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "25003"
  }

  ingress {
    cidr_blocks = ["10.138.23.0/24", "10.138.25.0/24"]
    description = "acorn"
    from_port   = "4201"
    protocol    = "tcp"
    self        = "false"
    to_port     = "4201"
  }

  ingress {
    cidr_blocks = ["10.138.24.0/24", "10.138.25.0/24"]
    description = "for fsp-dev ALB"
    from_port   = "8099"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8099"
  }

  ingress {
    cidr_blocks = ["10.138.24.0/24", "10.138.26.0/24"]
    description = "ALB"
    from_port   = "12880"
    protocol    = "tcp"
    self        = "false"
    to_port     = "12883"
  }

  ingress {
    cidr_blocks = ["10.138.28.128/25"]
    description = "open to CS2 subnets"
    from_port   = "21701"
    protocol    = "tcp"
    self        = "false"
    to_port     = "31011"
  }

  ingress {
    cidr_blocks = ["10.138.31.0/24"]
    description = "ALB"
    from_port   = "10000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "11000"
  }

  ingress {
    cidr_blocks = ["10.138.31.0/24"]
    description = "CURIOSity open to CS2 subnets"
    from_port   = "21701"
    protocol    = "tcp"
    self        = "false"
    to_port     = "21701"
  }

  ingress {
    cidr_blocks = ["10.40.12.189/32", "10.40.12.190/32"]
    description = "Starfish"
    from_port   = "10780"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10780"
  }

  ingress {
    cidr_blocks = ["10.40.13.111/32"]
    description = "Starfish 2 access to API"
    from_port   = "10780"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10780"
  }

  ingress {
    cidr_blocks = ["128.103.147.145/32"]
    description = "doyle"
    from_port   = "10892"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10892"
  }

  name = "docker-dev"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--drs-whats-new-dev_sg-0d185da0a89b3b03f" {
  description = "drs-whats-new-dev"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["206.253.207.236/32", "65.112.7.236/32"]
    description = "Dev VPC public"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["3.236.67.0/24"]
    description = "docker dev 1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["52.206.14.146/32", "54.166.24.133/32"]
    description = "Starfish-Whistle-Dev"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "drs-whats-new-dev"

  tags = {
    environment = "Development"
    product     = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    environment = "Development"
    product     = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--drs2-dev-0020-sdrs_sg-0456e2978c05d744b" {
  description = "allows #sdrs tunnel to access drs2-dev on port 10400"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.203.0/24"]
    description = "#sdrs tunnel"
    from_port   = "10400"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10400"
  }

  name = "drs2-dev sdrs"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--drsbilling-rds_sg-0fbd293e516ff412b" {
  description = "drsbilling-rds"

  ingress {
    cidr_blocks = ["10.138.21.109/32"]
    description = "docker dev 2"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.21.170/32"]
    description = "docker dev 4"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.21.204/32"]
    description = "docker dev 1"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.21.43/32"]
    description = "docker dev 3"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.21.90/32"]
    description = "docker dev 5"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name = "drsbilling-rds"

  tags = {
    product = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    product = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--en-de-crypt-RabbitMQ_sg-0231b2d432cbdb158" {
  description = "RabbitMQ Encrypt/Decrypt"

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
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["10.138.21.109/32", "10.138.21.170/32", "10.138.21.204/32", "10.138.21.43/32", "10.138.21.90/32"]
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  name = "en-de-crypt-RabbitMQ"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--external-0020-Web-0020-connections-0020-from-0020-within-0020-the-0020-dev-0020-VPC_sg-02a33da973429a636" {
  description = "allows connections to http \u0026 https ports from the external IPs assigned to the dev VPC"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "#HUL VPN Tunnel"
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
    cidr_blocks = ["10.138.21.109/32"]
    description = "dev docker 2"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.109/32"]
    description = "dev docker 2"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.138.21.170/32"]
    description = "dev docker 4"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.170/32"]
    description = "dev docker 4"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.138.21.204/32"]
    description = "dev docker 1"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.204/32"]
    description = "dev docker 1"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.138.21.43/32"]
    description = "dev docker 3"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.43/32"]
    description = "dev docker 3"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.138.21.90/32"]
    description = "dev docker 5"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.138.21.90/32"]
    description = "dev docker 5"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["128.103.224.59/32", "128.103.24.59/32"]
    description = "#HUL VPN Tunnel External IP"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["3.236.67.0/24"]
    description = "IPs assigned to external connections from the dev VPC"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["3.236.67.0/24"]
    description = "IPs assigned to external connections from the dev VPC"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "external Web connections from within the dev VPC"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--feedback_sg-d0fe78a3" {
  description = "feedback-dev"

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
    from_port   = "9020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9020"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "128.103.229.0/25"]
    from_port   = "10020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10020"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "13698"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13698"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "vpn"
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
    description = "ELB health checks."
    from_port   = "9000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9300"
  }

  ingress {
    cidr_blocks = ["10.138.21.109/32"]
    description = "docker node 2"
    from_port   = "10020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10020"
  }

  ingress {
    cidr_blocks = ["10.138.21.170/32"]
    description = "docker node 4"
    from_port   = "10020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10020"
  }

  ingress {
    cidr_blocks = ["10.138.21.204/32"]
    description = "docker node 1"
    from_port   = "10020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10020"
  }

  ingress {
    cidr_blocks = ["10.138.21.43/32"]
    description = "docker node 3"
    from_port   = "10020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10020"
  }

  ingress {
    cidr_blocks = ["10.138.21.90/32"]
    description = "docker node 5"
    from_port   = "10020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10020"
  }

  ingress {
    cidr_blocks = ["10.138.23.83/32"]
    description = "Hovel access"
    from_port   = "9000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10020"
  }

  ingress {
    cidr_blocks = ["10.40.4.14/32"]
    description = "ldi-5"
    from_port   = "9020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9020"
  }

  ingress {
    cidr_blocks = ["10.40.4.15/32"]
    description = "ldi-7"
    from_port   = "10020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10020"
  }

  ingress {
    cidr_blocks = ["10.40.4.15/32"]
    description = "ldi-7"
    from_port   = "9020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9020"
  }

  ingress {
    cidr_blocks = ["10.40.4.16/32"]
    description = "ldi-6"
    from_port   = "9020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9020"
  }

  ingress {
    cidr_blocks = ["10.40.4.17/32"]
    description = "ldi-8"
    from_port   = "9020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9020"
  }

  ingress {
    cidr_blocks = ["10.40.4.26/32"]
    description = "ldi-3"
    from_port   = "9020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9020"
  }

  ingress {
    cidr_blocks = ["10.40.4.27/32"]
    description = "ldi-4"
    from_port   = "9020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9020"
  }

  ingress {
    cidr_blocks = ["128.103.229.0/25"]
    from_port   = "9000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9300"
  }

  ingress {
    cidr_blocks = ["128.103.229.125/32"]
    description = "bachman"
    from_port   = "13698"
    protocol    = "tcp"
    self        = "false"
    to_port     = "13698"
  }

  ingress {
    cidr_blocks = ["50.241.102.129/32", "50.241.102.130/31", "50.241.102.132/31"]
    description = "Buddhist Digital Resource Center "
    from_port   = "9020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9020"
  }

  name = "feedback"

  tags = {
    product = "Feedback"
  }

  tags_all = {
    product = "Feedback"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--fsp-dev_sg-041887e727ca163cd" {
  description = "to connect to ubuntu fsp host"

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
    cidr_blocks = ["10.1.84.0/24", "128.103.224.84/32"]
    description = "GSE"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.11.111.0/24"]
    description = "Temp testing with IAM"
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
    description = "for HUIT Security scanning"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.137.165.208/32"]
    description = "FSP prod 1"
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
    cidr_blocks = ["10.138.21.121/32"]
    description = "connections from fsp-dev1 to new RDS instance"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.21.20/32"]
    description = "feedback dev"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["134.174.140.32/32"]
    description = "HMS VPN NAT"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "fsp-dev"

  tags = {
    product = "File Staging Platform"
  }

  tags_all = {
    product = "File Staging Platform"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--gbl-dev-db_sg-09127035b1529be42" {
  description = "Allows connections to mysql port on the gbl-dev RDS instance"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.109/32", "10.138.21.170/32", "10.138.21.204/32", "10.138.21.43/32", "10.138.21.90/32"]
    description = "connections from Docker dev host"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.138.21.249/32"]
    description = "connections from hgl-dev1"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "gbl-dev-db"

  tags = {
    product = "Harvard Geospatial Library - HGL"
  }

  tags_all = {
    product = "Harvard Geospatial Library - HGL"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--geodata-dev_sg-0a452a088c807ec43" {
  description = "Becasue geodata needs to talk to itself going out to the public internet and back in."

  egress {
    cidr_blocks = ["3.236.67.96/27"]
    description = "Dev VPC public IP space"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["3.236.67.96/27"]
    description = "inbound from AWS"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "geodata-dev"

  tags = {
    Name = "Geoserver Dev"
  }

  tags_all = {
    Name = "Geoserver Dev"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--geoserver-dev2_sg-0a5407f695adbae03" {
  description = "load-balancer-wizard-1 created on 2021-03-10T14:25:55.043-05:00"

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

  name = "geoserver-dev2"

  tags = {
    product = "Harvard Geospatial Library - HGL"
  }

  tags_all = {
    product = "Harvard Geospatial Library - HGL"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--geoserver-dev_sg-0f184e9259cae441d" {
  description = "Geoserver Dev"

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
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
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

  ingress {
    cidr_blocks = ["10.140.128.112/28", "10.140.128.48/28"]
    description = "ALB"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["3.236.67.96/27"]
    description = "Allow self call"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "geoserver-dev"

  tags = {
    product = "Harvard Geospatial Library - HGL"
  }

  tags_all = {
    product = "Harvard Geospatial Library - HGL"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--hdc-dev_sg-074f09d83b9d25079" {
  description = "HDC Dev"

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
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
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
    description = "HUL VPN"
    from_port   = "8443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
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

  name = "hdc-dev"

  tags = {
    product = "Harvard Data Commons - HDC"
  }

  tags_all = {
    product = "Harvard Data Commons - HDC"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--hdc3a-dev-mq_sg-0872c8acaf0048556" {
  description = "message queue access to hdc3a-dev"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.109/32"]
    description = "ltsds-cloud-dev-2"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.138.21.170/32"]
    description = "ltsds-cloud-dev-4"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.138.21.204/32"]
    description = "ltsds-cloud-dev-1"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.138.21.43/32"]
    description = "ltsds-cloud-dev-3"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.138.21.90/32"]
    description = "ltsds-cloud-dev-5"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["128.103.224.79/32", "128.103.24.79/32"]
    description = "#ois VPN public address"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["3.236.67.0/24"]
    description = "docker public addresses"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  name = "hdc3a-dev-mq"

  tags = {
    product = "Harvard Data Commons - HDC"
  }

  tags_all = {
    product = "Harvard Data Commons - HDC"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--hello-world-test_sg-044b18517d4efcd79" {
  description = "hello world test"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.16.0/24", "10.138.17.0/24"]
    description = "from ALB"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  name   = "hello-world-test"
  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--hollislinks-db_sg-0ee9d94252f866de9" {
  description = "Access to hollislinks RDS"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.165.0/24", "10.137.166.0/24", "10.137.167.0/24"]
    description = "Open to QA/Prod Subnet"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "Open to Dev Subnet. "
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name = "hollislinks-db"

  tags = {
    product = "Alma"
  }

  tags_all = {
    product = "Alma"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--idsits-dev_sg-010dc39b01b4efa9f" {
  description = "Docker Dev"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "ansibletower-prod"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24"]
    from_port   = "2376"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2377"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24"]
    from_port   = "7946"
    protocol    = "tcp"
    self        = "false"
    to_port     = "7946"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "K8S Dev"
    from_port   = "4789"
    protocol    = "udp"
    self        = "false"
    to_port     = "4789"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.22.0/24"]
    from_port   = "4789"
    protocol    = "udp"
    self        = "false"
    to_port     = "4789"
  }

  ingress {
    cidr_blocks = ["10.138.22.100/32", "10.138.22.101/32", "10.138.22.102/32", "10.138.22.90/32", "10.138.22.91/32"]
    description = "K8S Dev"
    from_port   = "18280"
    protocol    = "tcp"
    self        = "false"
    to_port     = "18280"
  }

  ingress {
    cidr_blocks = ["10.140.210.9/32"]
    description = "SANDBOX"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "idsits-dev"

  tags = {
    product = "Image Delivery Service - IDS"
  }

  tags_all = {
    product = "Image Delivery Service - IDS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--iiif-redis-dev_sg-0c2af3bf268faf3c4" {
  description = "iiif-redis-dev"

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
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "standard subnet"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  name = "iiif-redis-dev"

  tags = {
    product = "Harvard Library Viewer - MIRADOR"
  }

  tags_all = {
    product = "Harvard Library Viewer - MIRADOR"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--infrastructure-shared-global-security-group-vpc-d53f09b2_sg-063204857fe697f73" {
  description = "Linux \u0026 Windows Infrastructure-shared-global-security-group-vpc-d53f09b2"

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

  name = "infrastructure-shared-global-security-group-vpc-d53f09b2"

  tags = {
    Name    = "infrastructure-shared-global-security-group-vpc-d53f09b2"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "infrastructure-shared-global-security-group-vpc-d53f09b2"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--k3-rancher_sg-02bafcae26858d129" {
  description = "SG for k3-rancher-kuberenties RKE Nodes"

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
    cidr_blocks = ["10.138.21.0/24"]
    description = "danger"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "danger"
    from_port   = "8472"
    protocol    = "udp"
    self        = "false"
    to_port     = "8472"
  }

  ingress {
    cidr_blocks = ["10.138.21.105/32"]
    description = "node-1"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.138.21.105/32"]
    description = "node-1"
    from_port   = "8472"
    protocol    = "udp"
    self        = "false"
    to_port     = "8472"
  }

  ingress {
    cidr_blocks = ["10.138.21.15/32"]
    description = "node-2"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.138.21.15/32"]
    description = "node-2"
    from_port   = "8472"
    protocol    = "udp"
    self        = "false"
    to_port     = "8472"
  }

  ingress {
    cidr_blocks = ["10.138.21.198/32"]
    description = "node-3"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.138.21.198/32"]
    description = "node-3"
    from_port   = "8472"
    protocol    = "udp"
    self        = "false"
    to_port     = "8472"
  }

  name = "k3-rancher"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--k8s_cluster_sg-071301f58b6b0dbed" {
  description = "for testing k8s"

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
    from_port   = "30000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "32767"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "30000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "32767"
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
    cidr_blocks = ["10.138.23.0/24"]
    description = "Flannel"
    from_port   = "8285"
    protocol    = "udp"
    self        = "false"
    to_port     = "8285"
  }

  ingress {
    cidr_blocks = ["10.138.23.0/24"]
    description = "HTTP Access"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["10.138.23.0/24"]
    description = "Kubelet API"
    from_port   = "10250"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10250"
  }

  ingress {
    cidr_blocks = ["10.138.23.0/24"]
    description = "Node Service Port"
    from_port   = "30000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "32767"
  }

  ingress {
    cidr_blocks = ["10.138.23.0/24"]
    description = "Node to Manager"
    from_port   = "6443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6443"
  }

  ingress {
    cidr_blocks = ["10.138.23.0/24"]
    description = "etcd server client API"
    from_port   = "2379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2380"
  }

  ingress {
    cidr_blocks = ["10.138.23.0/24"]
    description = "kube-controller-manager"
    from_port   = "10257"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10257"
  }

  ingress {
    cidr_blocks = ["10.138.23.0/24"]
    description = "kube-scheduler"
    from_port   = "10259"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10259"
  }

  name = "k8s_cluster"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--launch-wizard-3_sg-02ac5b018d029e95a" {
  description = "launch-wizard-3 created 2024-06-14T15:07:23.777Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-3"
  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--logic-monitor-ext-web-ips-shared-security-group-vpc-d53f09b2_sg-052a2c4b45e61b464" {
  description = "Logic Monitor External Web Check IP Addresses for vpc-d53f09b2"

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

  name = "logic-monitor-ext-web-ips-shared-security-group-vpc-d53f09b2"

  tags = {
    Name    = "logic-monitor-ext-web-ips-shared-security-group-vpc-d53f09b2"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "logic-monitor-ext-web-ips-shared-security-group-vpc-d53f09b2"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--lts-dev-Oracle_sg-dcf666ac" {
  description = "8000-9000 range for 151 subnet, LTS VPN, DBA VPN"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.11.134.0/24", "10.138.0.0/16"]
    from_port   = "1524"
    protocol    = "tcp"
    self        = "false"
    to_port     = "1524"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.11.134.0/24", "10.138.0.0/16"]
    from_port   = "8000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9000"
  }

  ingress {
    cidr_blocks = ["10.137.167.14/32", "10.137.67.14/32"]
    description = "kant"
    from_port   = "8000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9000"
  }

  ingress {
    cidr_blocks = ["128.103.147.145/32"]
    description = "doyle"
    from_port   = "1524"
    protocol    = "tcp"
    self        = "false"
    to_port     = "1524"
  }

  ingress {
    cidr_blocks = ["128.103.147.145/32"]
    description = "doyle"
    from_port   = "8000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9000"
  }

  name = "lts-dev-Oracle"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--ltsartifactoryDB_sg-0a5ceadc4228de5ab" {
  description = "MariaDB artifactory DB access to non-level4 subnets"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "ltsartifactoryDB"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--lustre-docker_sg-0a0bd42c1bb8a36e1" {
  description = "Access for dev docker to Lustre"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.109/32", "10.138.21.170/32", "10.138.21.204/32", "10.138.21.43/32", "10.138.21.90/32"]
    from_port   = "1021"
    protocol    = "tcp"
    self        = "false"
    to_port     = "1023"
  }

  ingress {
    cidr_blocks = ["10.138.21.109/32", "10.138.21.170/32", "10.138.21.204/32", "10.138.21.43/32", "10.138.21.90/32"]
    from_port   = "988"
    protocol    = "tcp"
    self        = "false"
    to_port     = "988"
  }

  name = "lustre-docker"

  tags = {
    Name    = "Lustre-Docker"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "Lustre-Docker"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--message-queue-server_sg-077c0100f4c57efa0" {
  description = "MQM Server"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.21.0/24", "10.138.22.0/24"]
    from_port   = "61614"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8883"
  }

  ingress {
    cidr_blocks = ["10.137.166.0/24", "10.137.167.0/24"]
    description = "Docker prod/qa"
    from_port   = "61614"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["10.40.12.190/32"]
    description = "lts-sf-4  (Starfish 4)"
    from_port   = "61614"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61619"
  }

  ingress {
    cidr_blocks = ["10.40.13.110/32"]
    description = "Starfish 1"
    from_port   = "61614"
    protocol    = "tcp"
    self        = "false"
    to_port     = "61614"
  }

  ingress {
    cidr_blocks = ["10.40.13.110/32"]
    description = "Starfish 1"
    from_port   = "8162"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8162"
  }

  name = "message-queue-server"

  tags = {
    product = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    product = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--mongodb-dev_sg-09f0081779b58360f" {
  description = "access to 27017 from various subnets"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN SSH"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN std mongo port"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
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
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "alt mongo port to std app private subnet"
    from_port   = "27072"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27072"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24"]
    description = "mongo port to std app private subnet"
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }

  ingress {
    cidr_blocks = ["10.138.21.160/32", "10.138.21.161/32", "10.138.21.162/32", "10.138.22.100/32", "10.138.22.101/32", "10.138.22.102/32", "10.138.22.90/32", "10.138.22.91/32", "10.138.22.93/32"]
    description = "K8S Dev access"
    from_port   = "27072"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27072"
  }

  ingress {
    cidr_blocks = ["10.138.21.217/32"]
    description = "ssh from mongo-dev-1"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "mongodb-dev"

  tags = {
    Name    = "mongodb-dev"
    product = "LTS Infrastructure"
  }

  tags_all = {
    Name    = "mongodb-dev"
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--mps-embed-dev_sg-07175ec0eec832d6e" {
  description = "rules for the mps-embed load balancer in dev"

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "docker dev"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "mps-embed-dev"

  tags = {
    Name    = "mps-embed-dev"
    product = "Media Presentation Service - MPS"
  }

  tags_all = {
    Name    = "mps-embed-dev"
    product = "Media Presentation Service - MPS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--mps-redis-dev_sg-0e302a5fc47d82482" {
  description = "MPS Redis DEV"

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
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24"]
    description = "Access from K8S subnet"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.140.210.0/26", "10.140.210.64/26"]
    description = "Sandbox Access"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name = "mps-redis-dev"

  tags = {
    Name    = "mps-redis-dev"
    product = "Media Presentation Service - MPS"
  }

  tags_all = {
    Name    = "mps-redis-dev"
    product = "Media Presentation Service - MPS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--mysql-0020-open-0020-to-0020-all-0020-internal-0020-IPs_sg-07c05db05501bf727" {
  description = "port 3306 open to 10.0.0.0"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24", "10.138.28.0/24"]
    description = "OIS VPN"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24", "10.138.22.0/24", "10.138.23.0/24", "10.138.25.0/24", "10.138.26.0/24", "10.138.27.0/24"]
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "mysql open to all internal IPs"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--nrs-db-sandbox_sg-0712fff0a797b3465" {
  description = "Sandbox acces to NRS Dev DB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "ois VPN tunnel"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.21.0/24"]
    description = "dev VPC subnet"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.140.210.0/24"]
    description = "Sandbox access"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name = "nrs-db-sandbox"

  tags = {
    product = "Naming Service - NRS"
  }

  tags_all = {
    product = "Naming Service - NRS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--rancher-nodes_sg-0606713a48826cb44" {
  description = "Rancher Nodes"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "2376"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2376"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "30000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "32767"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "30000"
    protocol    = "udp"
    self        = "false"
    to_port     = "32767"
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
    from_port   = "6443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6443"
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
    from_port   = "8443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8443"
  }

  ingress {
    from_port = "10250"
    protocol  = "tcp"
    self      = "true"
    to_port   = "10252"
  }

  ingress {
    from_port = "10256"
    protocol  = "tcp"
    self      = "true"
    to_port   = "10256"
  }

  ingress {
    from_port = "179"
    protocol  = "tcp"
    self      = "true"
    to_port   = "179"
  }

  ingress {
    from_port = "2379"
    protocol  = "tcp"
    self      = "true"
    to_port   = "2380"
  }

  ingress {
    from_port = "4789"
    protocol  = "udp"
    self      = "true"
    to_port   = "4789"
  }

  ingress {
    from_port = "5473"
    protocol  = "tcp"
    self      = "true"
    to_port   = "5473"
  }

  ingress {
    from_port = "8472"
    protocol  = "udp"
    self      = "true"
    to_port   = "8472"
  }

  ingress {
    from_port = "9345"
    protocol  = "tcp"
    self      = "true"
    to_port   = "9345"
  }

  ingress {
    from_port = "9796"
    protocol  = "tcp"
    self      = "true"
    to_port   = "9796"
  }

  name = "rancher-nodes"

  tags = {
    product       = "LTS Infrastructure"
    rancher-nodes = "v0.15.0-rancher95"
  }

  tags_all = {
    product       = "LTS Infrastructure"
    rancher-nodes = "v0.15.0-rancher95"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--rke-postgres_sg-0c236d5f542ddda77" {
  description = "All rancher servers access to postgres"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.138.21.160/32", "10.138.21.161/32", "10.138.21.162/32", "10.138.22.100/32", "10.138.22.101/32", "10.138.22.102/32", "10.138.22.90/32", "10.138.22.91/32"]
    description = "rke server"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.22.93/32"]
    description = "roe server"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name = "rke-postgres"

  tags = {
    Name = "rke-postgres"
  }

  tags_all = {
    Name = "rke-postgres"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--ssh-0020-from-0020-HCL-0020-VPN-0020-tunnel_sg-0285b9501ebfb34c6" {
  description = "ssh open to HCL VPN tunnel (10.1.166)"

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
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  ingress {
    cidr_blocks = ["10.1.166.0/24"]
    description = "ssh from HCL VPN tunnel"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.1.59.0/24"]
    description = "HUL VPN"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
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
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "ssh from HCL VPN tunnel"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--starfish-redis-dev_sg-00db2b97d3f75c103" {
  description = "filename/checksum lookup"

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

  name = "starfish-redis-dev"

  tags = {
    product = "Digital Preservation Repository - DRS"
  }

  tags_all = {
    product = "Digital Preservation Repository - DRS"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--temp-0020-primo-0020-API-0020-security-0020-group-0020----0020-5000-0020-open-0020-to-0020-10-002E--002A-_sg-02e93470" {
  description = "ELB access to java app on non-privileged port"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.0.0.0/8"]
    from_port   = "5000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5000"
  }

  ingress {
    cidr_blocks = ["10.137.242.0/25"]
    description = "Allowing ANSIBLE Tower access"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "temp primo API security group -- 5000 open to 10.*"

  tags = {
    product = "Alma"
  }

  tags_all = {
    product = "Alma"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--temporary_sg-37b41a45" {
  description = "catch-all for any temporary access that might be useful"

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
    cidr_blocks = ["10.138.21.181/32"]
    description = "ssh from remark"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["10.138.21.91/32"]
    description = "ssh from drs-dev-dropbox-new"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "temporary"

  tags = {
    product = "LTS Infrastructure"
  }

  tags_all = {
    product = "LTS Infrastructure"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--vireo3-dev_sg-03b6b94aecbd7b9b9" {
  description = "vireo3-dev/etds"

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
    from_port   = "9000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9000"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "OIS VPN"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "VPN"
    from_port   = "8000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8000"
  }

  ingress {
    cidr_blocks = ["10.1.79.0/24"]
    description = "ois VPN tunnel"
    from_port   = "9000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9000"
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
    description = "non level4 psql access"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    cidr_blocks = ["10.138.24.0/24", "10.138.25.0/24", "10.138.26.0/24"]
    description = "level4 psql access"
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  name = "vireo3-dev"

  tags = {
    product = "DASH"
  }

  tags_all = {
    product = "DASH"
  }

  vpc_id = "vpc-d53f09b2"
}

resource "aws_security_group" "tfer--wordshack-0020-dev_sg-09fd91d37eb965148" {
  description = "wordshack dev"

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
    cidr_blocks = ["10.138.21.109/32"]
    description = "docker node 2"
    from_port   = "10020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10020"
  }

  ingress {
    cidr_blocks = ["10.138.21.170/32"]
    description = "docker node 4"
    from_port   = "10020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10020"
  }

  ingress {
    cidr_blocks = ["10.138.21.204/32"]
    description = "docker node 1"
    from_port   = "10020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10020"
  }

  ingress {
    cidr_blocks = ["10.138.21.43/32"]
    description = "docker node 3"
    from_port   = "10020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10020"
  }

  ingress {
    cidr_blocks = ["10.138.21.90/32"]
    description = "docker node 5"
    from_port   = "10020"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10020"
  }

  name = "wordshack dev"

  tags = {
    product = "DRS Wordshack"
  }

  tags_all = {
    product = "DRS Wordshack"
  }

  vpc_id = "vpc-d53f09b2"
}
