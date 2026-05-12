resource "aws_vpc" "cmtr-66o53piv-01-vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name = "cmtr-66o53piv-01-vpc"
  }
}

resource "aws_subnet" "cmtr-66o53piv-01-subnet-public-a" {
  vpc_id            = aws_vpc.cmtr-66o53piv-01-vpc.id
  availability_zone = "us-east-1a"
  cidr_block        = var.subnets_config["az-a"]
  tags = {
    Name = "cmtr-66o53piv-01-subnet-public-a"
  }
}
resource "aws_route_table_association" "rta-az-a" {
  subnet_id      = aws_subnet.cmtr-66o53piv-01-subnet-public-a.id
  route_table_id = aws_route_table.cmtr-66o53piv-01-rt.id
}

resource "aws_subnet" "cmtr-66o53piv-01-subnet-public-b" {
  vpc_id            = aws_vpc.cmtr-66o53piv-01-vpc.id
  availability_zone = "us-east-1b"
  cidr_block        = var.subnets_config["az-b"]
  tags = {
    Name = "cmtr-66o53piv-01-subnet-public-b"
  }
}
resource "aws_route_table_association" "rta-az-b" {
  subnet_id      = aws_subnet.cmtr-66o53piv-01-subnet-public-b.id
  route_table_id = aws_route_table.cmtr-66o53piv-01-rt.id
}

resource "aws_subnet" "cmtr-66o53piv-01-subnet-public-c" {
  vpc_id            = aws_vpc.cmtr-66o53piv-01-vpc.id
  availability_zone = "us-east-1c"
  cidr_block        = var.subnets_config["az-c"]
  tags = {
    Name = "cmtr-66o53piv-01-subnet-public-c"
  }
}

resource "aws_route_table_association" "rta-az-c" {
  subnet_id      = aws_subnet.cmtr-66o53piv-01-subnet-public-c.id
  route_table_id = aws_route_table.cmtr-66o53piv-01-rt.id
}
