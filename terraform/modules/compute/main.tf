# EC2 INSTANCE

data "template_file" "user_data" {
  template = file("./scripts/user_data.sh")
}

resource "aws_instance" "instance" {
  ami                    = var.compute_ami_id
  instance_type          = var.compute_instance_type
  subnet_id              = var.network_sn_public_id
  vpc_security_group_ids = [var.network_sg_public_id]
  user_data              = base64encode(data.template_file.user_data.rendered)
}
