output "network_vpc_id" {
  value = aws_vpc.vpc.id
}

output "network_vpc_cidr_block" {
  value = aws_vpc.vpc.cidr_block
}

output "network_sn_public_id" {
  value = aws_subnet.sn_public.id
}

output "network_sg_public_id" {
  value = aws_security_group.sg_public.id
}
