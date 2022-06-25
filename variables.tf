variable "env" {
  type        = string
  description = "The environment for the resource e.g stagin"
}
variable "base_name" {
  type        = string
  description = "A common name for all the resources e.g masterclass"
}
variable "vpc_cidr_block" {
  type        = string
  description = "The CIDR block of vpc to be created"
}

variable "public_subnet_cidr" {
  type        = map(any)
  description = "An map of subnet CIDR to be created. Length of 2"                         # e.g { cidr_1 =  "100.0.1.0/24", cidr_2 = "100.0.2.0/24" }
}

variable "private_subnet_cidr" {
  type        = map(any)
  description = "An map of subnet CIDR to be created. Should be length of 6"
}


variable "subnet_azs" {
  type        = map(any)
  description = "An map of Availability Zones for the subnet CIDR. Should be length of 2" # e.g { az_1 = "us-east-1a", az_2 = "us-east-1b" } 
}