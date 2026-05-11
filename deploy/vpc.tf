resource "aws_vpc" "cmtr-66o53piv-01-vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
}

resource "aws_subnet" "cmtr-66o53piv-01-subnet-public-a" {
  vpc_id            = aws_vpc.cmtr-66o53piv-01-vpc.id
  availability_zone = "us-east-1a"
  cidr_block        = var.subnets_config["az-a"]
}

resource "aws_subnet" "cmtr-66o53piv-01-subnet-public-b" {
  vpc_id            = aws_vpc.cmtr-66o53piv-01-vpc.id
  availability_zone = "us-east-1b"
  cidr_block        = var.subnets_config["az-b"]
}

resource "aws_subnet" "cmtr-66o53piv-01-subnet-public-c" {
  vpc_id            = aws_vpc.cmtr-66o53piv-01-vpc.id
  availability_zone = "us-east-1c"
  cidr_block        = var.subnets_config["az-c"]
}