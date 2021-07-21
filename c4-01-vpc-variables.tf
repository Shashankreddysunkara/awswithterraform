# VPC Name
variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "myvpc"
}
# VPC CIDR Block

variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_availability_zones" {
  description = "VPC AZ's"
  type        = list(string)
  default     = ["eu-west-2a", "eu-west-2b"]

}
# VPC Public Subnets
variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}
# VPC Private Subnets

variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

# VPC Database Subnets
variable "vpc_database_subnets" {
  description = "VPC Database Subnets"
  type        = list(string)
  default     = ["10.0.151.0/24", "10.0.152.0/24"]
}

# VPC Create Database Subnet Group
variable "vpc_create_database_subnet_group" {
  description = "VPC Database group for RDS"
  type        = bool
  default     = true
}
# VPC Create Database Subnet Route Table
variable "vpc_create_database_subnet_route_table" {
  description = "Create VPC DB Subnet RT"
  type        = bool
  default     = true
}

# Enable NAT Gateway
variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateway for Private Subnets to reach OUT"
  type        = bool
  default     = true
}

variable "vpc_enable_single_nat_gateway" {
  description = "Enable Single NAT Gateway"
  type        = bool
  default     = true
}
