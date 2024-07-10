resource "aws_vpc" "new_vpc" {
  cidr_block = var.cidr_block

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_security_group" "sg" {
  name     =  "sg"
  description = "allow ssh"
  vpc_id      = aws_vpc.new_vpc.id 

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port    = 0
    to_port      = 0
    protocol     = "-1"
    cidr_blocks  = ["0.0.0.0/0"]
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.new_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.new_igw.id
  }

  tags = {
    Name = "${var.name}-public-route-table"
  }
}

resource "aws_route_table_association" "public_subnet_association" {
  count          = length(var.subnet_cidr_blocks)
  subnet_id      = aws_subnet.new_subnet[count.index].id
  route_table_id = aws_route_table.public.id
}

output "vpc_id" {
  value = aws_vpc.new_vpc.id
}

output "public_subnet_ids" {
  value = aws_subnet.new_subnet[*].id
}

resource "aws_subnet" "new_subnet" {
  count = length(var.subnet_cidr_blocks)
  vpc_id            = aws_vpc.new_vpc.id
  cidr_block        = element(var.subnet_cidr_blocks, count.index)
  map_public_ip_on_launch = true
  availability_zone = element(var.availability_zones, count.index)

  tags = {
    Name = "${var.vpc_name}-subnet-${count.index}"
  }
}

resource "aws_internet_gateway" "new_igw" {
  vpc_id = aws_vpc.new_vpc.id

  tags = {
    Name = "${var.vpc_name}-igw"
  }
}

