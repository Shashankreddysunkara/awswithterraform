# EC2 Instance Type
variable "instance_type" {
  type = string
  description = "EC2 Instance Type"
  default = "t2.micro"
}

variable "instance_keypair" {
  type = string
  description = "EC2 instance public key name"
  default = "terraform-key"
}

variable "private_instance_count" {
  type = number
  description = "AWS EC2 Private instance count"
  default = 1
}