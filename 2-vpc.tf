resource "aws_vpc" "main" {
  cidr_block                     = var.vpc_cidr_block
  enable_dns_support             = true
  enable_dns_hostnames           = true
  enable_classiclink             = false
  enable_classiclink_dns_support = false
  tags = {
    Name = format("%s%s%s", title(var.env), title(var.base_name), "VPC")          # dev-basename-VPC
  }
}
