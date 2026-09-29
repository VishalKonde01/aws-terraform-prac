resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support
  

  tags = {
    Name = var.vpc_name
    Environment = var.Environment
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_01_cidr
  map_public_ip_on_launch = var.map_public_ip_on_launch_1

  tags = {
    Name = var.public_subnet_01_name
  }
}

resource "aws_subnet" "main2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_02_cidr
  map_public_ip_on_launch = var.map_public_ip_on_launch_2

  tags = {
    Name = var.public_subnet_02_name
  }
}

resource "aws_subnet" "main3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_03_cidr
  map_public_ip_on_launch = var.map_public_ip_on_launch_3

  tags = {
    Name = var.public_subnet_03_name
  }
}

resource "aws_subnet" "main4" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_01_cidr

  tags = {
    Name = var.private_subnet_01_name
  }
}

resource "aws_subnet" "main5" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_02_cidr

  tags = {
    Name = var.private_subnet_02_name
  }
}

resource "aws_subnet" "main6" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_03_cidr

  tags = {
    Name = var.private_subnet_03_name
  }
}

resource "aws_internet_gateway" "gw_01" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = var.igw_01_name
  }
}

resource "aws_route_table" "public_rt_01" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw_01.id
  }

  tags = {
    Name = var.public_rt_01_name
  }
}

resource "aws_route_table_association" "public_rt_01_asso" {

  for_each = {
    "public_subnet_01" =  aws_subnet.main.id ,
    "public_subnet_02" = aws_subnet.main2.id , 
    "public_subnet_03"= aws_subnet.main3.id 
  }
  subnet_id      = each.value
  route_table_id = aws_route_table.public_rt_01.id
}


resource "aws_eip" "lb" {
  domain   = "vpc"
}


resource "aws_nat_gateway" "nat_01" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.main.id

  tags = {
    Name = var.nat_01_name
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw_01]
}

resource "aws_route_table" "private_rt_01" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_01.id
  }

  tags = {
    Name = var.private_rt_01_name
  }
}


resource "aws_route_table_association" "private_rt_01_asso" {
  subnet_id      = aws_subnet.main4.id
  route_table_id = aws_route_table.private_rt_01.id
}

#--------------------

resource "aws_eip" "lb_2" {
  domain   = "vpc"
}


resource "aws_nat_gateway" "nat_02" {
  allocation_id = aws_eip.lb_2.id
  subnet_id     = aws_subnet.main2.id

  tags = {
    Name = var.nat_02_name
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw_01]
}

resource "aws_route_table" "private_rt_02" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_02.id
  }

  tags = {
    Name = var.private_rt_02_name
  }
}


resource "aws_route_table_association" "private_rt_02_asso" {
  subnet_id      = aws_subnet.main5.id
  route_table_id = aws_route_table.private_rt_02.id
}

#------------------------------------

resource "aws_eip" "lb_3" {
  domain   = "vpc"
}


resource "aws_nat_gateway" "nat_03" {
  allocation_id = aws_eip.lb_3.id
  subnet_id     = aws_subnet.main3.id

  tags = {
    Name = var.nat_03_name
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw_01]
}

resource "aws_route_table" "private_rt_03" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_03.id
  }

  tags = {
    Name = var.private_rt_03_name
  }
}


resource "aws_route_table_association" "private_rt_03_asso" {
  subnet_id      = aws_subnet.main6.id
  route_table_id = aws_route_table.private_rt_03.id
}

