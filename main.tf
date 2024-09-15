provider "aws" {
        region = var.region 
}
resource "aws_instance" "tf-instances" {
   ami           = var.ami_id
   instance_type = var.instance_type
   count         = var.instance_count
   tags = {

   Name = var.tag

   }

}
resource "aws_vpc" "tf-vpc" {
  cidr_block = var.cidr
}

resource "aws_subnet" "tf-sub1" {
  vpc_id                  = aws_vpc.tf-vpc.id
  cidr_block              = var.subnet1_cidr
  availability_zone       = var.availability_zone_1
  map_public_ip_on_launch = true
}

resource "aws_subnet" "tf-sub2" {
  vpc_id                  = aws_vpc.tf-vpc.id
  cidr_block              = var.subnet2_cidr
  availability_zone       = var.availability_zone_2
  map_public_ip_on_launch = true
}

resource "aws_internet_gateway" "tf-igw" {
  vpc_id = aws_vpc.tf-vpc.id
}

resource "aws_route_table" "tf-RT" {
  vpc_id = aws_vpc.tf-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tf-igw.id
  }
}

resource "aws_route_table_association" "rta1" {
  subnet_id      = aws_subnet.tf-sub1.id
  route_table_id = aws_route_table.tf-RT.id
}

resource "aws_route_table_association" "rta2" {
  subnet_id      = aws_subnet.tf-sub2.id
  route_table_id = aws_route_table.tf-RT.id
}

resource "aws_security_group" "tf-webSg" {
  name   = var.web_sg_tf
  vpc_id = aws_vpc.tf-vpc.id

  ingress {
    description = var.ingress_http_description
    from_port   = var.http_port
    to_port     = var.http_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = var.ingress_ssh_description
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.egress_cidr_block]
  }

  tags = {
    Name = "Web-sg-tf"
  }
}
