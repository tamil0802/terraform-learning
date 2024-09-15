# EC2 Instance Type
instance_type = "t2.micro"

# EC2 Instance Count
instance_count = 2  # Specify the number of instances you want to create

# Tag for the EC2 instance
tag = "tf-ec2-instancesc"

# AMI ID for the EC2 instance
ami_id = "ami-0522ab6e1ddcc7055"  # Replace with the required AMI ID

# AWS Region
region = "ap-south-1"

# VPC CIDR Block
cidr = "10.0.0.0/16"

# Subnet 1 CIDR Block
subnet1_cidr = "10.0.0.0/24"

# Subnet 2 CIDR Block
subnet2_cidr = "10.0.1.0/24"

# Availability Zones
availability_zone_1 = "ap-south-1a"
availability_zone_2 = "ap-south-1b"

# Security Group Name
web_sg_tf = "terraform-sg"

# HTTP Ingress Rule Description
ingress_http_description = "HTTP from VPC"

# SSH Ingress Rule Description
ingress_ssh_description = "SSH"

# HTTP Port
http_port = 80

# SSH Port
ssh_port = 22

# Egress CIDR Block
egress_cidr_block = "0.0.0.0/0"
