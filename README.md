## tf-network-module

A typical application network of 2 Availability Zones, 2 public subnet and 6 private subnet.

## Usage

```hcl
module "network_module" {

  source = "github.com/chis0m/tf-network-module?ref=v1.0.2"

  base_name           = "myApplication"
  env                 = "staging"
  vpc_cidr_block      = "100.0.0.0/16"
  public_subnet_cidr  = {
    cidr_1 =  "100.0.1.0/24",
    cidr_2 = "100.0.2.0/24"
  }
  private_subnet_cidr = { 
    cidr_1 =  "100.0.3.0/24",
    cidr_2 = "100.0.4.0/24",
    cidr_3 = "100.0.5.0/24",
    cidr_4 = "100.0.6.0/24",
    cidr_5 = "100.0.7.0/24",
    cidr_6 = "100.0.8.0/24"
  }
  availability_zones = {
    az_1 = "us-east-1a",
    az_2 = "us-east-1b"
  }
}
```
