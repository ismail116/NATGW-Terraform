# Create Elastic IP
resource "aws_eip" "nat_eip" {
  #vpc = true
  domain = "vpc"
  #vpc_id = aws_vpc.vpctask2.id

}

# Create NAT Gateway & associated with public subnet
resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.subnetn2.id
  depends_on = [aws_internet_gateway.example]
}

