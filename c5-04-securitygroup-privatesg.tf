module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.3.0"
  # insert the 3 required variables here

  name                = "private-sg"
  description         = "HTTP Incoming from ALL internal subnets-10.0.0.0/16"
  vpc_id              = module.vpc.vpc_id
  ingress_rules       = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  egress_rules        = ["all-all"]
  tags                = local.common_tags

}
