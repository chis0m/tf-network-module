output "network_vpc_id" {
  value = aws_vpc.main.id
  description = "VPC ID of the vpc created in the network module"
}
