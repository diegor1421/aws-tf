resource "aws_internet_gateway" "cmtr-66o53piv-01-igw" {
  vpc_id = aws_vpc.cmtr-66o53piv-01-vpc.id
}

resource "aws_route_table" "cmtr-66o53piv-01-rt" {
  vpc_id = aws_vpc.cmtr-66o53piv-01-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.cmtr-66o53piv-01-igw.id
  }
}