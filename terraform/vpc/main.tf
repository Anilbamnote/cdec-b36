provider "aws" {
    region = "eu-west-2"
  
}

resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr


  tags = {
    Name = "main-vpc"
  }
}


resource "aws_subnet" "subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.sub_pub
  map_public_ip_on_launch = true

  tags = {
    Name = "pub-sub"
  }
}

resource "aws_internet_gateway" "my-igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "my-igw"
  }
}

resource "aws_default_route_table" "main-rt" {
  default_route_table_id = aws_vpc.main.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-igw.id
  }
}

  

  resource "aws_instance" "web" {
    ami = var.image_id
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids = [aws_security_group.web_sg.id]
    subnet_id = aws_subnet.subnet.id

    tags = {
        Name: "my_custome_instance"
    }
  
}


resource "aws_security_group" "web_sg" {
  name   = "HTTP and SSH"
  vpc_id = aws_vpc.main.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
