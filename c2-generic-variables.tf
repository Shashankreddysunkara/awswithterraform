# Input Variables
# AWS Region


variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "eu-west-2"
}
variable "environment" {
  description = "Environment variable used as a prefix"
  type        = string
  default     = "dev"
}
variable "business_division" {
  description = "Bsuiness division in the large organization"
  type        = string
  default     = "SAP"
}
