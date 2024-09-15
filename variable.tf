
variable "instance_type" {

   #type = string
   #description = "EC2 Instance Type"
   #default = "t2.micro"
   
}
# EC2 Instance Count
variable "instance_count" {
  #description = "Number of EC2 instances to create"
  #type        = number
  #default     = 1  # You can change this default as needed
}


variable "tag" {

   #type = string
   #description = "The tag for the EC2 instance"
   #default = "tf-ec2 instances"
}
variable "ami_id" {
  #description = "EC2 AMI ID to be used for launching instances"
  #type        = string
  #default     = "ami-0522ab6e1ddcc7055" 
  
}
variable "region" {

   #type = string
   #description = "The project region"
   #default = "ap-south-1"

}
# VPC CIDR Block
variable "cidr" {
  #description = "The CIDR block for the VPC"
  #type        = string
  #default     = "10.0.0.0/16"  # You can change this default value
}

# Subnet 1 CIDR Block
variable "subnet1_cidr" {
  #description = "The CIDR block for subnet 1"
  #type        = string
  #default     = "10.0.0.0/24"
}

# Subnet 2 CIDR Block
variable "subnet2_cidr" {
  #description = "The CIDR block for subnet 2"
  #type        = string
  #default     = "10.0.1.0/24"
}

# Availability Zones
variable "availability_zone_1" {
  #description = "The availability zone for subnet 1"
  #type        = string
  #default     = "ap-south-1a"
}

variable "availability_zone_2" {
  #description = "The availability zone for subnet 2"
  #type        = string
  #default     = "ap-south-1b"
}

# Security Group Configuration
variable "web_sg_tf" {
  #description = "The name for the Security Group"
  #type        = string
  #default     = "web"
}

variable "ingress_http_description" {
  #description = "Description for HTTP ingress rule"
  #type        = string
  #default     = "HTTP from VPC"
}

variable "ingress_ssh_description" {
  #description = "Description for SSH ingress rule"
  #type        = string
  #default     = "SSH"
}

variable "http_port" {
  #description = "The port for HTTP"
  #type        = number
  #default     = 80
}

variable "ssh_port" {
  #description = "The port for SSH"
  #type        = number
  #default     = 22
}

variable "egress_cidr_block" {
  #description = "The CIDR block for egress traffic"
  #type        = string
  #default     = "0.0.0.0/0"
}

