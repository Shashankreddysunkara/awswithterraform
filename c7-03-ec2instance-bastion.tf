module "ec2_public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.19.0"
  # insert the 10 required variables here
  name                   = "${var.environment}-BastionHost"
  #instance_count         = 5

  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  monitoring             = false
  vpc_security_group_ids = [module.public_bastion_sg.security_group_id]
  subnet_id              = module.vpc.public_subnets[0]

  tags = local.common_tags
}