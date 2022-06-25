### Create public subnets
resource "aws_subnet" "PublicSubnet-1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidr_list[0]
  map_public_ip_on_launch = true
  availability_zone       = var.subnet_azs_list[0]

  tags = {
    Name            = format("%s%s%s", title(var.env), title(var.base_name), "PublicSubnet-1")
  }

}

resource "aws_subnet" "PublicSubnet-2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidr_list[1]
  map_public_ip_on_launch = true
  availability_zone       = var.subnet_azs_list[1]

  tags = {
    Name            = format("%s%s%s", title(var.env), title(var.base_name), "PublicSubnet-2")
  }

}

### create route table for the public subnets
resource "aws_route_table" "public-rtb" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name            = format("%s%s%s",title(var.env), title(var.base_name), "PublicRouteTable")
  }
}


# create route for the public route table and attach the internet gateway
resource "aws_route" "public-rtb-route" {
  route_table_id         = aws_route_table.public-rtb.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.ig.id
}



# associate all public subnets to the public route table
resource "aws_route_table_association" "public-subnets-assoc-1" {
  subnet_id      = aws_subnet.PublicSubnet-1.id
  route_table_id = aws_route_table.public-rtb.id
}

resource "aws_route_table_association" "public-subnets-assoc-2" {
  subnet_id      = aws_subnet.PublicSubnet-2.id
  route_table_id = aws_route_table.public-rtb.id
}
