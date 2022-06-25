output "vpc_id" {
  value       = aws_vpc.main.id
  description = "VPC ID of the vpc created in the network module"
}

output "public_subnet" {
  value = {
    cidr_1 = "${aws_subnet.PublicSubnet-1.id}",
    cidr_2 = "${aws_subnet.PublicSubnet-2.id}"
  }

}

output "private_subnet" {
  value = {
    cidr_1 = "${aws_subnet.PrivateSubnet-1.id}",
    cidr_2 = "${aws_subnet.PrivateSubnet-2.id}",
    cidr_3 = "${aws_subnet.PrivateSubnet-3.id}",
    cidr_4 = "${aws_subnet.PrivateSubnet-4.id}",
    cidr_5 = "${aws_subnet.PrivateSubnet-5.id}",
    cidr_6 = "${aws_subnet.PrivateSubnet-6.id}",
  }
}