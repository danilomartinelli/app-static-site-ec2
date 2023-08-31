variable "network_vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "network_subnet_cidr_block" {
  type    = string
  default = "10.0.1.0/24"
}

variable "network_subnet_az" {
  type    = string
  default = "us-east-1a"
}
