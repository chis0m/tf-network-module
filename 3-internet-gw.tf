resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = format("%s%s%s", title(var.env), title(var.base_name), "IGW")
  }

}
