data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}


data "aws_vpc" "cmtr-66o53piv-vpc" {
  tags = {
    Name = "cmtr-66o53piv-vpc"
  }
}

data "aws_security_group" "cmtr-66o53piv-sg" {
  name = "cmtr-66o53piv-sg"
  tags = {
    Name = "cmtr-66o53piv-sg"
  }
}

data "aws_subnet" "cmtr-66o53piv-public_subnet" {
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "cmtr-66o53piv-public_subnet"
  }
}

resource "aws_instance" "cmtr-66o53piv-ec2" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = "t3.micro"
  key_name        = var.aws_keypair_name
  security_groups = [data.aws_security_group.cmtr-66o53piv-sg.id]
  subnet_id       = data.aws_subnet.cmtr-66o53piv-public_subnet.id
  depends_on      = [aws_key_pair.deployer]
  tags = merge(
    var.local_tags,
    {
      Name = var.aws_instance_name
    }
  )
}

output "ec2_public_ip" {
  value = aws_instance.cmtr-66o53piv-ec2.public_ip
}
