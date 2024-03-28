# vpc
resource "aws_vpc" "vpctask2" {
  cidr_block = var.aws_vpc

  tags = {
    Name = "task2"
  }
}
#IGW
resource "aws_internet_gateway" "igwn" {
  vpc_id = aws_vpc.vpctask2.id

  tags = {
    Name = "task-igw"
  }
}


