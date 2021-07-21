resource "null_resource" "name" {
  depends_on = [
    module.ec2_public
  ]
  # connection block for provisioners to connect to EC2 instances
  connection {
    type        = "ssh"
    host        = aws_eip.bastion_eip.public_ip
    user        = "ec2-user"
    password    = ""
    private_key = file("privatekey/terraform-key.pem")


  }

  # File Provisioner: copies the terraform-key.pem file to the /tmp/terraform-key.pem
  provisioner "file" {
    source      = "privatekey/terraform-key.pem"
    destination = "/tmp/terraform-key.pem"
  }
  # Fix private key permissions on remote host using remote-exec provisioner
  provisioner "remote-exec" {
    inline = [
      "sudo chmod 400 /tmp/terraform-key.pem"
    ]
  }
  # local-exec provisioner
  provisioner "local-exec" {
    command     = "echo VPC created on `date` and VPC ID: ${module.vpc.vpc_id} >> creation-time-vpc-id.txt"
    working_dir = "local-exec-output-files"
    # on_failure = continue
  }
  # Cretion time provisioners - By default
  # Destroy time provisioners - explitciltly define with argument 'when=destroy'
  /* provisioner "local-exec" {
    command     = "echo VPC destroy time on `date`  >> destroy-time-vpc-id.txt"
    working_dir = "local-exec-output-files"
    # on_failure = continue
    when = destroy
  }
*/

}
