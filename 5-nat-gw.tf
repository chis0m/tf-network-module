resource "aws_eip" "nat_eip" {
  vpc        = true
  depends_on = [aws_internet_gateway.ig] # EIP requires IGW to exist before being created
  tags = {
    Name = format("%s%s%s", title(var.env), title(var.base_name), "EIP")
  }

}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.PublicSubnet-1.id
  depends_on    = [aws_internet_gateway.ig]


  tags = {
    Name = format("%s%s%s", format(var.env), format(var.base_name), "MainNAT")
  }

}

