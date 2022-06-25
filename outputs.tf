output "vpc_id" {
  value = aws_vpc.main.id
  description = "VPC ID of the vpc created in the network module"
}

output "public_subnet" {
  value = { 
    subnet_1 =  "${aws_subnet.PublicSubnet-1.id}",
    subnet_2 = "${aws_subnet.PublicSubnet-2.id}" 
  }
  
}

output "private_subnet" {
  value = { 
      subnet_1 = "${aws_subnet.PrivateSubnet-1.id}",
      subnet_2 = "${aws_subnet.PrivateSubnet-2.id}",
      subnet_3 = "${aws_subnet.PrivateSubnet-3.id}",
      subnet_4 = "${aws_subnet.PrivateSubnet-4.id}",
      subnet_5 = "${aws_subnet.PrivateSubnet-5.id}",
      subnet_6 = "${aws_subnet.PrivateSubnet-6.id}",
    }
}