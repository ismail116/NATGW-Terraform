#instance
resource "aws_instance" "instancen" {
  ami             = var.ec2_ami
  instance_type   = var.ec2_type
  subnet_id       = aws_subnet.subnetn.id
  security_groups = [aws_security_group.instance_sg.name] # Associate the instance with the security group
  user_data       = file("script.sh")
  tags = {
    Name = "task-instance"
  }
}