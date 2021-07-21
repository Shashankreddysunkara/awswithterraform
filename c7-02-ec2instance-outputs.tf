## Public Instances
# Instance Id's
output "ec2_bastion_public_instance_ids" {
  description = "List of IDs of instances"
  value       = module.ec2_public.id
}

# Public IP's
output "ec2_bastion_public_ip" {
  description = "List of public IPs assigned to the instances"
  value       = module.ec2_public.public_ip
}

## private Instances

# Instance Id's
output "ec2_private_instance_ids" {
  description = "List of IDs of instances"
  value       = module.ec2_private.id
}

# Private IP's
output "ec2_private_ip" {
  description = "List of private IPs assigned to the instances"
  value       = module.ec2_private.private_ip
}
