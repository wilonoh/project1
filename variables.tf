# provider region
variable "region" {
    description = "making region a variable"
    default = "eu-west-2"
    type = string
}

variable "vpc_cidr" {
    description = "making vpc cidr block a variable"
    default = "10.0.0.0/16"
    type = string
}
# vpc
variable "vpc_tenancy" {
    description = "making the vpc tenancy a variable"
    default = "default"
    type    = string
}

variable "enable_dns_hostname" {
    description = "making enable dns hostname a variable"
    default = true
    type    = bool
}

variable "enable_dns_support" {
    description = "making enable dns support a variable"
    default = true
    type    = bool
}

# private subnet
variable "private_sub1_cidr_block" {
    description = "making private subnet1 cidr block a variable"
    default = "10.0.1.0/24"
    type    = string
}

variable "private_sub2_cidr_block" {
    description = "making private subnet2 cidr block a variable"
    default = "10.0.2.0/24"
    type    = string
}

variable "private_sub1_availability_zone" {
    description = "making private subnet1 availability zone a variable"
    default = "eu-west-2a"
    type    = string
}

variable "private_sub2_availability_zone" {
    description = "making private subnet2 availability zone a variable"
    default = "eu-west-2a"
    type    = string
}

# public subnet
variable "public_sub1_cidr_block" {
    description = "making public subnet1 cidr block a variable"
    default = "10.0.3.0/24"
    type    = string
}

variable "public_sub2_cidr_block" {
    description = "making public subnet2 cidr block a variable"
    default = "10.0.4.0/24"
    type    = string
}

variable "public_sub1_availability_zone" {
    description = "making public subnet1 availability zone a variable"
    default = "eu-west-2b"
    type    = string
}

variable "public_sub2_availability_zone" {
    description = "making public subnet2 availability zone a variable"
    default = "eu-west-2b"
    type    = string
}

variable "public_route_destination_cidr_block" {
    description = "making public route destination cidr block a variable"
    default = "0.0.0.0/0"
    type    = string
}