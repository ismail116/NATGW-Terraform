#create Public Route table
resource "aws_route_table" "rtablen" {
  vpc_id = aws_vpc.vpctask2.id

  tags = {
    Name = "task2-Public-route-table"
  }
}
#route IGW
resource "aws_route" "internet_gateway" {
  route_table_id         = aws_route_table.rtablen.id
  destination_cidr_block = var.egress_route
  gateway_id             = aws_internet_gateway.igwn.id
}
# Associate public route table with public subnet
resource "aws_route_table_association" "main_association" {
  subnet_id      = aws_subnet.subnetn2.id
  route_table_id = aws_route_table.rtablen.id
}

# Create private Route Table
resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.vpctask2.id
}

# Create Route in the Route Table to direct traffic to the NAT Gateway
resource "aws_route" "nat_route" {
  route_table_id         = aws_route_table.private_route_table.id
  destination_cidr_block = var.egress_route
  nat_gateway_id         = aws_nat_gateway.nat_gateway.id
}

# Associate Route Table with the private subnet
resource "aws_route_table_association" "private_subnet_association" {
  subnet_id      = aws_subnet.subnetn.id
  route_table_id = aws_route_table.private_route_table.id
}