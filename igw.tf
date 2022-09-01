# internet gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.dev_enviro_vpc.id

  tags = {
    Name = "igw"
  }
}