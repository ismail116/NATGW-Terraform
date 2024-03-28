variable "aws_vpc" {
  #default = "10.0.0.0/16"
  type        = string
  description = "cidr of vpcTask2"
}

variable "aws_sub1" {
  #default = "10.0.1.0/24"
  type        = string
  description = "cidr of [public] subnet"
}
variable "aws_sub2" {
  #default = "10.0.2.0/24"
  type        = string
  description = "cidr of [private] subnet"
}

variable "ec2_type" {
  type        = string
  description = "type of ec2"
}

variable "ec2_ami" {
  type        = string
  description = "Ami of ec2"
}

variable "egress_route" {
  type        = string
  description = "egress_route traffic"
}

# variable "vpc_id" {
#   description = "The ID of the VPC"
# }
