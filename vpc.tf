# vpc
resource "aws_vpc" "dev_enviro_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.vpc_tenancy
  enable_dns_hostnames = var.enable_dns_hostname
  enable_dns_support   = var.enable_dns_support

  tags = {
    Name = "dev_enviro_vpc"
  }
}