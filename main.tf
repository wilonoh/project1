# private sub1
resource "aws_subnet" "private_sub1" {
  vpc_id     = aws_vpc.dev_enviro_vpc.id
  cidr_block = var.private_sub1_cidr_block
  availability_zone = var.private_sub1_availability_zone
  tags = {
    Name = "private_sub1"
  }
}

# private sub2
resource "aws_subnet" "private_sub2" {
  vpc_id     = aws_vpc.dev_enviro_vpc.id
  cidr_block = var.private_sub2_cidr_block
  availability_zone = var.private_sub2_availability_zone
  tags = {
    Name = "private_sub2"
  }
}

# public sub1
resource "aws_subnet" "public_sub1" {
  vpc_id     = aws_vpc.dev_enviro_vpc.id
  cidr_block = var.public_sub1_cidr_block
  availability_zone = var.public_sub1_availability_zone
  tags = {
    Name = "public_sub1"
  }
}

# public sub2
resource "aws_subnet" "public_sub2" {
  vpc_id     = aws_vpc.dev_enviro_vpc.id
  cidr_block = var.public_sub2_cidr_block
  availability_zone = var.public_sub2_availability_zone
  tags = {
    Name = "public_sub2"
  }
}

# private route table
resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.dev_enviro_vpc.id

  tags = {
    Name = "private_route_table"
  }
}

# public route table
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.dev_enviro_vpc.id

  tags = {
    Name = "public_route_table"
  }
}

# private route association
resource "aws_route_table_association" "private_route_asso1" {
  subnet_id      = aws_subnet.private_sub1.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "private_route_asso2" {
  subnet_id      = aws_subnet.private_sub2.id
  route_table_id = aws_route_table.private_route_table.id
}

# public route association
resource "aws_route_table_association" "public_route_asso1" {
  subnet_id      = aws_subnet.public_sub1.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_route_asso2" {
  subnet_id      = aws_subnet.public_sub2.id
  route_table_id = aws_route_table.public_route_table.id
}

# public route
resource "aws_route" "public_route" {
  route_table_id            = aws_route_table.public_route_table.id
  destination_cidr_block    = var.public_route_destination_cidr_block
  gateway_id                = aws_internet_gateway.igw.id
}

