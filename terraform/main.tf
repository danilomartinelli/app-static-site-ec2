module "network" {
  source                    = "./modules/network"
  network_vpc_cidr_block    = "10.0.0.0/16"
  network_subnet_cidr_block = "10.0.1.0/24"
  network_subnet_az         = "us-east-1a"
}

module "compute" {
  source                 = "./modules/compute"
  network_vpc_id         = module.network.network_vpc_id
  network_vpc_cidr_block = module.network.network_vpc_cidr_block
  network_sn_public_id   = module.network.network_sn_public_id
  network_sg_public_id   = module.network.network_sg_public_id
  compute_ami_id         = "ami-06a0cd9728546d178"
  compute_instance_type  = "t2.micro"
  compute_key_name       = "my_security_key"
}
