# Create AWS Module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.2.0"
  # you can use ~> for providers, but for modules use exact one

  # insert the 19 required variables here
  name            = "${local.name}-${var.vpc_name}"
  cidr            = var.vpc_cidr_block
  azs             = var.vpc_availability_zones
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets
  # database subnets
  create_database_subnet_group       = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table
  database_subnets                   = var.vpc_database_subnets
  # Nat Gateway for Private subnet
  # enables NAT gateway per AZ
  enable_nat_gateway = var.vpc_enable_nat_gateway
  # This will force only a single shared NAT gateway 
  single_nat_gateway = var.vpc_enable_single_nat_gateway
  # VPC DNA Parameters
  enable_dns_hostnames = true
  enable_dns_support   = true
  # tags
  # public subnet tags
  public_subnet_tags = {

    Type : "Public-Subnets"
  }
  # Private Subnet tags
  private_subnet_tags = {

    Type : "Private-Subnets"
  }
  # database subnets tags
  database_subnet_tags = {

    Type : "Database-Subnets"
  }
  tags = local.common_tags

  vpc_tags = local.common_tags

}
