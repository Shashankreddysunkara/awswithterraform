# VPC Outputs

#VPC ID
output "vpc_id" {
  description = "The VPC ID"
  value       = module.vpc.vpc_id
}
# VPC CIDR Block
output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

# VPC Private Subnets
output "private_subnets" {
  description = "list of private Subnet IDs"
  value       = module.vpc.private_subnets
}


# VPC Public Subnets
output "public_subnets" {
  description = "list of public Subnet IDs"
  value       = module.vpc.public_subnets
}

# NAT gateway Public IP
output "nat_public_ips" {
  description = "List of Public Elastic IPs"
  value       = module.vpc.nat_public_ips
}

# VPC AZ's
output "azs" {
  description = "A list of avilability zones"
  value       = module.vpc.azs
}
