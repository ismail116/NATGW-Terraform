#Private Subnet
resource "aws_subnet" "subnetn" {
  vpc_id            = aws_vpc.vpctask2.id
  availability_zone = "us-east-1a"
  cidr_block        = var.aws_sub2
  tags = {
    Name = "task2-prv-subnet"
  }
}

#Public Subnet
resource "aws_subnet" "subnetn2" {
  vpc_id                  = aws_vpc.vpctask2.id
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  cidr_block              = var.aws_sub1
  tags = {
    Name = "task2-public-subnet"
  }
}