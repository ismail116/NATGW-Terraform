#SG
resource "aws_security_group" "instance_sg" {
  name        = "instance-sg"
  description = "Security group for instance"
  vpc_id      = aws_vpc.vpctask2.id

  #   ingress {
  #     from_port   = 443 # Allow HTTPs traffic
  #     to_port     = 443
  #     protocol    = "tcp"
  #     cidr_blocks = ["0.0.0.0/0"]
  #   }
  ingress {
    from_port   = 22 # Allow SSH traffic
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow traffic from any IP address
  }


  ingress {
    from_port   = 80 # Allow HTTP traffic
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # egress rules 
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]
  }
}