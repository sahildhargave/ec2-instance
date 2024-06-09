module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  # Version = "4.0.1"
  version = "5.4.0"

  # VPC Basic Details
  name           = "vpc-dev"
  cidr           = "10.0.0.0/16"
  azs            = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  # Database Subnets
  create_database_subnet_group        = true 
  create_database_subnet_route_table  = true 
  database_subnets                    = ["10.0.151.0/24", "10.0.102.0/24"]
  create_database_nat_gateway_route   = true
  create_database_internet_gateway_route = true

  enable_nat_gateway = true 
  enable_dns_support = true
  enable_dns_hostnames = true

  public_subnet_tags = {
    Type = "public-subnets"
  }

  private_subnet_tags = {
    Type = "private-subnets"
  }

  database_subnet_tags = {
    Type = "database-subnets"
  }

  tags = {
    Owner        = "Sahil"
    Environment  = "dev"
  }

  vpc_tags = {
    Name = "vpc-dev"
  }

  # Instances launched into the Public subnet should be assigned a public IP address.
  map_public_ip_on_launch = true
}
