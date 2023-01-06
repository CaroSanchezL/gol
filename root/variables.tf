variable "vpc_cidr" {
    description = "The CIDR of the VPC"
    type = string
}

variable "subnets" {
  description = "A list of subnets"
  type = list(any)
}

variable "cidr_block_rt" {
    description = "The CIDR block of the route"
    type = string
}

variable "tags" {
    description = "A mapping of tags"
    type = map(string)
}

variable "instance_type" {
  description =  "Instance type for the EC2 resource"
  type = string
  default = "t2.micro"
}

variable "ami" {
  description = "EC2 AMI" //ami-0b5eea76982371e91
  type = string
}

variable "assign_ip4" {
  description = "Whether to assign an ipv4"
  type = bool
}