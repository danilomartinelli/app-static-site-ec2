variable "network_vpc_id" {
  type = string
}

variable "network_vpc_cidr_block" {
  type = string
}

variable "network_sn_public_id" {
  type = string
}

variable "network_sg_public_id" {
  type = string
}

variable "compute_ami_id" {
  type    = string
  default = "ami-02e136e904f3da870"
}

variable "compute_instance_type" {
  type    = string
  default = "t2.micro"
}

variable "compute_key_name" {
  type    = string
  default = "key"
}
